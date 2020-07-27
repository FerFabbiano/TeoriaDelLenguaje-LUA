local function operacionCostosa(num)
	for i = 1, 20000000 do
		num = math.floor(num * 0.9 - i) -- redondeo.
	end
	for i = 1, 10000 do
		num = num + i + 1
	end
	return num
end

local metatable = {
	__index = function (object, key)
		local num = operacionCostosa(key)
		object[key] = num
		return num
	end
}

local t = setmetatable({}, metatable)

function time_action(t,num)
	print( "--------------------------" )
	time = os.clock()
	print( "Num : " .. num, " value : " .. t[num] )
	print( "Time Elapsed : ", os.clock() - time )
end

time_action( t, 1 )
time_action( t, 2 )
time_action( t, 3 )
time_action( t, 1 )
time_action( t, 1 )
time_action( t, 3 )
time_action( t, 2 )
