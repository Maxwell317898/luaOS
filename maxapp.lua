local maxapp = {}


function maxapp.modify_line_in_file(filename, line_number, new_content)
    local lines = {}
    
    -- Step 1: Attempt to read all lines from the file, if it exists
    local file = io.open(filename, "r")
    if file then
        for line in file:lines() do
            table.insert(lines, line)
        end
        file:close()
    end
    
    -- Step 2: Modify the specific line, or add it if out of bounds
    if line_number <= #lines then
        lines[line_number] = new_content
    else
        -- Add empty lines if needed to reach the specified line number
        for i = #lines + 1, line_number - 1 do
            table.insert(lines, "")
        end
        lines[line_number] = new_content
    end

    -- Step 3: Write all lines back to the file
    file = io.open(filename, "w")
    for _, line in ipairs(lines) do
        file:write(line .. "\n")
    end
    file:close()
end

function maxapp.read_line_from_file(filename, line_number) -- reads from a line. thats it :()
    local line_content = nil
    local current_line = 1

    local file = io.open(filename, "r")
    if file then
        for line in file:lines() do
            if current_line == line_number then
                line_content = line
                break
            end
            current_line = current_line + 1
        end
        file:close()
    else
        print("file does not exist. or other issue :maxapp: 50")
    end

    return line_content
end

-- Function to check if a file exists
function maxapp.file_exists(filename)
    local file = io.open(filename, "r")
    if file then
        file:close()
        return true
    else
        return false
    end
end


return maxapp