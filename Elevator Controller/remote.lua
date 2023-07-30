---@diagnostic disable: undefined-global, undefined-field
local argument1 = arg[1]
local argument2 = arg[2]

rednet.open("back")

--Checks if something is actually a number (yippe)
local function checknumber(num)
    if type(num) == "number" then
    	return true
    else
    	return false
    end
end

local function interpret(floor)
    if floor/4 <= 1 then
        rednet.broadcast("ElevationSection1")
        rednet.close("back")
    elseif floor/4 <= 2 then
        rednet.broadcast("ElevationSection2")
        rednet.close("back")
    elseif floor/4 <= 3 then
        rednet.broadcast("ElevationSection3")
        rednet.close("back")
    elseif floor/4 <= 4 then
        rednet.broadcast("ElevationSection4")
        rednet.close("back")
    else
        print("Invalid Floor")
    end
end

local function help()
    print("Usage:")
    print("null")
end

if arg[1] == nil then
    print("Use \"elevatorInterpreter help\" for usage")
elseif arg[1] == "help" then
    help()
elseif arg[1] == "call" or arg[1] == "send" then
    local number = tonumber(argument2)
    if checknumber(number) == true then
        interpret(number)
    else
        help()
    end
elseif arg[1] == "toggle" then
    print("toggle elevator")
end