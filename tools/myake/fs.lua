-- Distributed under the OSI-approved MIT License. See accompanying
-- file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

local log = require 'myake.log'
local DEBUG = log.debug
local TRACE = log.trace
local ENTER = log.enter
local LEAVE = log.leave

local tinsert = table.insert
local tremove = table.remove
local tconcat = table.concat
local unpack = table.unpack

local M = require 'lfs'

local attributes = M.attributes
local dir = M.dir

-- get package.config
local package_config = {}
package.config:gsub("([^\n\r]*)[\n\r]", function(part) tinsert(package_config, part) end)
local dirsep = package_config[1]
local pathsep =  package_config[2]
local searchpattern =  package_config[3]

--- Concatenate path elements.
local function fullfile(...)
    return tconcat({...}, dirsep)
end
M.fullfile = fullfile

--- Get file parts.
-- @param file The relative or absolute file name.
-- @returns path,base-name 
local function fileparts(file)
    local fpath = file:match("^(.*)["..dirsep.."][^"..dirsep.."]*$") or '.'
    local fname = file:match("^.*["..dirsep.."]([^"..dirsep.."]*)$") or file

    return fpath,fname
end
M.fileparts = fileparts

--- Check if @a path exists.
-- 
local function exists(path)
    return attributes(path) ~= nil
end
M.exists = exists

--- Check if @a path is a directory.
-- 
local function isdir(path)
    local attr = attributes(path)
    return attr and attr.mode == 'directory'
end
M.isdir = isdir

--- Recursive directory iterator.
-- 
local function rdir(path)
    local rec = { {path, dir(path)} }
    
    return function()
    ::return_from_recursive::
        if #rec > 0 then
            local cwd,fn,u = unpack(rec[#rec])
            local res = fn(u)
            
            while res == '.' or res == '..' do
                if #rec == 1 and res == '.' then
                    return path
                end

                res = fn(u)
            end

            if not res then
                tremove(rec)
                goto return_from_recursive
            end
            
            res = M.fullfile(cwd, res)
            
            if M.isdir(res) then
                tinsert(rec, {res, dir(res)})
            end
            
            return res
        end
    end    
end
M.rdir = rdir

--- Standard directory seperator.
M.dirsep = dirsep

--- Standard search-path seperator.
M.pathsep = pathsep

--- Standard Lua search-pattern.
M.searchpattern = searchpattern

--- Make directory including parent paths.
-- @param dirname
local function rmkdir(dirname)
    dirname = dirname:gsub("["..dirsep.."]+", dirsep):gsub("["..dirsep.."]*$", "") -- sanitize path
    local parent = dirname:gsub(dirsep .. "[^" .. dirsep .. "]+$", "")
    
    if not exists(parent) then
        assert(rmkdir(parent))
    end
    
    return M.mkdir(dirname)
end
M.rmkdir = rmkdir

--- Get module path.
-- 
-- @param modname The module name (e.g. 'myake.debug').
-- @param searchpath The module search path (e.g. @c package.path)
-- 
local function modulepath(modname, searchpath)
    -- find module in searchpath
    local fname
    if searchpath then
        fname = package.searchpath(modname, searchpath)
    else
        fname = package.searchpath(modname, package.path)
            or package.searchpath(modname, package.cpath)
    end

    -- get path        
    if fname then
        local pattern = dirsep .. modname:gsub('[.]', dirsep) 
        return fname
            :gsub(pattern.. dirsep .. 'init[.]lua$', '')
            :gsub(pattern.. '[.]lua$', '')
    end
end
M.modulepath = modulepath

--- FIXME
local function find(path, param)
    param = param or {}
    param.ignore = param.ignore or {}
    param.mode = param.mode or {}
    
    param.results= param.results or {}
    
    ENTER("find(%s, {PARAMETERS...})", path)
    
    -- helper for detecting patterns to ignore
    local ignore = param.ignore
    local function doignore(p) 
        -- ignore '.' and '..'
        if p == '.' or p == '..' then
            return true
        end
        
        -- check ignore patterns
        for _,pat in ipairs(ignore) do
            if p:match(pat) then
                return true
            end
        end
    end
    
    -- helper for check path mode
    local mode = param.mode 
    local function hasmode(p)
        if #mode == 0 then
            return true
        else
            for _,m in ipairs(mode) do
                if attributes(p).mode == m then
                    return true
                end
            end
        end
    end
    
    -- loop over directory
    local res = param.results
    for item in dir(path) do
        if not doignore(item) then
            local fpath = fullfile(path, item)
            
            if hasmode(fpath) then
                tinsert(res, fpath)
            end
            
            if isdir(fpath) then
                find(fpath, param)
            end
        end
    end
    
::return_from_find::
    LEAVE()
    return res
end
M.find = find

return M
