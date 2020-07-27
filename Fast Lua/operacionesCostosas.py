import math
import time

t = {}

def operacionCostosa(num):
	for i in range( 1, 20000001 ):
		num = math.floor(num * 0.9 - i)
	for i in range(1, 10001):
		num = num + i + 1
	return num



def time_action( t ,num ):
    print( "--------------------------" )
    secs = time.time()

    value = t.get(num)

    if value is None:
        value = operacionCostosa(num)
        t[num] = value


    print( "Num : " + str(num) + " value : " + str(value) )
    print( "Time Elapsed : " + str(time.time() - secs) )


time_action( t, 1 )
time_action( t, 2 )
time_action( t, 3 )
time_action( t, 1 )
time_action( t, 2 )
time_action( t, 3 )
