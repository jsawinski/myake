-- Distributed under the OSI-approved MIT License. See accompanying
-- file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

local M = table

local tinsert = table.insert

--- Copy or merge a table.
--@param src The table to copy.
--@param[optional] dst The target table to copy values into.
--@return The copied or merged table.
-- 
-- This table copy function recursively copies or merges tables. 
-- 
-- To support the accompanied class implementation, this function uses the __copy method
-- if found in a table (or it's meta-table).
--
-- @see myake.class
local function copy(src, dst)
    local T = type(src)
    if T == 'table' then
        local mt = getmetatable(v)
        
        -- handle a class' __copy "meta-method"
        if mt and mt.__copy then
            return mt.__copy(src)
        end
        
        -- standard table copy
        dst = dst or {}
        
        if mt then
            setmetatable(dst, mt)
        end
        
        for k,v in pairs(src) do
            if type(v) == 'table' then
                dst[k] = copy(v)
            else
                dst[k] = v
            end
        end
        
        return dst
    else
        return src
    end
end
M.copy = copy

--- Get table keys.
--@param t Table.
--@return Table of keys.
local function keys(t)
    local res = {}
    
    for k,_ in pairs(t) do
        tinsert(res, k)
    end
    
    return res
end
M.keys = keys

--- Count (all) elements in a table.
--@param t Table.
--@return Key plus element count.
local function count(t)
    return #(keys(t)) + #t
end
M.count = count

return M
