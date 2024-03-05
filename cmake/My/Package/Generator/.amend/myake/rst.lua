-- Basic reStructuredText parser
-- 
-- This parsing does only enough to transform the cpack help files into a 
-- format that is suitable for the use with the generator implementations.
--
-- see https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html
--
local M = {}

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
local function parse(doctext)
    -- local doc = document()
    -- doc:parse(doctext)
    -- doc:finalize()
    -- return doc
end

-- MODULE
M.parse = parse
return M

