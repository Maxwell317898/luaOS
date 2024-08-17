local usrname = "admin"
local passowrd = "admin"


print("enter ur password for ".. usrname)
local input = io.read()
if input == passowrd then
    print("You are human")
elseif input ~= passowrd then
    print("You are a STUPID thing. You mean NOTHING. You should kill yourself NOW.")
end