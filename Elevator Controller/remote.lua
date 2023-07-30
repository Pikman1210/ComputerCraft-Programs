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
    if floor == 1 then
        rednet.broadcast("Elevator1")
        rednet.close("back")
    elseif floor == 2 then
        rednet.broadcast("Elevator2")
        rednet.close("back")
    elseif floor == 3 then
        rednet.broadcast("Elevator3")
        rednet.close("back")
    elseif floor == 4 then
        rednet.broadcast("Elevator4")
        rednet.close("back")
    elseif floor == 5 then
        rednet.broadcast("Elevator5")
        rednet.close("back")
    elseif floor == 6 then
        rednet.broadcast("Elevator6")
        rednet.close("back")
    elseif floor == 7 then
        rednet.broadcast("Elevator7")
        rednet.close("back")
    elseif floor == 8 then
        rednet.broadcast("Elevator8")
        rednet.close("back")
    elseif floor == 9 then
        rednet.broadcast("Elevator9")
        rednet.close("back")
    elseif floor == 10 then
        rednet.broadcast("Elevator10")
        rednet.close("back")
    elseif floor == 11 then
        rednet.broadcast("Elevator11")
        rednet.close("back")
    elseif floor == 12 then
        rednet.broadcast("Elevator12")
        rednet.close("back")
    elseif floor == 13 then
        rednet.broadcast("Elevator13")
        rednet.close("back")
    elseif floor == 14 then
        rednet.broadcast("Elevator14")
        rednet.close("back")
    elseif floor == 15 then
        rednet.broadcast("Elevator15")
        rednet.close("back")
    elseif floor == 16 then
        rednet.broadcast("Elevator16")
        rednet.close("back")
    else
        print("Invalid Floor")
    end

    if floor < 17 then
        print("Going to ", floor)
    end
end

local function help()
    print("Usage:")
    print("elevator call (floor #)")
    print("elevator send (floor #)")
end

if arg[1] == nil then
    print("Use \"elevator help\" for usage")
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
else
    help()
end