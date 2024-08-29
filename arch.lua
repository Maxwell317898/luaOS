local usrnm = "admin" -- put in username. defult "admin"
local pass = "admin" -- put in password. defult "admin"

local authed = false
local ram = {}


local cmdnam = { -- name of commands
    "list",
    "sudomode",
}
local sudonam = {
    "sudolist",
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

function sudomode()
    if ram.sudomode ~= true then
        ram.sudomode = true
        print("you are now in sudomode. to list all sudo commands just run sudolist")
        readcommand()
    else
        ram.sudomode = false
        print("you have dissabled sudo-mode to list normal commands run list")
        readcommand()
    end
end

local cmdcom = {
    list,
    sudomode,
}

function sudolist()
    os.execute("cls")
    print("here are all the SUDO commands:")
    for _,cmdname in ipairs(sudonam) do
        print(cmdname)
    end
    readcommand()
end

local sudocom = {
    sudolist,
}

function readcommand()
if ram.sudomode ~= true then
    print("enter a command here, to see commands just run  list")
    io.write("> ") ram.cmdinput = io.read()
    for i,cmd in ipairs(cmdnam) do
        if ram.cmdinput == cmd then
            cmdcom[i]()
        end
    end
else
    print("SUDO: enter a commands here, to list all SUDO commands run   sudolist")
    io.write(">> ") ram.sucmdinput = io.read()
    for i,cmd in ipairs(sudonam) do
        if ram.sucmdinput == cmd then
            sudocom[i]()
        end
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