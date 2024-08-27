-- ARCH line the OS in terminal & lv2d
local windows = true -- set to false for UNIX if you dont do this it can couse alot of problems
local maxapp = require("maxapp")

function auth()
if maxapp.file_exists("sysmdata/cred/dt") == false then -- check no creds still exist
    print("please set a username: \n") -- ask username & local it
    io.write(">> ") local username = io.read()
    print("set a pasword for ".. username) -- ask password & local it
    io.write("!! ") local password = io.read()
    if windows == true then -- clear/cls depends on win or not
        os.execute("cls")
    else
        os.execute("clear")
    end
    print("type in the password you set again to confirm:") -- confirm password
    io.write("-- ") if io.read() ~= password then print("Incorrect password. Data not saved feel free to restart.") os.exit(0) end  -- confirm func
    print("username set, saving.") -- save data in sysmdata useing maxapp
    local usrmfile = io.open("sysmdata/cred/dt", "w")
    maxapp.modify_line_in_file("sysmdata/cred/dt", 1, username)
    maxapp.modify_line_in_file("sysmdata/cred/dt", 2, password)
    auth()
else
    print("loading your desktop")
end
end

function desktopdisp()
    
end