

function sleeplinux(n)
    os.execute("sleep " .. tonumber(n))
end

function sleepwindows(n)
    if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end