local username = "admin"
local password = "admin"
local maxapp = require("maxapps")
local thomasapp = require("thomasapp")
local sudomode = false

print("Enter your password for " .. username) -- auth
local input = io.read()
if input == password then
    print("You are human")
else
    print("You are a STUPID thing. You mean NOTHING. You should kill yourself NOW.")
end

function ping() -- sudo app function 
    print("poong")
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
    "binarygen",
}

function listapps() -- list app function played on start also called with list
    os.execute("cls") -- or os.execute("clear") if on UNIX systems
    print("Listing your apps and such:")
    for _, app in ipairs(apps) do
        print(app)
    end
    print("To run an app, just type its name")
end

local appfuncs = {
    listapps,
    thomasapp.main,
    thomasapp.evenmore,
    thomasapp.yes,
    thomasapp.no,
    thomasapp.test,
    maxapp.randombin,
}



function readtorunapp() -- read for an app and run
    io.write(">")
    local input = io.read()

    if input == "sudo" then
        sudomode = not sudomode
        print("Sudo mode is now " .. (sudomode and "enabled" or "disabled"))
        return readtorunapp()
    end

    if sudomode then
        for index, value in ipairs(sudoapps) do
            if value == input then
                sudofuncs[index]()
                return readtorunapp()
            end
        end
    else
        for index, value in ipairs(apps) do
            if value == input then
                appfuncs[index]()  -- Execute the corresponding app function
                return readtorunapp()
            end
        end
    end

    print("Invalid input. Please try again.")
    return readtorunapp()
end

listapps() -- default intro to apps
readtorunapp()
