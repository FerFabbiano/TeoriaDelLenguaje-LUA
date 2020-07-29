import time


def sortText():

    secs = time.time()

    file = open("bible.txt", "r")

    words = file.read().split()

    words.sort()

    output = open("pythonSort.txt", "w")

    output.write("\n".join( map(str, words) ) )

    print( "Time Elapsed : " + str(time.time() - secs) )

    output.close()
    file.close()



sortText()
