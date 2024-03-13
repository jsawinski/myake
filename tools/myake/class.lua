-- Distributed under the OSI-approved MIT License. See accompanying
-- file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

require 'myake.table'

local tcopy = table.copy
local tremove = table.remove
local tinsert = table.insert
local tcount = table.count

--[==[-@module myake.class Classes

While Lua supports object-oriented programming fundamentally through the concept of
meta-tables and meta-methods, it does not explicitly provide a [class concept](https://www.lua.org/pil/16.1.html). Hence,
several possible implementations arose and are in use (such as, for example, [Penlight](https://stevedonovan.github.io/Penlight/api/index.html)).

This implementation follows Lua's "each object defines its own behavior and has a shape 
of its own" [[PIL]](https://www.lua.org/pil/16.1.html), or in other words - admittedly, a reinvention of the wheel due to the
lack of features in other implementations.

]==]
local M = {}

--- Create a simple, enum-like lookup table.
--@param tbl Array of keys.
--
-- This function adds the array values as keys, so that
-- the values can be looked up as keys.
--
function lookup(tbl) 
    for i,k in ipairs(tbl) do
        tbl[k] = i
    end
   
    return tbl
end

---@internal Meta-table of a string.
--
-- This is needed is __isa__, because the global table string
-- and a string's meta-table are not necessarily identical.
local __string__ = getmetatable("")

---@internal Tag vor variables.
local __variables__ = {}
    
---@internal Tag for inheritance.
local __extends__ = {}

---@internal Meta-methods list.
local __metamethods__ = lookup {
    -- Lua's metamethods
    '__call',
    '__index', '__newindex',
    '__mode', '__metatable', '__tostring',
    '__len', '__pairs', '__ipairs',
    '__gc', '__name', '__close',
    
    '__unm', '__add', '__sub', '__mul', '__div', '__idiv', '__mod', '__pow', '__concat',
    '__band', '__bor', '__bxor', '__bnot', '__shl', '__shr',
    
    '__eq', '__lt', '__le',
    
    -- extras
    '__copy',
    '__init',
}

---@internal Namespace(s).
local __namespace__ = {}

--- Declare a namespace.
--@param name The namespace name (dot-separated identifiers).
--
-- This function can be used to create a module's table by name. Note, however,
-- that the resulting table is local.
-- 
-- Example:
-- @code
-- --[[ My Module ]]
-- local M = namespace 'my.module'
-- -- ...
-- return M
-- @endcode
--
function namespace(name)
    local ns = __namespace__
   
    name:gsub('[^.]+', function(item)
            assert(item:match("^[_a-zA-Z][_a-zA-Z0-9]*$"), "Namespaces may only consists of identifiers.")
            
            ns[item] = ns[item] or {}
            ns = ns[item]
        end
    )
    
    return ns
end
M.namespace = namespace

--[[- Singleton function stub.

This is a helper to create a table that behaves like a singleton
when copied using table.copy.

@see class, table.copy
]]
function __singleton__(self)
    return self
end
M.__singleton__ = __singleton__

-- The 'new' (or create) function.
local function __new__(decl, ...)
    local instance = tcopy(decl[__variables__])
    setmetatable(instance, decl)
    
    -- call init
    if decl.__init then
        return decl.__init(instance, ...) or instance
    end
    
    return instance
end

---@internal Class meta.
--
-- FIXME
--
local __class__ = {
    --- Get class name.
    __tostring = function(self) 
            return self.__name or tostring(self) 
        end,
    
    --- Equivalent of 'new'.
    __call = __new__,
    
    --- Type name.
    __name = 'class'
}

--- Check if @a value is a class.
function isclass(value)
    local mt = getmetatable(value)
    return mt == __class__
end
M.isclass = isclass

--- Check if @a value is an object.
function isobject(value)
    local mt = getmetatable(value)
    return isclass(mt) and mt
end
M.isobject = isobject

--- Get class declaration of an @a object.
function getclass(object)
    return isobject(object) and getmetatable(object)
end
M.getclass = getclass

--- Get the typename of a @a value.
--@param value The object.
--@return Name or type of the object.
-- 
-- This is an extension of Lua's @c type command, return the @a __name of an
-- object if provided.
function typename(value)
    local mt = getmetatable(value)
    
    return mt and mt.__name or type(value)
end
M.typename = typename

--[[- A 'void' value.
 
This value can be used as a placeholder in a class declaration.

@see class:has
]]
void = {
    __copy = function() end,
} 
M.void = void

--- Check if @a value is void.
function isvoid(value)
    return value == void
end

--[[- Declare class inheritance.

@see class
]]
function extends(t)
    setmetatable(t, __extends__)
    return t
end
M.extends = extends

--- Check if class has a variable.
--@param t The object (of a class).
--@param key The variable key.
--@param @c true if @a key is a variable in an object (or key in a table). 
--
function has(t, key)
    assert(type(t) == 'table', 'Expected an object or a table as first argument.')
    
    local cls = getclass(t)
    if cls then
        t = cls[__variables__]
    end
    
    return t[key] ~= nil
end
M.has = has

--[[- Check if @a value is or extends a type.
@param value The value.
@param T @or {T} Class or class name.

This function (or method) checks if @a value is exactly the type @a T (which can be
either a class, meta-table or a type name), or, if wrapped in curly braces, if the 
@a value is an object and it's class is or inherits from (or, is extended by, respectively) 
@a T.

]]
function isa(value, T)
    local mt = getmetatable(value)
    
    if T == string then
        -- special: isa(value, string) was called (see __string__ above)
        return mt == __string__
    elseif type(T) == 'string' then
        -- compare typename
        return (mt and mt.__name or type(value)) == T
    else
        assert(type(T) == 'table', "Type argument to isa() must be a class or a table.")
        local cls = getmetatable(T)
        
        if cls == __class__ then
            return mt == T
        else
            assert(#T == 1, "Expected a table with a single element.")
            
            T = T[1]
            
            if mt == T then
                return true
            end
            
            for _,ext in ipairs(mt[__extends__]) do
                if ext == T then
                    return true
                end
            end
        end
    end
    
    return false
end
M.isa = isa

--[[- Declare a class.
@return Class declaration.

Following standard practices in Lua class are generally defined local and
are of the form

    local decl = class ["class-name"] {
        <list of variables>,
        [meta-methods]
    }

    [declaration of class methods...]

The class definition must only contain variables to avoid mixing variables
and methods (this is due to the fact that functions are first-class values
in Lua, see also @c has). 

Note, that during instantiation, variables declared void will be assigned 
@c nil in the object (see standard method 'has' below).

Method declarations, except for meta-methods, follow the 'class' declaration.

##Meta-methods

In addition to Lua's meta-methods (or [meta-table events](http://lua-users.org/wiki/MetatableEvents), respectively), the following
additional meta-methods are used:

__init          The constructor.
__copy          Object copy constructor.

At the point of writing, mathematical and other meta-methods, namely

    __unm, __add, __sub, __mul, __div, __idiv, __mod, __pow,
    __band, __bor, __bxor, __bnot, __shl, __shr, __concat,

require extra care due to the fact, that even though function arguments are passed by value, 
certain types are internally handled as references (tables, functions, threads, and (full) 
userdata values, see the [reference manual](http://www.lua.org/manual/5.3/manual.html#2.1) for further information).

#Standard methods

has             Check if the object 'owns' a variable.
isa             Check if the object is certain type.

##Object instantiation

An object is created by calling the class declaration:

    local object = decl(<arguments>)

where the arguments are passed to the constructor method (__init) if it is defined.

The __init method may choose to return a differnt object, if required.

##Copy construction

The object copy constructor __copy by default creates a copy of the object (see also 
table.copy), note, however, that only declared variables are copied. 

To allow singleton behavior, the copy constructor can set to

    __copy = __singleton__

during class declaration.

If an alternate (ie. user-implemented) copy constructor is required, the method must ensure
assignement of the correct meta-table itself.

]]
function class(T)
    -- Declare class.
    local function declare(name, decl)        
        -- create class meta-table
        local variables = {}
        local extends = {}
        
        local mt = {
            [__variables__] = variables,
            [__extends__] = extends,
        }
        mt.__name = name or ('anonymous class '..tostring(decl):match("(0x.*)"))
        mt.__index = mt
        setmetatable(mt, __class__)
        
        -- default object copy
        mt.__copy = function(obj)
            local instance = {}
            
            -- copy variables (only)
            for k,v in pairs(obj) do
                if variables[k] then
                    instance[k] = v
                end
            end
            
            -- make object
            setmetatable(instance, mt)
            return instance
        end
        
        -- inherit
        local inherit
        for i,v in ipairs(decl) do 
            -- find element tagged with '__extends__' and remove it
            if getmetatable(v) == __extends__ then
                inherit = v
                tremove(decl, i)
                break
            end
        end
        
        if inherit then
            -- copy variables and methods (reverse order, except constructor and destructor)
            for ii = #inherit,1,-1 do
                local parent = inherit[ii]
                tcopy(parent[__variables__], variables)
                
                for k,fn in pairs(parent) do
                    if type(fn) == 'function' and k ~= '__init' and k ~= '__gc' then
                        mt[k] = fn
                    end
                end
            end
            
            -- remember extends (forward order)
            for _,ext in ipairs(inherit) do
                tinsert(extends, ext)
            end
        end
        
        -- copy variables (and meta-methods)
        for k,v in pairs(decl) do
            if not __metamethods__[k] then
                variables[k] = v
            else
                mt[k] = v
            end
        end
        
        -- set additional meta-methods
        mt.has = has
        mt.isa = isa
        
        return mt
    end

    local Ttype = type(T)
    if Ttype == 'table' then
        return declare(nil, T)
    elseif Ttype == 'string' then
        local clsname = T
        return function(clsdecl)
                assert(type(clsdecl) == 'table', 'Expected a table as second argument to class after name.')
                return declare(clsname, clsdecl)
            end
    else
        -- FIXME error one level up
        error("Expected a class declaration.")
    end
end

--[[- Cast an object to a different type.
@param obj The object to cast.
@param T The class to cast to.
@param ... Constructor arguments in case of an up-cast.

FIXME

]]
function cast(obj, T, ...)
    local mt = getmetatable(obj)
    assert(isclass(mt), 'Expected an object (first argument)')
    assert(isclass(T), 'Expected a class (second argument)')
    
    -- check if down- or up-cast
    local function findext(decl, extends)
        for _,ext in ipairs(extends) do
            if ext == decl then
                return decl
            end
        end
    end
    
    local down = findext(T, mt[__extends__])
    local up
    if not down then
        up = findext(mt, T[__extends__])
        if not up then
            error("Invalid cast (unrelated types).")
        end
    end
    
    -- cast
    setmetatable(obj, T)
    if up and T.__init then -- FIXME maybe a __cast meta-method?
        obj:__init(...)
    end
end

--- Declare an enumeration table.
--@param tbl Enumeration table.
--@return Enumeration declaration.
--
-- FIXME
--
function enum(tbl)
    local decl = {}
    
    local id = 0
    for _,key in ipairs(tbl) do
        local Tkey = type(key)
        
        if Tkey == 'table' then
            assert(tcount(key) == 1, 'Invalid enumeration assignment: expected a single key-value pair.')
            
            -- { ENUM = VALUE }
            for k,v in pairs(key) do
                decl[k] = v
                id = v
            end
            
            -- or { ENUM }
            for _,k in ipairs(key) do
                id = id + 1
                decl[k] = id
            end
        elseif Tkey == 'string' then
            assert(decl[key] == nil, 'Duplicate enumeration key entry.')
            
            -- { ENUM }
            id = id + 1
            decl[key] = id
        else
            error("Invalid item in enumeration.")
        end
        
        tinsert(decl, key)
    end
    
    return decl
end

