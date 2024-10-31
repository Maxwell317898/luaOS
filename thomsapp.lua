print("what thing do you want from the list:")
print("binary")
local read = io.read()

function binary()
    for i = 1, 100 do
        io.write(math.random(0,1))
    end
    print(" here is ur binary")
end

if read == "binary" then
    binary()
end