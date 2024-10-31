
local function poopy()
    for i = 1, 100 do
        print(math.random(1,100))
    end
end

local read = io.read
if read == "poopy" then
    poopy()
end