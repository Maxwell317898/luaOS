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
    print("how much gibberish do you require (put in a number)")
    local pooing = io.read()
    print("generating text")
    local popo = {"a", "b", "c", "d", "e", "😃"}
    for i = 1, pooing do
        io.write(popo[math.random(1, 6)])
    end
    io.write("\n")
    readtorunapp()
end

return thomasapp 