local thomasapp = {}

function sleep(n)
    if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end

function thomasapp.main()
    for i = 1, 100 do
        print("a")
        sleep(0.01)
    end
    readtorunapp()
end

return thomasapp