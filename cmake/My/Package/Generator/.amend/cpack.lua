#!cpack -- update CPack variable list

message "Updating CPack variables..."

local cpack_version = "0.0.0"

-- check if update required
local cpack_detected_version = io.command("cpack --version")
if cpack_detected_version ~= nil then
    cpack_detected_version = cpack_detected_version:match('[0-9.]+')
    if version(cpack_version) > version(cpack_detected_version) then
        return
    end
else
    return
end

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
    ['InnoSetup'] = true,
    ['NSIS'] = true,
    ['NuGet'] = true,
    ['PackageMaker'] = false,
    ['productbuild'] = true,
    ['RPM'] = true,
    ['WIX'] = true
}

local translate = {
    ['DragNDrop'] = 'DMG'
}

local helpfilemap = {}
for k,_ in pairs(generators) do
    local key = translate[k] or k
    helpfilemap[key:lower()..'.rst'] = k
end

local generator_help_path = fs.concat(cmake_root, 'Help', 'cpack_gen')
for file in fs.dir(generator_help_path) do
    if (file ~= '.') and (file ~= '..') then
        if not helpfilemap[file:lower()] then
            error("New package generator discovered, help file: "..fs.concat(generator_help_path, file))
        end

        


        -- file = file:gsub("[.]rst$", "")
        -- table.insert(generators, file)
    end
end

-- -- -- -------------------------------------
-- -- -- read documents
-- -- local docs = {}

-- function addraw(txt)
--     local pipe = io.popen("AMEND_DIR=xyz pandoc -f rst --lua-filter .amend/myake/pandoc.lua -t markdown ", "w")
--     pipe:write(txt)
-- end

-- -- addraw(io.command("cpack --help CPack"))
-- addraw(io.readall('/usr/share/cmake-3.28/Help/cpack_gen/deb.rst'))
-- -- for _,base in pairs(generators) do
-- --     local t = {}
-- --     local file = fs.concat(generator_help_path, base)..'.rst'
-- --     local txt = assert(io.readall(file))
-- --     local url = string.format("https://cmake.org/cmake/help/latest/cpack_gen/%s.html\n", base)
-- --     addraw(txt, url)
-- -- end

-- -- -- -------------------------------------
-- -- -- parse documents
-- -- pandoc --lua-filter=wordcount.lua sample.md
