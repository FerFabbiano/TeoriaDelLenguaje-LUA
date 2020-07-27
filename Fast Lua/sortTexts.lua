function compare(a,b)
    return a[1] < b[1]
end


function string:split(delimiter)
  local result = { }
  local from  = 1
  local delim_from, delim_to = string.find( self, delimiter, from  )
  while delim_from do
    table.insert( result, string.sub( self, from , delim_from-1 ) )
    from  = delim_to + 1
    delim_from, delim_to = string.find( self, delimiter, from  )
  end
  table.insert( result, string.sub( self, from  ) )
  return result
end

function sortFile(filename)
    print("----------------------------")
    print("Sorting : ", filename)

    local start_time = os.clock()

    local file = io.open(filename, "r")

    local words = {}
    local word_freq_table = {}
    local words_freq = {}
    local word_count = 0

    local line = file:read("*line")

    while line ~= nil do
    	local t = line:split(" ")
    	word_count = word_count + #t
    	for v, w in pairs(t) do
    		table.insert( words, w )
            word_freq_table[w] = word_freq_table[w] or 0
            word_freq_table[w] = word_freq_table[w] + 1
    	end
      	line = file:read("*line")
    end

    table.sort(words)

    for k, v in pairs(word_freq_table) do
        table.insert( words_freq, {key = k, value = v} )
    end

    table.sort(words_freq, function(a,b) return a.value < b.value end)

    words_freq_namefile = "WordsFreq_" .. filename
    words_file = io.open(words_freq_namefile, "w")

    for k,v in pairs(words_freq) do
        words_file:write( v.value, " " , v.key, "\n" )
    end

    sorted_name = "Sorted_" .. filename
    output_file = io.open(sorted_name, "w")

    for i, l in ipairs(words) do
    	output_file:write( l, "\n" )
    end

    print( "Word counter : ", word_count )

    file:close()
    output_file:close()
    words_file:close()
    end_time = os.clock()

    print( "Elapsed time : ", end_time - start_time )
end

sortFile("donquijote.txt")
sortFile("bible.txt")
