-- Basic reStructuredText parser
-- 
-- This parsing does only enough to transform the cpack help files into a 
-- format that is suitable for the use with the generator implementations.
--
-- see https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html
--
local M = {}

local tinsert = table.insert
local tremove = table.remove

-- ---------------------------------------------------------------------------
-- Generic stack
-- ---------------------------------------------------------------------------
class(M) "stack" {}
local stack = M.stack

-- Push element.
function stack:push(elem)
    rawset(self, #self + 1, elem)
end

-- Get "top" element.
function stack:top()
    return rawget(self, #self)
end

-- Pop element.
function stack:pop(elem)
    local top = self:last()
    rawset(self, #self, nil)
    return top
end

-- ---------------------------------------------------------------------------
-- Generic node
-- ---------------------------------------------------------------------------
class(M) "node" {
    __public = {}
}
local node = M.node

-- Get last node.
function node:last()
    return rawget(self, #self)
end

-- Append node.
function node:append(n)
    rawset(self, #self + 1, n)
end

-- Pop element from the front.
function node:pop_front()
    local retval = self[1]

    for i = 1, #self do
        rawset(self, i, rawget(self, i + 1))
    end

    return retval
end

-- Pop element from the back.
function node:pop_back()
    local retval = self[#self]
    rawset(self, #self, nil)
    return retval
end

-- Transform node
function node:to(cls)
    -- inheritance check is skipped!
    setmetatable(self, cls)
end

-- ---------------------------------------------------------------------------
-- Text snippet
-- ---------------------------------------------------------------------------
class(M) "snippet" {
    __inherit = {node},
    __public = {
        __indent = 0
    }
}
local snippet = M.snippet

-- Constructor
function snippet:__init(indent)
    self.__indent = indent or 0
end

-- ---------------------------------------------------------------------------
-- Text paragraph
-- ---------------------------------------------------------------------------
class(M) "paragraph" {
    __inherit = {node},
    __public = {
        __indent = 0
    }
}
local paragraph = M.paragraph

-- Constructor
function paragraph:__init(indent)
    self.__indent = indent or 0
end

-- ---------------------------------------------------------------------------
-- Section
-- 
-- # with overline, for parts
-- * with overline, for chapters
-- = for sections
-- - for subsections
-- ^ for subsubsections
-- " for paragraphs
-- 
-- ---------------------------------------------------------------------------
class(M) "section" {
    __inherit = {node},
    __public = {
        __indent = 0,
        __level = void
    }
}
local section = M.section

function section:__init(lvl, text)
    self.__level = lvl
    rawset(self, 1, text)
end

-- ---------------------------------------------------------------------------
-- Text document 
-- ---------------------------------------------------------------------------
class(M) "document" {
    __inherit = {node},
    __public = {
        __stack = void,
        __lines = {}
    }
}
local document = M.document

-- Constructor.
function document:__init()
    self.__stack = stack()
    self.__stack:push(self)
end

-- Append a line to the document.
function document:parse(text)
    -- first stage parsing (indentation)
    local slices = {}

    for _, line in ipairs(text:split('\n')) do
        local indent = line:match("^[ ]*"):len()
        line = line:gsub("[ ]+$", "")
        line = line:sub(indent + 1)

        tinsert(slices, {indent, line})
    end

    -- second stage parsing (headings)
    local n = 1
    local overline = false
    while n < #slices do
        local inc = 1
        local line = slices[n][2]

        -- check overline
        if line:match("^###+$") or line:match("^[*][*][*]+$") then
            overline = true
            tremove(slices, 1)
            line = slices[n][2]
        end

        -- check section
        local level = nil
        local nextline = slices[n + 1] and slices[n + 1][2]
        if nextline then
            if nextline:match('^###+$') then
                assert(overline)
                level = -2
                overline = false
            elseif nextline:match('^[*][*][*]+$') then
                assert(overline)
                level = -1
                overline = false
            elseif nextline:match('^===+$') then
                level = 0
            elseif nextline:match('^[-][-][-]+$') then
                level = 1
            elseif nextline:match('^^^^+$') then
                level = 2
            elseif nextline:match('^"""+$') then
                level = 3
            end

            -- convert to section
            if level ~= nil then
                slices[n] = section(level, line)
                tremove(slices, n + 1)

                -- remove preceeding empty lines
                while n > 1 do
                    if slices[n - 1][2] == '' then
                        tremove(slices, n - 1)
                        n = n - 1
                    else
                        break
                    end
                end

                -- remove trailing empty lines
                while #slices > n do
                    if slices[n + 1][2] == '' then
                        tremove(slices, n + 1)
                    else
                        break
                    end
                end
            end
        end

        n = n + inc
    end

    -- final parsing
    if #slices == 0 then
        return
    end

    local stack = self.__stack
    if isa(slices[1], section) then
        self:append(slices[1])
        tremove(slices, 1)
    else
        self:append(paragraph())
    end

    while #slices > 0 do
        if isa(slices[1], section) then
            while stack:top() ~= self do
                stack:pop()
            end

            self:append(slices[1])
            tremove(slices, 1)
        elseif isa(slices[1], {node}) then
            error("Internal error.")
        else
            local indent, line = slices[1][1], slices[1][2]

            -- FIXME
            
            tremove(slices, 1)
        end
    end
end

-- Finalize document.
function document:finalize(line)
    self.__stack = nil
end

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
local function parse(doctext)
    local doc = document()
    doc:parse(doctext)
    doc:finalize()
    return doc
end

-- MODULE
M.parse = parse
return M

