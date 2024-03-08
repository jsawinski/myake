#!_cpack-docs -- update CPack documentation

local cpack_version = "3.28.3"

-- check if update required
local cpack_detected_version = io.command("cpack --version")
if cpack_detected_version ~= nil then
    cpack_detected_version = cpack_detected_version:match('[0-9.]+')
    if version(cpack_version) >= version(cpack_detected_version) then
        return
    end
else
    return
end

message "Updating CPack documentation..."

-- get CMAKE_ROOT 
local cmake_root
do
    local f<close> = assert(io.popen("cmake --system-information"))
    for line in f:lines() do
        if line:match("^CMAKE_ROOT") then
            cmake_root = line:gsub('[^"]+"([^"]+)"', '%1')
        end
    end
end
if not fs.exists(cmake_root) then
    warning("Failed to get cmake root directory.")
    return
end

-- list generators (from help directory)
local generators = {
    -- List of supported (or to be supported) generators
    -- (true is active, false is deprecated or removed)
    ['Archive'] = true,
    ['Bundle'] = true,
    ['Cygwin'] = true,
    ['DEB'] = true,
    ['DragNDrop'] = true,
    ['External'] = true,
    ['FreeBSD'] = true,
    ['IFW'] = true,
    ['InnoSetup'] = false, -- FIXME there's an error in amend's io.dump
    ['NSIS'] = true,
    ['NuGet'] = true,
    ['PackageMaker'] = false,
    ['productbuild'] = true,
    ['RPM'] = true,
    ['WIX'] = true
}
local order = {
    -- Alphabetical order of the 'generators' keys.
    -- (auto-generated)
}

local translate = {
    -- List of different naming schemes...
    -- (the authors are unsure, what this means)
    ['DragNDrop'] = 'DMG'
}

local helpfilemap = {}
for k, v in pairs(generators) do
    local key = translate[k] or k
    helpfilemap[key:lower() .. '.rst'] = k
    if v then
        table.insert(order, k)
    end
end
table.sort(order)

local generator_help_path = fs.concat(cmake_root, 'Help', 'cpack_gen')
for file in fs.dir(generator_help_path) do
    if (file ~= '.') and (file ~= '..') then
        local key = helpfilemap[file:lower()]
        if not key then
            error("New package generator discovered, see help file: " .. fs.concat(generator_help_path, file))
        end

        if generators[key] then
            generators[key] = fs.concat(generator_help_path, file)
        end
    end
end

-- add CPack documentation
local cpackhelp = "/tmp/cpack-help.txt" -- FIXME use os.tmpname()
do
    local tmpf<close> = io.open(cpackhelp, 'w')
    local txt = io.command("cpack --help CPack")
    tmpf:write(txt)
end

table.insert(order, 1, "Common")
generators["Common"] = cpackhelp

-- -------------------------------------
-- process documents
-- local docs = {}

function process(file, key)
    local command = string.format(
        'LUA_PATH="%s" LUA_CPATH="%s" GENERATOR="%s" FILE="%s" pandoc -f rst --lua-filter .amend/myake/pandoc-filter.lua -t plain %s',
        package.path, package.cpath, key, file, file)

    local pipe<close> = io.popen(command, "r")
    print(pipe:read('a'))
end

process(cpackhelp, "Common")
for _,k in ipairs(order) do
    process(generators[k], k)
end
