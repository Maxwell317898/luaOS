local username = "admin"
local password = "admin"
local state = true

local apps = {
    "ping"
}

print("enter ur password for ".. username)
local input = io.read()
if input == password then
    print("You are human")
elseif input ~= password then
    print("You are a STUPID thing. You mean NOTHING. You should kill yourself NOW.")
end

function ping()
    print("poong")
    readtorunapp()
end

function readtorunapp()
    io.write(">")
    input = io.read()
    if input == "ping" then
        ping()
    elseif input == "list" then
        listapps()
    else
        os.execute("cls")
        print("you are not typing like a human try again")
        readtorunapp()
    end
end

function listapps()
    print("listing your apps and such")
    for count = 1, 1 do
        print(apps[1])
    end
    print("to runn and app just type its name")
    readtorunapp()
end




os.execute("cls")
listapps()


