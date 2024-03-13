#!cpack -- Check CPack variables

message "Checking CPack variables..."

depends 'cpack-docs'

-- check if debugged
local isdebugged = arg[-1]:match('vscode')

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
    __public = {
        id = void
    },
    __newindex = function(self, k, v)
        if math.type(k) ~= 'integer' and not getmetatable(self).__public[k] then
            error(strformat("variable %q is not a public member variable",
                            tostring(k)), 2)
        end

        rawset(self, k, v)
    end,
    findid = function(self, id)
        if self.id then
            if type(self.id) == 'string' then
                if self.id == id then
                    return self
                end
            else
                for k, v in pairs(self.id) do
                    if k == id then
                        return self
                    end
                end
            end
        end

        for _, child in ipairs(self) do
            local res = child:findid(id)
            if res then
                return res
            end
        end
    end,
    variables = function(self, ...)
        for _, child in ipairs(self) do
            child:variables(...)
        end
    end,
    markdown = function(self, ...)
        error("markdown() not implemented for doc." .. self.__name)
    end
}

-- header
class(doc) "header" {
    __inherit = {
        doc.node
    },
    __public = {
        text = void,
        id = void,
        level = 0
    }
}

-- paragraph
class(doc) "paragraph" {
    __inherit = {
        doc.node
    },
    __public = {}
}

-- plain text
class(doc) "plain" {
    __inherit = {
        doc.node
    },
    __public = {}
}

-- code
class(doc) "code" {
    __inherit = {
        doc.node
    },
    __public = {
        attributes = void,
        classes = void,
        text = void,
        id = void
    }
}

-- block
class(doc) "block" {
    __inherit = {
        doc.node
    },
    __public = {
        style = void
    }
}

-- list
class(doc) "list" {
    __inherit = {
        doc.node
    },
    __public = {
        style = void
    }
}

class(doc) "item" {
    __inherit = {
        doc.node
    }
}

-- link
class(doc) "link" {
    __inherit = {
        doc.node
    },
    __public = {
        target = void,
        title = void
    }
}

-- div
class(doc) "div" {
    __inherit = {
        doc.node
    },
    __public = {
        attributes = void,
        classes = void,
        id = void
    }
}

-- span
class(doc) "span" {
    __inherit = {
        doc.div
    }
}

-- pieces
class(doc) "string" {
    __inherit = {
        doc.node
    },
    __public = {
        text = void
    }
}

class(doc) "space" {
    __inherit = {
        doc.node
    },
    __init = function(self, p)
    end
}

class(doc) "emphasis" {
    __inherit = {
        doc.node
    },
    __public = {
        style = void
    }
}

-- ---------------------------------------------------------------------------
-- VARIABLES

function doc.header:variables(varlist)
    if self.level == 2 then
        table.insert(varlist, {
            header = self.id
        })
    end

    doc.node.variables(self, varlist)
end

function doc.div:variables(varlist)
    local classes = self.classes
    assert(#classes == 1, "div's with multiple classes are not handled.")

    if classes[1] == 'variable' then
        local top = varlist[#varlist]

        -- get all variables
        local vars = {}
        for _, child in ipairs(self[1]) do
            if isa(child, doc.string) then
                vars[child.text] = true
            end
        end

        -- set my own id
        if #vars == 1 then
            self.id = vars[1]
        else
            self.id = vars
        end

        -- insert
        local top = varlist[#varlist]
        table.insert(top, vars)
    end

    -- no need for recursion
end

-- ---------------------------------------------------------------------------
-- MARKDOWN

-- FIXME context

-- ---------------------------------------------------------------------------
-- List files
local modulename = filename()

local generators = {}
local generator_help_path = fs.concat('.amend', 'myake', 'generator', 'help')
for file in fs.dir(generator_help_path) do
    if (file ~= '.') and (file ~= '..') then
        local fullfile = fs.concat(generator_help_path, file)

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

    local helpfile = 'myake/generator/help/' .. name
    local help = require(helpfile)

    -- get variables
    local variables = {
        file = 'myake/generator/help/' .. name
    }
    assert(#help == 1, "Generator help is expected to have a single head-line.")
    help = help[1]

    help:variables(variables)

    -- check <name>.cmake todo list
    local cmakefile = name .. '.cmake'
    if not fs.exists(cmakefile) then
        message(WARNING, "Generator %s not found.", cmakefile)
    else
        -- read text (line-wise)
        local text = {}
        for line in io.lines(cmakefile) do
            text[#text + 1] = line
        end

        -- find comment (todo list) at end-of-file
        local todo_line = #text
        while text[todo_line]:match("^#") do
            todo_line = todo_line - 1
        end

        -- scan todo list
        local todo = {}
        for i = todo_line + 1, #text do
            local check, var = text[i]:match("# [[]([ x])[]] (.*)")
            if check then
                todo[var] = check == 'x'
            end
        end

        -- check for invalid entries
        for item, _ in pairs(todo) do
            local found = false
            for _, sec in ipairs(variables) do
                for _, t in ipairs(sec) do
                    if t[item] ~= nil then
                        found = true
                        break
                    end
                end

                if found then
                    break
                end
            end

            if not found then
                error(
                    "The variable '" .. item .. "' listed in Todo section of " ..
                        cmakefile .. " does not exist.")
            end
        end

        -- update variables list
        for _, sec in ipairs(variables) do
            for _, t in ipairs(sec) do
                for k, v in pairs(t) do
                    if todo[k] ~= nil then
                        t[k] = todo[k]
                    else
                        t[k] = void
                    end
                end
            end
        end

        -- emit variables
        while #text > todo_line do
            table.remove(text)
        end

        for _, sec in ipairs(variables) do
            local hdr = help:findid(sec.header)
            if not hdr then
                error("Internal error: could not find '" .. sec.header .. "'")
            elseif #sec > 0 then
                table.insert(text, "# === " .. hdr.text)
                table.insert(text, "# ")
            end

            for _, vars in ipairs(sec) do
                local unchecked = false
                local akey 
                for key, check in pairs(vars) do
                    if check == void then
                        unchecked = true
                        check = ' '
                    else
                        unchecked = unchecked or not check
                        check = check and "x" or " "
                    end
                    table.insert(text, string.format("# [%s] %s", check, key))
                    akey = key
                end

                table.insert(text, "# ")
                if unchecked then
                    local div = help:findid(akey)

                    for i = 2,#div do
                        local v = div[i]
                        -- FIXME
                    end
                    table.insert(text, "# ")
                end
            end
        end

        local f<close> = io.open(cmakefile, "w")
        f:write(table.concat(text, '\n'), '\n')
    end
end
