local max = {}

function max.randombin()
    print("how long u want binary for NO LETTERS")
    local inp = io.read()
    for i = 1, inp do
        io.write(math.random(0,1))
    end
    io.write("\n")
    readtorunapp()
end

function max.appsupport(cachdata)
    cachdata = io.read()
    local folder = "maxappsfold/"
    
    local fileName = folder .. tostring(math.random(1, 999999)) .. ".txt"
    
    local file = io.open(fileName, "w")
    
    if file then
        file:write(cachdata)
        file:close()
        
        print(fileName)
        return fileName
    else
        print("Error: Could not open file.")
        return nil
    end
end



return max