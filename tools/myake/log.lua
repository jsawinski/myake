-- Distributed under the OSI-approved MIT License. See accompanying
-- file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

require 'myake.class'
require 'myake.string'
require 'myake.table'

local strformat = string.format
local strlower = string.lower
local strrep = string.rep
local strsplit = string.split
local unpack = table.unpack
local tremove = table.remove
local tinsert = table.insert
local tconcat = table.concat
local tsort = table.sort

--[==[- Logging tools.

Usage:
@code
local log = require 'myake.log'

local FATAL = log.fatal
local ALERT = log.alert
local CRITICAL = log.critical
local ERROR = log.error
local WARNING = log.warning
local NOTICE = log.notice
local INFO = log.info
local DEBUG = log.debug
local TRACE = log.trace
local ENTER = log.enter
local LEAVE = log.leave
local SEVERITY = log.severity
local LEVEL = log.level

LEVEL(SEVERITY.TRACE)

function myfn(fmt, ...)
    ENTER('myfn(%s, %s)', fmt, {...})
    -- ...
    LEAVE()
end
@endcode
]==]
local M = {}

---@internal Default output stream.
local outs = io.stderr

local FATAL    = 0
local ALERT    = 1
local CRITICAL = 2
local ERROR    = 3
local WARNING  = 4
local NOTICE   = 5
local INFO     = 6
local DEBUG    = 7
local TRACE    = 8

--[[- Log severity.
]]
local severity = {
    FATAL = FATAL,         ---< A fatal error condition (which will also terminate the program).
    ALERT = ALERT,         ---< Alter condition (FIXME).
    CRITICAL = CRITICAL,   ---< Critical condition (FIXME).
    ERROR = ERROR,         ---< An error occured.
    WARNING = WARNING,     ---< Warning condition.
    NOTICE = NOTICE,       ---< An important message.
    INFO = INFO,           ---< Purely informational charater.
    DEBUG = DEBUG,         ---< Debugging message.
    TRACE = TRACE,         ---< Program tracing (see also enter() and leave()).
}
M.severity = severity

-- add level to key translation
for k,v in pairs(severity) do
    severity[v] = k
end

---@internal Format for severity
local sevfmt = '[%-8s] '

---@internal Maximum log severity (to show).
local maxseverity = INFO

---@internal Tracing indent.
local trindent = '    '

---@internal Tracing depth.
local trdepth = 0

--[[- Get or set maximum log-severity.
@param[optional] n Maximum log-severity.
@return Current log severity.
]]
local function level(n)
    n = tonumber(n or severity[n]) 
    if n and n > FATAL then
        maxseverity = n
        
        if n < severity.TRACE then
            trdepth = 0
        end
    end
    
    return maxseverity
end
M.level = level

---@internal Standard type-dependent value conversion.
local __convert_standard__ = {
        ['table'] = tostring,
        ['userdata'] = tostring,
        ['function'] = tostring
    }
    
