-- Pandoc filter for reStructuredText
-- (see https://pandoc.org/lua-filters.html)
--
-- This filter shall translate pandoc's document tree into
-- a format (i.e. a Lua table), that we can easily use (with 
-- amend) to check variables and possibly provide a help text 
-- in Myake.
-- --
-- adapt to cpack's Lua version (hope nothing breaks fundamentally...)
package.path = package.path:gsub("/5.4/", "/5.3/")
package.cpath = package.cpath:gsub("/5.4/", "/5.3/")

require 'amend'

-- prepare output file
local outputfile = fs.currentdir() .. '/.amend/myake/generator/' .. os.getenv("GENERATOR") .. '.lua'
local outs = assert(io.open(outputfile, 'w'))

-- ---------------------------------------------------------------------------
-- helper to show pandoc content
local logging = require 'pandoc.logging'
local function show(t, name)
    logging.temp(name or 'doc', t)
end

-- ---------------------------------------------------------------------------
-- simple stack
local stack = {}
local function push(t)
    stack[#stack + 1] = t
end
local function pop()
    stack[#stack] = nil
end
local function top()
    return stack[#stack]
end

-- extracted data
local data = {}

-- parser
local m = {}

local function parse(t, first)
    for i = first or 1, #t do
        local v = t[i]
        local tag = pandoc.utils.type(v)

        if m[tag] then
            table.insert(data, m[tag](v))
        else
            error(tag .. " not handled.")
        end
    end
end

class(m) 'Header' {
    __public = {
        content = void
    }
}

function m.Header:__init(pan)
    -- self.content = pan
    show(pan, "HEADER")
end

-- ---------------------------------------------------------------------------
-- parse pandoc structure
function Pandoc(doc)
    if false then
        show(doc.blocks)
        return {
            blocks = {},
            meta = {}
        }
    end

    -- parse document
    local success, message = pcall(parse, doc.blocks) 
    if not success then
        print("[ERROR]\n", message)
    end

    -- save data
    outs:write("-- This file was auto-generated from", '\n', "--    ", os.getenv("FILE"), '\n',
        "-- using 'amend cpack'.", '\n')
    io.dump(data, {
        prefix = 'return',
        stream = outs
    })
    outs:close()

    -- no output from pandoc required...
    return {
        blocks = {},
        meta = {}
    }
end

-- TODO
--      This should be a "writer", not a "filter"...
--
