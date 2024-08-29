local sudo = {}
local maxapp = require(maxapps)

function sudo.sifr() -- in progress do not put in arch.lua
    print("wellcome to SIFR (sudo interactive file reader) this command is part of the SIF collection to write files just EXIT useing >/ exit to read just type in the save code")
    io.write(">/ ") local input = io.read()
    input = tostring(input)
    
end

return sudo