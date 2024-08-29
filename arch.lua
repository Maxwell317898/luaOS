local usrnm = "admin" -- put in username. defult "admin"
local pass = "admin" -- put in password. defult "admin"

local authed = false
local ram = {}


local cmdnam = {
    "list",
    "reg",
}

-- ANSI escape codes for colors
local colors = {
    reset = "\27[0m",
    red = "\27[31m",
    green = "\27[32m",
    yellow = "\27[33m",
    blue = "\27[34m",
    magenta = "\27[35m",
    cyan = "\27[36m",
    white = "\27[37m",
    black_bg = "\27[40m",
    red_bg = "\27[41m",
    green_bg = "\27[42m",
    yellow_bg = "\27[43m",
    blue_bg = "\27[44m",
    magenta_bg = "\27[45m",
    cyan_bg = "\27[46m",
    white_bg = "\27[47m",
}

function list()
    os.execute("cls")
    print("here are all commands:")
    for _,cmdname in ipairs(cmdnam) do
        print(cmdname)
    end
    readcommand()
end

function reg() -- depracticating. to meny bugs that i cant fix
    if ram.regreex ~= true then -- check not reexecute
    os.execute("cls")
    end
    print(colors.white_bg.. "You have entered Reg editor/reader to EXIT use / exit , for more help on how to use reg edit/read just run / reghelp".. colors.reset)
    io.write("@/ ") ram.reginput = io.read()
    if ram.reginput == "ramdump" then
        print("running dump:")
        for i, cont in ipairs(ram) do
            print(i.. ", ".. cont)
        end        
        print(colors.green_bg.. "done, sending you to main command line".. colors.reset)
    elseif ram.reginput == "help" then
        print("BEFORE YOU USE REG EDIT/READ: reg editing can damage this system not your real one but this instance, you can also use this to changesome settings")
        print("commands: regdump : lists the whole ram")
        ram.regreex = true
        reg()
    elseif ram.reginput == "exit" then
        print("sending you to main command line")
        readcommand()
    end
end

local cmdcom = {
    list,
    reg,
}

function readcommand()
    print("enter a command here, to see commands just run  list")
    io.write("> ") ram.cmdinput = io.read()
    for i,cmd in ipairs(cmdnam) do
        if ram.cmdinput == cmd then
            cmdcom[i]()
        end
    end
end

function auth() -- password and login
    print(colors.blue.. "authenticating".. colors.reset)
    if ram.authretry ~= true then -- only clear when fisrt try so thay can see "incorrect password"
    os.execute("cls") -- win only arch 3 only has support for windows
    end
    print(colors.white_bg.. "enter the password for: ".. usrnm.. colors.reset)
    ram.passinput = io.read()
    if ram.passinput == pass then
        print("correct password sending you to desktop...")
        authed = true
        list()
    else
        print(colors.red_bg.. "incorrect password.. you will be sent back to login".. colors.reset)
        ram.authretry = true
        auth()
    end
end

auth()