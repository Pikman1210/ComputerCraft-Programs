---@diagnostic disable: undefined-global, undefined-field
--local floor
local loadingDelay = 20
local unloadingDelay = 15

local ground = "top"
local function gotoSurface()
    redstone.setOutput(ground, true)
    os.sleep(1)
    redstone.setOutput(ground, false)
    os.sleep(unloadingDelay)
end

local processing = "right"
local function gotoProcessing()
    redstone.setOutput(processing, true)
    os.sleep(1)
    redstone.setOutput(processing, false)
    os.sleep(loadingDelay)
end

local iron = "back"
local function gotoIron()
    redstone.setOutput(iron, true)
    os.sleep(1)
    redstone.setOutput(iron, false)
    os.sleep(loadingDelay)
end

local gold = "left"
local function gotoGold()
    redstone.setOutput(gold, true)
    os.sleep(1)
    redstone.setOutput(gold, false)
    os.sleep(loadingDelay)
end

local copper = "bottom"
local function gotoCopper()
    redstone.setOutput(copper, true)
    os.sleep(1)
    redstone.setOutput(copper, false)
    os.sleep(loadingDelay)
end

local zinc = "front"
local function gotoZinc()
    redstone.setOutput(zinc, true)
    os.sleep(1)
    redstone.setOutput(zinc, false)
    os.sleep(loadingDelay)
end

print("Starting at ground (G)")
print("Going to processing to clear items")
gotoProcessing()

while (true) do
    print("Going to iron")
    gotoIron()
    print("Dumping iron")
    gotoProcessing()
    print("Going to gold")
    gotoGold()
    print("Dumping gold")
    gotoProcessing()
    print("Going to copper")
    gotoCopper()
    print("Dumping copper")
    gotoProcessing()
    print("Going to zinc")
    gotoZinc()
    print("Dumping zinc")
    gotoProcessing()
    print("All transports complete, collecting items")
    gotoProcessing()
    print("Items collected, returning to surface")
    gotoSurface()
end