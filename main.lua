local usrname = "admin"
local passowrd = "admin"


print("enter ur password for".. usrname)
local input = io.read()
if input == passowrd then
    print("u human")
elseif input ~= passowrd then
    print("u are die er")
end