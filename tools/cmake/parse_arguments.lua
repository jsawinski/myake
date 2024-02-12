-- Distributed under the OSI-approved MIT License. See accompanying
-- file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

local log = require 'myake.log'
local DEBUG = log.debug
local TRACE = log.trace
local ENTER = log.enter
local LEAVE = log.leave

local tinsert = table.insert
local strlower = string.lower

local M = require 'cmake.module'

--- Parse arguments
-- This function is principal identical to cmake_parse_arguments, except that results
-- will be stored in tables with lower-case names.
local function parse_arguments(tbl, options, one_value_keywords, multi_value_keywords, ...)
    ENTER('parse_arguments(%s, %s, %s, %s, ...)\n', tbl, options, one_value_keywords, multi_value_keywords)
    
    tbl.unparsed_arguments = {}
    
    -- make list of keywords
    local keywords = {}
    for _,key in ipairs(options) do
        keywords[key] = 1
    end
    for _,key in ipairs(one_value_keywords) do
        keywords[key] = 2
    end
    for _,key in ipairs(multi_value_keywords) do
        keywords[key] = 3
    end
    
    -- loop over arguments
    local curkey = 'unparsed_arguments'
    local nextkey = nil
    for _,arg in ipairs({...}) do
        local iskeyword = keywords[arg]
        
        if iskeyword then
            if nextkey then
                error("Expected a parameter.")
            end
            
            if keywords[arg] == 1 then
                TRACE("    [%-16s] = TRUE\n",  strlower(arg))
                tbl[strlower(arg)] = true
                curkey = 'unparsed_arguments'
            elseif keywords[arg] == 2 then
                nextkey = strlower(arg)
                curkey = 'unparsed_arguments'
            elseif keywords[arg] == 3 then
                curkey = strlower(arg)
                tbl[curkey] = tbl[curkey] or {}
            else
                TRACE("UNRECOGNIZED: %q\n", arg)
            end
        else
            if nextkey then
                TRACE("    [%-20s] = %s\n",  nextkey, arg)
                tbl[nextkey] = arg
                nextkey = nil
            else
                TRACE("    [%-20s] + %s\n",  curkey, arg)
                tinsert(tbl[curkey], arg)
            end
        end
    end
    
    LEAVE()
end
M.parse_arguments = parse_arguments

return M
