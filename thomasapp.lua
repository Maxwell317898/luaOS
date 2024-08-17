local thomasapp = {}

function sleep(n)
    if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end

function thomasapp.main()
    for i = 1, 100 do
        local baba = math.random(0.000,100.000)
        print(baba)
        sleep(0.01)
    end
    readtorunapp()
end

return thomasapp