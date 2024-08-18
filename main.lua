local username = "admin"
local password = "admin"
local maxapp = require("maxapps")
local thomasapp = require("thomasapp")
local sudomode = false




print("enter ur password for ".. username) -- auth
local input = io.read()
if input == password then
    print("You are human")
elseif input ~= password then
    print("You are a STUPID thing. You mean NOTHING. You should kill yourself NOW.")
end

function ping() -- sudo app function 
    print("poong")
    readtorunapp()
end

local sudoapps = { -- sudoapps sudo cmdline needed
    "ping",
}
local sudofuncs = {
    ping,
}
local apps = { -- user apps
    "list",
    "thomasapp",
    "thomasmore",
    "yes",
    "no",
    "thomastest",
    "binerygen",
}

function readtorunapp() -- read for an app and run
    io.write(">")
    local input = io.read()
    if input == "sudo" then
        if sudomode == false then
            sudomode = true
        else
            sudomode = false
        end
        readtorunapp()
    end
    if sudomode == false then
        for index, value in ipairs(apps) do
            if value == input then
                apps.index()
            end
        end
    else
        for i, v in ipairs(sudoapps) do
            if v == input then
                sudofuncs.i()
            end
        end
    end
    print("write like a human")
    readtorunapp()
end

function listapps() -- list app function played on start also called with list
    os.execute("cls")
    print("listing your apps and such")
    for count = 1, 6 do
        print(apps[count])
    end
    print("to runn and app just type its name")
    readtorunapp()
end


listapps() -- defult intro to apps