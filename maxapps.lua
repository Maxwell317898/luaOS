local max = {}--[[
maxapp libs for use on applications using arch-line lua. Make sure your apps (if you want it to be inculded by defult) complie with the maxapp policys
by maxwell3178]]

function codestore(data, vertoplaceID) -- places data in file. if vertoplaceID is nothing it will return the id needed to open it again use vertoplaceID to change a ver to the ID
    local id = math.random(1, 99999999)
    io.open("system/saves/".. id, "w")
    io.write(data)
    if vertoplaceID == nil then
        return id
    else
        vertoplaceID = id -- should work with no error handeling....
    end
end



return max