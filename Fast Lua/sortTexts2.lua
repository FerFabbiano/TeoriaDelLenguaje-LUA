
function string:split( line )
  local result = { }
  val = 0
  for token in string.gmatch(line , "[^%s]+") do
     result[val] = token
     val = val + 1
  end
  return result
end


function sortFile(filename)
    print("----------------------------")
    print("Sorting : ", filename)

    local start_time = os.clock()

    local file = io.open(filename, "r")

    local BUFSIZE = 2^13

    local line = file:read(BUFSIZE,"*l")

    local words = {}

    while line ~= nil do

        local t = line:split( line )

        for v, w in pairs(t) do
            table.insert( words, w )
        end

        line = file:read(BUFSIZE,"*l")
    end

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
