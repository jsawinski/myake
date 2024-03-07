-- Pandoc filter for reStructuredText
-- (see https://pandoc.org/lua-filters.html)

-- TODO
--      This should be a "writer", not a "filter"...
--

-- This filter


local logging = require 'logging'

function Pandoc(doc)
    print(os.getenv("AMEND_DIR"))
    -- logging.temp('doc', doc)
    -- return { blocks = {}, meta = {}}
end
