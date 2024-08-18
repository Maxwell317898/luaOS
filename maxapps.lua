local max = {}--[[
maxapp support can be used by other apps 
made by maxwell317898

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
    if filnum then
        return filnum:read()
    else
        warn("maxapp: incorrect filnum (1st peram)")
        return false
    end
end

function max.sudoappsuptestinteractive()
    print("what data do you want to store no multi line stuff")
    io.write("! ") local input = io.read()
    print("remember this file name it is your savefile maby even copy it   ".. max.appsupport(input))
    print("type in the name of a savefile you want to read:")
    io.write("! ") input = io.read()
    print("here is the data:")
    print(max.appread(input))
    readtorunapp()
end

return max