local username = "admin"
local password = "admin"
local maxapp = require("maxapps")
local thomasapp = require("thomasapp")

local apps = {
    "ping",
    "list",
    "thomasapp",
    "thomasmore",
    "yes",
    "no",
    "thomastest",
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
    elseif input == "thomasapp" then
        thomasapp.main()
    elseif input == "thomasmore" then
        thomasapp.evenmore()
    elseif input == "yes" then
        thomasapp.yes()
    elseif input == "no" then
        thomasapp.no()
    elseif input == "thomastest" then
        thomasapp.test()
    else
        os.execute("cls")
        print("you are not typing like a human try again")
        readtorunapp()
    end
end

function listapps()
    os.execute("cls")
    print("listing your apps and such")
    for count = 1, 6 do
        print(apps[count])
    end
    print("to runn and app just type its name")
    readtorunapp()
end





listapps() -- defult intro to apps