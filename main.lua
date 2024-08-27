-- VIS-ARCH the visual version of ARCH-LINE by maxwell3178
local maxapp = require("maxapp")


function love.load()
	love.window.setMode(800, 600, {fullscreen = true})
end

function auth()
    if maxapp.file_exists("sysmdata/cred/dt") == false then
        function love.draw()
            love.graphics.setColor(0.4, 0.4, 0.4)
            love.graphics.rectangle("fill", 500, 500, 350, 50) -- input riegon: X350 Y50 -- 

            love.graphics.setColor(1, 1, 1)
            love.graphics.print("", 500 + 5, 500 + 15)
        end
    end
end



auth()