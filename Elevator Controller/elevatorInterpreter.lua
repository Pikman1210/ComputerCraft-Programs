local argument1 = arg[1]

--Checks if something is actually a number (yippe)
local function checknumber(num)
    if type(num) == "number" then
    	return true
    else
    	return false
    end
end

local function interpret(floor)
    print(floor)
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
    local number = tonumber(argument1)
    if checknumber(number) == true then
        interpret(number)
    else
        help()
    end
elseif arg[1] == "toggle" then
    print("toggle elevator")
end