#!cpack -- Check CPack variables

message "Checking CPack variables..."

depends 'cpack-docs'

-- ---------------------------------------------------------------------------
-- Documentation and variable listing structure
doc = {}

class(doc) "node" {
    __newindex = function(self, k, v)
        if math.type(k) ~= 'integer' and not getmetatable(self).__public[k] then
            error(strformat("variable %q is not a public member variable", tostring(k)), 2)
        end

        rawset(self, k, v)
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

-- paragraph
class(doc) "paragraph" {
    __inherit = {doc.node},
    __public = {}
}

-- plain text
class(doc) "plain" {
    __inherit = {doc.node},
    __public = {}
}

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

-- block
class(doc) "block" {
    __inherit = {doc.node},
    __public = {
        style = void
    }
}

-- list
class(doc) "list" {
    __inherit = {doc.node},
    __public = {
        style = void
    }
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
    }
}

-- div
class(doc) "div" {
    __inherit = {doc.node},
    __public = {
        attributes = void,
        classes = void,
        id = void
    }
}

local doc_div_table = doc.div.table
function doc.div:table(t)
    if table.has(t.classes, 'variable') then
        local vars = {}
        for _,v in ipairs(t[1]) do
            if isa(v, doc.string) then
                table.insert(vars, v:tostring())
            end
        end

        io.dump(vars)
    end

    return doc_div_table(doc.div, t)
end

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
    tostring = function(self)
        return self.text
    end
}

class(doc) "space" {
    __inherit = {doc.node},
    __init = function(self, p)
    end
}

class(doc) "emphasis" {
    __inherit = {doc.node},
    __public = {
        style = void
    }
}

-- ---------------------------------------------------------------------------
-- Load files
local generator_input_path = fs.concat('.amend', 'myake', 'generator')
for file in fs.dir(generator_input_path) do
    if (file ~= '.') and (file ~= '..') then
        local name = file:sub(1, -5)
        
        local help = require('myake/generator/'..name)

    end
end