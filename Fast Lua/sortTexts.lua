
function string:split( line )
  local result = { }
  for token in string.gmatch(line , "[^%s]+") do -- PATTERN MATCHING CON STRING
     table.insert(result, token)
  end
  return result
end


function sortFile(filename)
    print("----------------------------")
    print("Sorting : ", filename)

    local start_time = os.clock()

    local file = io.open(filename, "r") 

    local line = file:read("*a")

    local words = line:split( line )

    table.sort(words)

    -- Sort file

    sorted_name = "sorted_" .. filename

    output_file = io.open(sorted_name, "w")

    output_file:write( table.concat( words, "\n" ) )

    file:close()

    output_file:close()

    end_time = os.clock()

    print( "Time Elapsed : ", end_time - start_time )
end

sortFile("bible.txt")
