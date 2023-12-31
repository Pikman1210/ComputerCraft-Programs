---@diagnostic disable: undefined-global, lowercase-global
function counter()
    local i = 0
    return function() i = i + 1 return i end
   end
   function modStr(num)
    if num < 10 then
      return "0" .. num
    else
      return num
    end
   end
   while true do
    if turtle.detect() then
     turtle.dig()
     term.clear()
     term.setCursorPos(1,1)
     local total = 0
     for i=1,16,1 do
      total = total + turtle.getItemCount(i)
     end
     for i=1,16,1 do
      print("Row " .. i .. ": " .. turtle.getItemCount(i) .. " (" .. math.floor((turtle.getItemCount(i)/total)*100) .. "%)")
     end
     print("Total: " .. total)
     print("-----------------")
     local iterator = counter()
     print(" ___ ___ ___ ")
     print("|" .. modStr(turtle.getItemCount(iterator())) .. " |" .. modStr(turtle.getItemCount(iterator())) .. " |" .. modStr(turtle.getItemCount(iterator())) .. " |")
     print("|___|___|___|")
     print("|" .. modStr(turtle.getItemCount(iterator())) .. " |" .. modStr(turtle.getItemCount(iterator())) .. " |" .. modStr(turtle.getItemCount(iterator())) .. " |")
     print("|---|---|---|")
     print("|" .. modStr(turtle.getItemCount(iterator())) .. " |" .. modStr(turtle.getItemCount(iterator())) .. " |" .. modStr(turtle.getItemCount(iterator())) .. " |")
     print("|___|___|___|")
     print(" ")
     print("-----------------")
     print("Cobble Farmer")
    end
    totalcount = turtle.getItemCount(16)
    if totalcount == 64 then
     term.clear()
     term.setCursorPos(1,1)
     print("Dropping Stacks")
     print("...Please wait.")
     sleep(1)
     for i=1,16 do
      turtle.select(i)
      turtle.drop()
     end
     turtle.select(1)
    end
   end