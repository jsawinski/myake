-- Distributed under the OSI-approved MIT License. See accompanying
-- file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.
--[==[- Markdown extraction from CMake files.

FIXME

--]==] local M = {}

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

local fs = require 'myake.fs'
local tinsert = table.insert

local function generate(modname, path, outpath)
    local output = {}

    local comment = false
    local strip = false
    local marker

    -- parse file
    local ins <close> = assert(io.open(path), "Could not open file: " .. path)
    for line in ins:lines() do
        if comment then
            -- check if end-of-comment reached
            if line:match("[]]" .. marker .. "[]]") then
                comment = false
            else
                local text = line:gsub("\\\\", "  ")
                tinsert(output, text)
            end
        else
            -- check if start-of-comment
            local md
            comment, marker, md = line:match("^([#])%s*([[]=*[[])([.]md[:])%s*$")
            if comment then
                marker = marker:sub(2, -2)
            end
        end
    end

    -- generate output
    local dowrite = false
    for l = 1,#output do
        if #output[l] > 0 then
            dowrite = true
            break
        end
    end

    if dowrite then
        local outdir = fs.fileparts(outpath)
        if not fs.exists(outdir) then
            assert(fs.rmkdir(outdir))
        end

        local outs <close>  = assert(io.open(outpath, 'w'), "Could not open file for writing: " .. outpath)
        for l = 1,#output do
            outs:write(output[l], '\n')
        end
    end
end

--- Extract documentation.
local function extract(source, path, opts)
    ENTER('doc.extract(%q,%q,%s)', source, path, opts)

    local modulename -- the name of the module (usually stripped path without extension)
    local copyonly = false

    if source:match("[.]in$") then
        source = source.gsub("[.]in$", "")
    end

    if source:match("[.]cmake$") then
        modulename = source:match("^(.*)[.]cmake$")
    elseif source:match("[.]md$") then
        copyonly = true
        modulename = source:match("^(.*)[.]md$")
    else
        error("File extension not recognized: " .. source)
    end
    DEBUG("parsing module: %s", modulename)

    -- assemble output name
    local outpath = fs.fullfile(opts.working_directory, opts.output_directory, modulename .. '.md')

    -- copy or extract documentation
    if copyonly then
        local outdir = fs.fileparts(outpath)
        if not fs.exists(outdir) then
            assert(fs.rmkdir(outdir))
        end

        local ins = assert(io.open(path), "Could not open file: " .. path)
        local outs = assert(io.open(outpath, 'w'), "Could not open file for writing: " .. outpath)

        for line in ins:lines() do
            outs:write(line:gsub("\\\\", "  "), '\n')
        end
    else
        generate(modulename, path, outpath)
    end

    LEAVE()
end
M.extract = extract

return M
