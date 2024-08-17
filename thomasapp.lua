local thomasapp = {}

function sleep(n)
    if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end

function thomasapp.main()
    for i = 1, 100 do
        local baba = math.random(0,100)
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

function thomasapp.yes()
    print("say something and i will approve of it")
    local bliblo = io.read()
    print("yes ".. bliblo)
    print("you have been agreed with")
    readtorunapp()
end

function thomasapp.no()
    print("say something and i will disapprove of it")
    local bliblo = io.read()
    print("no ".. bliblo)
    print("you have been disagreed with")
    readtorunapp()
end

function thomasapp.test()
    print("generating text")
    local popo = {"a", "b"}
    print(math.random(popo,#popo) .. math.random(popo,#popo) .. math.random(popo,#popo) .. math.random(popo,#popo) .. math.random(popo,#popo) .. math.random(popo,#popo))
    print("you have been disagreed with")
    readtorunapp()
end

return thomasapp