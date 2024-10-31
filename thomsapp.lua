print("what thing do you want from the list:")
print("binary")
local read = io.read()
function sleep(n)
    if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end

function binary()
    print("how much (you have 5 seconds to type)")
    sleep(5)
    local howmuch = io.read()
    for i = 1, howmuch do
        io.write(math.random(0,1))
    end
    print(" here is ur binary")
end

if read == "binary" then
    binary()
end