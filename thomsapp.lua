print("what thing do you want:")
local read = io.read()

function poopy()
    for i = 1, 100 do
        print(math.random(1,100))
    end
end

if read == "poopy" then
    poopy()
end