#!/usr/bin/env lua5.4
-- Distributed under the OSI-approved MIT License. See accompanying
-- file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

local fs = require 'lfs'

local unpack = table.unpack
local tinsert = table.insert
local tconcat  = table.concat
local strformat = string.format
local strrep = string.rep
local cout = io.stdout

-- [[ adjust package.path ]]
-- get package.config
local package_config = {}
package.config:gsub("([^\n\r]*)[\n\r]", function(part) tinsert(package_config, part) end)
local dirsep = package_config[1]
local pathsep =  package_config[2]
local filepat =  package_config[3]

-- get script path
local cwd = fs.currentdir()
fs.chdir(arg[0]:match("@?(.*/)") or '.')
local scriptpath = fs.currentdir()
fs.chdir(cwd)

-- adjust package.path
package.path = 
    scriptpath .. dirsep .. filepat .. '.lua'
    ..pathsep
    ..scriptpath .. dirsep .. filepat .. dirsep .. 'init.lua'
    ..pathsep
    ..package.path

local cmake = require 'cmake.parse_arguments'
local fs = require 'myake.fs'
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

LEVEL(SEVERITY.INFO)

--[[ ====================================================== ]]
if false then
    require 'myake.__tests__'
end
--[[ ====================================================== ]]

-- wildcard to regex
local function w2rx(s)
    if type(s) == 'table' then
        for i,v in ipairs(s) do
            s[i] = w2rx(v)
        end
        return s
    else
        return s:gsub("([.])", "[%1]"):gsub("([*])", ".*"):gsub("([?])", ".")
    end
end

----[[ parse arguments ]]
DEBUG('parsing arguments...\n')

local opts = {}
cmake.parse_arguments(opts, 
    {'ALLOW_IN'}, {'OUTPUT_DIRECTORY', 'WORKING_DIRECTORY'}, {'IGNORE', 'DIRECTORIES', 'EXTENSIONS', 'STRIP'}, 
    unpack(arg))
opts.working_directory = opts.working_directory or '.'
opts.extensions = w2rx(opts.extensions or { '.md', '.cmake' })
opts.ignore = w2rx(opts.ignore or {})

TRACE("opts = %s", opts)

----[[ remove old docs ]]
ENTER("Removing old files...")
local outpath = fs.fullfile(opts.working_directory, opts.output_directory)
local oldfiles = fs.find(outpath, {
        ignore = { "index.md" },
    })

-- sort files
table.sort(oldfiles, function(a,b)
        return a>b
    end)

-- remove files
for _,file in ipairs(oldfiles) do
    if file:match("[.md]$") then
        os.remove(file)
    end
end

-- remove directories
for _,dir in ipairs(oldfiles) do
    local attr = fs.attributes(dir)
    if attr and attr.mode == 'directory' then
        fs.rmdir(dir)
    end
end
LEAVE("DONE")

----[[ create file list ]]
ENTER("Creating file list...")
local filelist = {}
local files = fs.find(opts.working_directory, {
        ignore = opts.ignore,
    })

local wd = w2rx(opts.working_directory) .. dirsep
for _,path in ipairs(files) do
    local function strippath(p)
        -- strip working directory
        local res = p:gsub(wd, '')
        
        -- strip path elements from options
        for _,strip in ipairs(opts.strip) do
            if res:match("^"..strip..dirsep) then
                res = res:gsub("^"..strip..dirsep, '')
                break
            end
        end
        
        return res
    end
    
    for _,ext in ipairs(opts.extensions) do
        if path:match(ext .. "$") then
            tinsert(filelist, path)
            filelist[path] = strippath(path)
            break
        elseif opts.allow_in and path:match(ext.."[.]in$") then
            error("configuration dependent .in files not supported currently")
            -- TODO preprocessor (which converts .in patterns)
            break
        end
    end
end
LEAVE("DONE")

ENTER("Extracting documentation...")
local doc = require 'myake.doc'
for i,p in ipairs(filelist) do
    doc.extract(filelist[p], p, opts)
end
LEAVE("DONE")
