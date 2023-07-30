---@diagnostic disable: undefined-global

rednet.open("bottom")

while (true) do
    local senderId, message, protocol = rednet.receive()
    if message == "Elevator1" then
        print("ig")
        redstone.setOutput("right", true)
        sleep(1)
        redstone.setOutput("right", false)
    elseif message == "Elevator2" then
        redstone.setOutput("back", true)
        sleep(1)
        redstone.setOutput("back", false)
    elseif message == "Elevator3" then
        redstone.setOutput("front", true)
        sleep(1)
        redstone.setOutput("front", false)
    elseif message == "Elevator4" then
        redstone.setOutput("top", true)
        sleep(1)
        redstone.setOutput("top", false)
    end
end