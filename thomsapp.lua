print("what thing do you want from the list:")
print("poopy")
local read = io.read()

function binary()
    for i = 1, 100 do
        print(math.random(0,1))
    end
end

if read == "poopy" then
    binary()
end