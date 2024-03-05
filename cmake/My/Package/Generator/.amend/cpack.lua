#!cpack -- update CPack variable list

message "Updating CPack variables... (not yet supported)"

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
    error("Failed to get cmake root directory.")
end

-- list generators (from help directory)
local generators = {}
local generator_help_path = fs.concat(cmake_root, 'Help', 'cpack_gen')
for file in fs.dir(generator_help_path) do
    if (file ~= '.') and (file ~= '..') then
        file = file:gsub("[.]rst$", "")
        table.insert(generators, file)
    end
end
table.sort(generators)

-- -- -------------------------------------
-- -- read documents
-- local docs = {}

function addraw(txt)
    local pipe = io.popen("pandoc -f rst -t .amend/myake/rst.lua ", "w")
    pipe:write(txt)
end

addraw(io.command("cpack --help CPack"))
-- for _,base in pairs(generators) do
--     local t = {}
--     local file = fs.concat(cmake_root, 'Help', 'cpack_gen', base)..'.rst'
--     local txt = assert(io.readall(file))
--     local url = string.format("https://cmake.org/cmake/help/latest/cpack_gen/%s.html\n", base)
--     addraw(txt, url)
-- end

-- -- -------------------------------------
-- -- parse documents
-- pandoc --lua-filter=wordcount.lua sample.md