---@internal Find name of a global value.
--@fn find(v)
--@param obj The value (or object) to find in the global namespace.
--@return The (dot-separated) name found.
--
local tpush = function(t,v) tinsert(t,v) end
local tpop = function(t) tremove(t, #t) end

local function __find(obj, t, ns, visited)
    for k,v in pairs(t) do
        if obj == v then
            tpush(ns, k)
            return true
        end
        
        if type(v) == 'table' then
            if not visited[v] then
                tpush(ns, k)
                visited[v] = true
                if __find(obj, v, ns, visited) then
                    return true
                end
                tpop(ns)
            end
        end
    end
end

local function find(obj)
    local ns = ns or {}
    
    if __find(obj, _G, ns, { [_G.package] = true, [_G] = true }) then
        return tconcat(ns, '.')
    end
    
    if __find(obj, _G.package.loaded, ns, { [_G.package] = true, [_G] = true }) then
        return tconcat(ns, '.')
    end
end

---@internal Marker for tabletostring's root table stack
local __root__ = {}

local __convert_expanded__

---@intenral Convert a table to a string.
local function tabletostring(t)
    local res 
    local __root__ = __root__
    
    local function convert(v, k, comma, visited)
        -- add space
        res = res and (res .. ' ') or ''
        
        -- add key
        if k then
            local Tk = type(k)
            
            if Tk == 'string' then
                if k:match('^[_a-zA-Z][_a-zA-Z0-9]*$') then
                    key = k
                else
                    key = strformat('[%q]', k)
                end
            elseif Tk == 'number' then
                key = strformat('[%d]', k)
            else
                key = strformat('[%s]', tostring(k))
            end
            
            res = res .. key .. ' = '
        end
        
        -- add value
        local T = type(v)
        if T == 'table' then
            if k and visited[v] then
                local s = visited[__root__]
                if s[#s] == v then
                    res = res .. '@SELF'
                elseif #s > 1 and s[#s-1] == v then
                    res = res .. '@PARENT'
                else
                    local ns = { '@ROOT' }
                    local ref = find(v) or __find(v, s[1], ns, { [s] = true }) and tconcat(ns, '.')
                    if ref then 
                        res = res .. ref
                    else
                        res = res .. '@OTHER{'..tostring(v)..'}' -- FIXME
                    end
                end
            else
                visited[v] = true
                
                res = res .. '{'
                
                -- get and sort keys
                local keys = {}
                for k,_ in pairs(v) do
                    tinsert(keys, k)
                end
                
                tsort(keys, 
                    function(a,b)
                        local Ta, Tb = type(a),type(b)
                        
                        if Ta == Tb then
                            return a < b
                        else
                            return Ta < Tb
                        end
                    end
                )
                
                -- traverse keys
                local nkeys = #keys
                for i,k in ipairs(keys) do
                    convert(v[k], k, i<nkeys, visited)
                end
                
                res = res .. ' }'
            end
        elseif T == 'string' then
            res = res .. strformat('%q', v)
        else
            if __convert_expanded__[T] then
                v = __convert_expanded__[T](v)
            end
            
            res = res .. strformat('%s', tostring(v))
        end
        
        if comma then
            res = res .. ', '
        end
    end
    
    convert(t, nil, nil, { [__root__] = {t}, [t] = true })
    return res
end

---@internal Informational (ie. expanded) type-dependent value conversion.
__convert_expanded__ = {
        ['table'] = function(v) 
                return find(v) or tabletostring(v)
            end,
        ['userdata'] = function(v) 
                return find(v) or tostring(v):gsub("^.*0x", '@USERDATA:0x')
            end,
        ['function'] = function(v) 
                return find(v) or tostring(v):gsub("^.*0x", '@FUNCTION:0x')
            end,
    }
    
---@internal Log message formatter.
--@param level Log message severity.
local function message(level, fmt, ...)
    local args = {...}
    
    -- convert arguments (severity dependent)
    local convert = (level < INFO) and __convert_standard__ or __convert_expanded__
    
    for i,v in ipairs(args) do
        local T = type(v)
        local cnv = convert[T]
        if cnv then
            args[i] = cnv(v)
        end
    end
    
    -- format and output
    local prefix = strformat(sevfmt, severity[level])
        .. strrep(trindent, trdepth)
    local text = strformat(fmt, unpack(args))
    
    local lines = strsplit(text, '[\n]') -- FIXME support \r, \r\n, \n\r
    if text:match('[\n]$') then
        tremove(lines, #lines)
    end
    
    local EOL = '\n'
    for _,line in ipairs(lines) do
        outs:write(prefix, line, EOL)
    end
end

--[[- Emit log message.

]]
local function emit(level, fmt, ...)
    --FIXME level may be a string
    if maxseverity >= level then
        message(level, fmt, ...)
        
        if level <= FATAL then
            os.exit(255)
        end
        
        return true
    end
end
M.emit = emit

--[[- Enter tracing.

FIXME

]]
local function enter(fmt, ...)
    if maxseverity >= TRACE then
        if fmt then
            message(TRACE, fmt, ...)
        end
        trdepth = trdepth + 1
        
        return true
    end
end
M.enter = enter

--[[- Leave tracing.

FIXME

]]
local function leave(fmt, ...)
    if maxseverity >= TRACE then
        trdepth = trdepth - 1
        if fmt then
            message(TRACE, fmt, ...)
        end
    end
end
M.leave = leave

-- FIXME
local mt = {}

for k,i in pairs(severity) do
    if type(k) == 'string' then
        local function logger(fmt, ...)
            if maxseverity >= i then
                message(i, fmt, ...)
                return true
            end
        end
        
        local fn_k = strlower(k)
        mt[fn_k] = logger
    end
end

mt.__call = function(_, fmt, ...)
        emit(fmt, ...)
    end
    
mt.__index = mt

setmetatable(M, mt)
return M
