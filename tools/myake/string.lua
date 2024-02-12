-- Distributed under the OSI-approved MIT License. See accompanying
-- file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

local M = string

local strfind = string.find
local strsub = string.sub
local tinsert = table.insert

--- Split a string (PERL-like).
-- see http://lua-users.org/wiki/SplitJoin
local function split(text, delimiter)
    local list = {}
    local pos = 1
    if strfind("", delimiter, 1) then -- this would result in endless loops
        error("delimiter matches empty string!")
    end
    while 1 do
        local first, last = strfind(text, delimiter, pos)
        if first then -- found?
            tinsert(list, strsub(text, pos, first-1))
            pos = last+1
        else
            tinsert(list, strsub(text, pos))
            break
        end
    end
    return list
end
M.split = split

return M
