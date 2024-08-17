local username = "admin"
local password = "admin"


print("enter ur password for ".. username)
local input = io.read()
if input == password then
    print("You are human")
elseif input ~= password then
    print("You are a STUPID thing. You mean NOTHING. You should kill yourself NOW.")
end