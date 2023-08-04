while (true) do
    while turtle.detect() do
        turtle.dig()
        print("Digging the block")
        turtle.up()
        print("Moving up")
       end
       while not turtle.detect() and not turtle.detectDown() do
        turtle.down()
        print("Moving down")
       end
end