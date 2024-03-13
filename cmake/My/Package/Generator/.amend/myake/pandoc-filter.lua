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
    io.dump(self, table.make(options, {
        prefix = 'doc.' .. self.__name .. ":table"
    }))
end

class(doc) "node" {
    __public = {
        attr = void
    },
    __dump = dumper,
    __newindex = function(self, k, v)
        if math.type(k) ~= 'integer' and not getmetatable(self).__public[k] then
            error(strformat("variable %q is not a public member variable", tostring(k)), 2)
        end

        rawset(self, k, v)
    end,
    tostring = function(self)
        error("tostring() may not be used on doc." .. self.__name)
    end
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
    self.id = p.attr.identifier
    self.level = p.level
    -- everything else is handled below
end

-- paragraph
class(doc) "paragraph" {
    __inherit = {doc.node},
    __public = {}
}

function doc.paragraph:__init(p)
    -- everything else is handled below
end

-- plain text
class(doc) "plain" {
    __inherit = {doc.node},
    __public = {}
}

function doc.plain:__init(p)
    -- attributes are ignored
end

-- code
class(doc) "code" {
    __inherit = {doc.node},
    __public = {
        attributes = void,
        classes = void,
        text = void,
        id = void
    },
    __init = function(self, p)
        local text = p.text
        text = text:gsub('\\([<>])', '%1') -- fix occurence of "\<HASH\>"
        text = text:gsub('\\', '\\\\') -- fix backslashes as path
        self.text = text

        local attr = p.attr
        if attr.identifier:len() > 0 then
            self.id = attr.identifier
        end

        if #attr.classes > 0 then
            self.classes = attr.classes
        end

        if table.count(attr.attributes) > 0 then
            self.attributes = attr.attributes
        end
    end
}

-- block
class(doc) "block" {
    __inherit = {doc.node},
    __public = {
        style = void
    },
    __init = function(self, p, style)
        self.style = style
    end
}

-- list
class(doc) "list" {
    __inherit = {doc.node},
    __public = {
        style = void
    },
    __init = function(self, p, style)
        self.style = style
    end
}

class(doc) "item" {
    __inherit = {doc.node}
}

-- link
class(doc) "link" {
    __inherit = {doc.node},
    __public = {
        target = void,
        title = void
    },
    __init = function(self, p)
        -- attr is ignored
        self.title = p.title:len() > 0 and p.title or nil
        self.target = p.target
    end
}

-- div
class(doc) "div" {
    __inherit = {doc.node},
    __public = {
        attributes = void,
        classes = void,
        id = void
    },
    __init = function(self, p)
        local attr = p.attr
        self.id = attr.identifier:len() > 0 and attr.identifier or nil
        self.classes = #attr.classes > 0 and attr.classes or nil
        self.attributes = #attr.attributes > 0 and attr.attributes or nil
    end
}

-- span
class(doc) "span" {
    __inherit = {doc.div}
}

-- pieces
class(doc) "string" {
    __inherit = {doc.node},
    __public = {
        text = void
    },
    __init = function(self, p)
        self.text = p.text
    end,
    tostring = function(self)
        return self.text
    end
}

class(doc) "space" {
    __inherit = {doc.node},
    __init = function(self, p)
    end,
    tostring = function(self)
        return " "
    end
}

class(doc) "emphasis" {
    __inherit = {doc.node},
    __public = {
        style = void
    },
    __init = function(self, p, style)
        self.style = style
    end
}

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
            show(v, {
                key = "UNHANDLED"
            })
            error(tag .. " not handled.")
        end
    end
end

function m.Header(p)
    -- adjust stack
    while #stack > 1 do
        if isa(top(), doc.header) and top().level + 1 == p.level then
            break
        end 

        pop()
    end

    -- create node
    local node = doc.header(p)
    table.insert(top(), node)
    push(node)

    -- parse content
    node.text = {}
    push(node.text)
    walk(p.content)
    local text = pop()

