local thomasapp = {}

function sleep(n)
    if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end

function thomasapp.main()
    for i = 1, 100 do
        local baba = math.random(0.000,99.999)
        print(baba)
        sleep(0.01)
    end
    readtorunapp()
end

function thomasapp.evenmore()
    print("say something and i will say it twice")
    local bliblo = io.read()
    print(bliblo .. " " .. bliblo)
    readtorunapp()
end

return thomasapp