local max = {}--[[
maxapp support can be used by other apps 
made by maxwell317898
apps using these the MAXAPP policy(s) must abide by a few rules
list is on the github
]]
function max.randombin()
    print("how long u want binary for NO LETTERS")
    local inp = io.read()
    for i = 1, inp do
        io.write(math.random(0,1))
    end
    io.write("\n")
    readtorunapp()
end

function max.appsupport(cachdata) -- put data in the cachdata field and it should return its name
    local folder = "maxappsfold/"
    
    local fileName = folder .. tostring(math.random(1, 999999)) .. ".txt"
    
    local file = io.open(fileName, "w")
    
    if file then
        file:write(cachdata)
        file:close()
        
        return fileName
    else
        print("Error: Could not open file.")
        return nil
    end
end

function max.appread(filnum)
    local file = io.open(filnum, "r")
    if file then
        local data = file:read("*a") 
        file:close()
        return data
    else
        warn("maxapp: could not open file (check the file name)")
        return false
    end
end

function max.sudoappsuptestinteractive()
    print("what data do you want to store no multi line stuff")
    io.write("!~!>") local input = io.read()
    if input ~= "" then
        print("remember this file name it is your savefile maby even copy it   ".. max.appsupport(input))
    end
    print("type in the number (no .txt or maxappsfold/) of a savefile you want to read:")
    io.write("! ") input = io.read()
    local data = max.appread("maxappsfold/".. input.. ".txt")
    if data then
        print("here is the data:")
        print(data)
        print("sending you back into archline")
    else
        print("Error: Could not read from the file.")
    end
    readtorunapp()
end

local SFIRreapeat = false
function max.sudoreadfileinteractive() 
    if SFIRreapeat == false then
        print("SIFR you have entered sudo interactve file reader mode (SIFR) to exit run ? for help run ??? to read a file in the cach pool type its number")
    else
        print("SIFR for help run ??? not ? (exit)")
    end
    io.write("!=!>") local input = tonumber(io.read())
    if type(input) == "number" then
        print("data:")
        print(max.appread("maxappsfold/".. input.. ".txt"))
        SFIRreapeat = true
        max.sudoreadfileinteractive()
    elseif input == nil then
        print("SIFR command prompt for other commands: ? exit and ??? for help")
        input = io.read()
        if input == "?" then
            readtorunapp()
        elseif input == "???" then
            print("SIFR Sudo Interactive File Reader part of the MAXAPP policy by maxwell317898 on github you will be sent back to the sifr to exit come back here and run ?")
            sleep(1)
            max.sudoreadfileinteractive()
        else

        end
    else
        os.execute("cls")
        SFIRreapeat = true
        print("SIFR only use numbers try again")
        max.sudoreadfileinteractive()
    end
end

return max