    -- convert to single string
    for i, v in ipairs(text) do
        text[i] = v:tostring()
    end
    node.text = table.concat(text)
end

function m.Str(p)
    table.insert(top(), doc.string(p))
end

function m.Space(p)
    table.insert(top(), doc.space(p))
end

function m.SoftBreak(p)
    table.insert(top(), doc.space(p))
end

function m.Para(p)
    local node = doc.paragraph(p)
    table.insert(top(), node)

    push(node)
    walk(p.content)
    pop()
end

function m.Code(p)
    local node = doc.code(p)
    table.insert(top(), node)
end

function m.Strong(p)
    local node = doc.emphasis(p, 'strong')
    table.insert(top(), node)

    push(node)
    walk(p.content)
    pop()
end

function m.Emph(p)
    local node = doc.emphasis(p, 'emphasized')
    table.insert(top(), node)

    push(node)
    walk(p.content)
    pop()
end

function m.BlockQuote(p)
    local node = doc.block(p, 'quote')
    table.insert(top(), node)

    push(node)
    walk(p.content)
    pop()
end

local function parse_list(p, style)
    local node = doc.list(p, style)
    table.insert(top(), node)

    local function process_part(part)
        local tag = pandoc.utils.type(part)
        if m[tag] then
            m[tag](part)
        else
            show(part, {
                key = "UNHANDLED"
            })
            error(tag .. " not handled.")
        end
    end

    push(node)
    for _, line in ipairs(p.content) do
        local item = doc.item()
        table.insert(node, item)
        push(item)

        if style == 'bullet' then
            process_part(line[1])
        elseif style == 'definition' then
            local def = line[1]
            assert(#def > 0)

            if #def == 1 then
                process_part(def[1])
            else
                push(doc.plain {})
                for _, v in ipairs(def) do
                    process_part(v)
                end
                pop()
            end

            local part = line[2]
            assert(#part == 1)
            part = part[1]

            if #part == 0 then
                table.insert(top(), doc.string {
                    text = ''
                })
            else
                for _, v in ipairs(part) do
                    process_part(v)
                end
            end
        else
            error("Unknown list style: " .. style)
        end

        pop()
    end

    pop()
end

function m.BulletList(p)
    parse_list(p, 'bullet')
end

function m.DefinitionList(p)
    parse_list(p, 'definition')
end

function m.Plain(p)
    local node = doc.plain(p)
    table.insert(top(), node)

    push(node)
    walk(p.content)
    pop()
end

function m.Link(p)
    local node = doc.link(p)
    table.insert(top(), node)

    push(node)
    walk(p.content)
    pop()
end

function m.Div(p)
    local node = doc.div(p)
    table.insert(top(), node)

    if table.has(p.attr.classes, "variable") then
        local content = p.content[1].content
        if #content > 1 then
            -- seems to be a parser error in pandoc
            ::retry_remove_link::
            for i = 1, #content do
                local v = content[i]
                if pandoc.utils.type(v) == 'Link' then
                    content[i + 1].text = content[i].content[1].text .. '_' .. content[i + 1].text
                    table.remove(content, i)
                    goto retry_remove_link
                end
            end
        end
    end

    push(node)
    walk(p.content)
    pop()
end

function m.CodeBlock(p)
    local node = doc.block(p, 'code')
    table.insert(top(), node)

    table.insert(node, doc.string {
        text = p.text
    })
end

function m.Span(p)
    local node = doc.div(p)
    table.insert(top(), node)

    push(node)
    walk(p.content)
    pop()
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
    local success, message = pcall(walk, doc.blocks)
    if not success then
        print("[ERROR]\n", message)
    end

    -- save data
    local outputfile = fs.currentdir() .. '/.amend/myake/generator/help/' .. os.getenv("GENERATOR") .. '.lua'
    local outs = assert(io.open(outputfile, 'w'))
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
