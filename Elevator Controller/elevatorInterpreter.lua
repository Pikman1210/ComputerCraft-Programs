---@diagnostic disable: undefined-global

rednet.open("top")
while (true) do

    local senderId, message, protocol = rednet.receive()
    if message == "ElevationSection1" then
        redstone.setOutput("right", true)
        sleep(1)
        redstone.setOutput("right", false)
    elseif message == "ElevationSection2" then
        redstone.setOutput("back", true)
        sleep(1)
        redstone.setOutput("back", false)
    elseif message == "ElevationSection3" then
        redstone.setOutput("left", true)
        sleep(1)
        redstone.setOutput("left", false)
    elseif message == "ElevationSection4" then
        redstone.setOutput("front", true)
        sleep(1)
        redstone.setOutput("front", false)
    end

end