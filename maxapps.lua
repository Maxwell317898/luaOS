local max = {}

function max.randombin()
    print("how long u want binary for NO LETTERS")
    local inp = io.read()
    for i = 1, inp do
        io.write(math.random(0,1))
    end
    readtorunapp()
end

return max