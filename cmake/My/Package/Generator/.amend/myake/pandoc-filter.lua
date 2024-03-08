-- Pandoc filter for reStructuredText
-- (see https://pandoc.org/lua-filters.html)

-- This filter shall translate pandoc's document tree into
-- a format (i.e. a Lua table), that we can easily use (with 
-- amend) to check variables and possibly provide a help text 
-- within Myake.

-- adapt to cpack's Lua version (hope nothing breaks fundamentally...)
package.path = package.path:gsub("/5.4/", "/5.3/")
package.cpath = package.cpath:gsub("/5.4/", "/5.3/")

require 'amend'

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
    local top = stack[#stack]
    stack[#stack] = nil
    return top
end

local function top() 
    return stack[#stack] 
end

-- ---------------------------------------------------------------------------
-- "our" document classes
local doc = {}

local function dumper(self, options)
    io.dump(self,
            table.make(options, 
                {
                    prefix = 'doc.' .. self.__name .. ":table"
                }))
end

class(doc) "node" {
    __public = {
        attr = void
    }, 
    __dump = dumper
}

-- header
class(doc) "header" {
    __inherit = {doc.node},
    __public = {
        text = void, 
        id = void,
        level = 0
    }
}

function doc.header:__init(p) 
    self.attr = p.attr 
end

-- ---------------------------------------------------------------------------
-- extracted data
local data = {}
push(data)

-- parser
local m = {}

local function walk(t, first)
    for i = first or 1, #t do
        local v = t[i]
        local tag = pandoc.utils.type(v)

        if m[tag] then
            m[tag](v)
        else
            error(tag .. " not handled.")
        end
    end
end

local level = 0
function m.Header(p) 
    local node = doc.header(p)

    -- FIXME 
    if p.level > level then

    else
        -- FIXME
    end
    

    -- table.insert(top(), node)


    return node
end

-- ---------------------------------------------------------------------------
-- parse pandoc structure
function Pandoc(doc)
    if false then
        show(doc.blocks)
        return {blocks = {}, meta = {}}
    end

    -- parse document
    local success, message = pcall(walk, doc.blocks)
    if not success then print("[ERROR]\n", message) end

    -- save data
    local outputfile = fs.currentdir() .. '/.amend/myake/generator/' ..
                           os.getenv("GENERATOR") .. '.lua'
    local outs = assert(io.open(outputfile, 'w'))
    outs:write("-- This file was auto-generated from", '\n', "--    ",
               os.getenv("FILE"), '\n', "-- using 'amend cpack'.", '\n')
    io.dump(data, {prefix = 'return', stream = outs})
    outs:close()

    -- no output from pandoc required...
    return {blocks = {}, meta = {}}
end

-- TODO
--      This should be a "writer", not a "filter"...
--
