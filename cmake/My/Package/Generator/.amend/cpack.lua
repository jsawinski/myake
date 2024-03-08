#!cpack -- Check CPack variables

message "Checking CPack variables..."

depends 'cpack-docs'

-- check if debugged
local isdebugged = arg[-1]:match('vscode')

-- variable list
local variables = {} 

-- ---------------------------------------------------------------------------
-- Helper for level-based options.
local function pushopts(t, ...)
    table.insert(t, table.make(t[#t], ...))
end

local function popopts(t)
    table.remove(t)
end

local function currentopts(t, defaults)
    local top = t[#t]
    if defaults then
        for k, v in pairs(defaults) do
            top[k] = top[k] or v
        end
    end
    return top
end

-- Documentation and variable listing structure
doc = {}

class(doc) "node" {
    __newindex = function(self, k, v)
        if math.type(k) ~= 'integer' and not getmetatable(self).__public[k] then
            error(strformat("variable %q is not a public member variable", tostring(k)), 2)
        end

        rawset(self, k, v)
    end,
    markdown = function(self, ...)
        error("markdown() not implemented for doc." .. self.__name)
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

function doc.header:markdown(lines, options)
    table.insert(lines, {string.rep('#', self.level) .. ' ' .. self.text})

    local curopts = currentopts(options)
    curopts.header = self

    for i, child in ipairs(self) do
        child:markdown(lines, options)
    end
end

-- paragraph
class(doc) "paragraph" {
    __inherit = {doc.node},
    __public = {}
}

function doc.paragraph:markdown(lines, options)
    table.insert(lines, {})

    local par = {}
    for i, child in ipairs(self) do
        child:markdown(par, options)
    end

    -- FIXME apply options (width, indent)

    table.insert(lines, par)
end

-- plain text
class(doc) "plain" {
    __inherit = {doc.node},
    __public = {}
}

function doc.plain:markdown(lines, options)
    local blk = {}
    for _, v in ipairs(self) do
        v:markdown(blk)
    end
    table.insert(lines, blk)
end

-- code
class(doc) "code" {
    __inherit = {doc.node},
    __public = {
        attributes = void,
        classes = void,
        text = void,
        id = void
    }
}

function doc.code:markdown(lines, options)
    table.insert(lines, '`' .. self.text .. '`')
end

-- block
class(doc) "block" {
    __inherit = {doc.node},
    __public = {
        style = void
    }
}

function doc.block:markdown(lines, options)
    pushopts(options, {
        block = currentopts(options).block + 1
    })

    if isa(self[1], doc.list) then
        -- NOTE for some reason, pandoc puts lists into "quoted blocks"
        assert(#self == 1, "Should be a single list in quoted block.")
        self[1]:markdown(lines, options)
    else
        if self.style == 'code' then
            -- FIXME indentation
            table.insert(lines, {'```'})
            for _,child in ipairs(self) do
                child:markdown(lines, options)
            end
            table.insert(lines, {'```'})
        else
            error("block style FIXME: " .. self.style)
        end
    end

    popopts(options)
end

-- list
class(doc) "list" {
    __inherit = {doc.node},
    __public = {
        style = void
    }
}

function doc.list:markdown(lines, options)
    local style = self.style
    pushopts(options, {
        style = style
    })

    for _, v in ipairs(self) do
        v:markdown(lines, options)
    end

    popopts(options)
end

class(doc) "item" {
    __inherit = {doc.node}
}

function doc.item:markdown(lines, options)
    local curopts = currentopts(options)
    local style = curopts.style

    local list = {}
    if style == 'bullet' then
        for _, v in ipairs(self) do
            v:markdown(list, options)
        end

        local bullet = '-'
        -- FIXME depth dependent?
        table.insert(list, 1, bullet)
    elseif style == 'definition' then
        io.dump(self)
        os.exit()
    else
        error('item not implemented for style: ' .. style)
    end

    -- indentation
    local block = curopts.block
    if block > 0 then
        table.insert(list, 1, string.rep(' ', block * curopts.indent - 1))
    end

    table.insert(lines, list)
end

-- link
class(doc) "link" {
    __inherit = {doc.node},
    __public = {
        target = void,
        title = void
    }
}

function doc.link:markdown(lines, options)
    local target = self.target
    local title = self.title or target

    table.insert(lines, {'[' .. title .. '](' .. target .. ')'})
end

-- div
class(doc) "div" {
    __inherit = {doc.node},
    __public = {
        attributes = void,
        classes = void,
        id = void
    }
}

function doc.div:markdown(lines, options)
    if table.has(self.classes, "versionadded") then
        -- omitted for now
        -- FIXME
    elseif table.has(self.classes, "variable") then
        local curopts = currentopts(options)

        -- variables list
        local block = doc.block()
        block.style = 'plain' -- FIXME?
        for i = 2,#self do
            table.insert(block, self[i])
        end

        for _,v in ipairs(self[1]) do
            if isa(v, doc.string) then
                error("FIXME")
                variables[v.text] = {
                    header = curopts.header,
                    content = block
                }
            end
        end

        -- docs
        local blk = {}
        for _,child in ipairs(self) do
            child:markdown(blk, options)
        end
        table.insert(lines, blk)
    elseif table.has(self.classes, "title-ref") then
        local blk = {}
        for _,child in ipairs(self) do
            child:markdown(blk, options)
        end
        table.insert(lines, blk)
    else
        io.dump(self)
        error("FIXME div type not supported")
    end
end

-- span
class(doc) "span" {
    __inherit = {doc.div}
}

function doc.span:markdown(lines, options)
    local blk = {}
    for _, v in ipairs(self) do
        v:markdown(blk)
    end
    table.insert(lines, blk)
end

-- pieces
class(doc) "string" {
    __inherit = {doc.node},
    __public = {
        text = void
    }
}

function doc.string:markdown(lines)
    if self.text:match("^:cpack_gen:$") then
        -- unsure, what this is...
        return        
    end

    table.insert(lines, self.text)
end

class(doc) "space" {
    __inherit = {doc.node},
    __init = function(self, p)
    end
}

function doc.space:markdown(lines)
end

class(doc) "emphasis" {
    __inherit = {doc.node},
    __public = {
        style = void
    }
}

-- ---------------------------------------------------------------------------
-- List files
local modulename = filename()

local generators = {}
local generator_data_path = fs.concat('.amend', 'myake', 'generator')
for file in fs.dir(generator_data_path) do
    if (file ~= '.') and (file ~= '..') then
        local fullfile = fs.concat(generator_data_path, file)

        if fs.isnewer(modulename, fullfile) or isdebugged then
            table.insert(generators, file:sub(1, -5))
        end

        fs.touch(fullfile)
    end
end
table.sort(generators)

-- update 
for _, name in ipairs(generators) do
    message(INFO, "- %s", name)

    local help = require('myake/generator/' .. name)
    variables = {}

    -- FIXME test markdown
    local lines = {}
    for _, v in ipairs(help) do
        local options = {{
            width = 131, -- target column for line wrap
            indent = 4 -- number of spaces for indentation
        }}

        currentopts(options, { -- internal book keeping
            block = -1 -- nested block depth
        })

        io.dump(options)

        if isdebugged then
            v:markdown(lines, options)
        else
            local status, msg = xpcall(v.markdown, debug.traceback, v, lines, options)
            if not status then
                print(msg)
                break
            end
        end
    end

    io.dump(lines, {
        key = 'markdown'
    })
    break
end
