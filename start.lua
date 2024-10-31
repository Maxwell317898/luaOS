local login = "1234"
local startinfo = {}

function linuxorwin()
    print("are you running windows or linux (UNIX) based machine")
end

function auth()
    print("enter the pin for this device:   (defult is 1234 !make sure you change this in settings! )")
    startinfo.pininput = io.read()
    if startinfo.pininput == login then
        os.execute("clear")
        print("Authenticated to enter pc enviroment just press enter afew times")
    end
end
auth()

