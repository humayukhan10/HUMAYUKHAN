tup=(1,4,9,25,36,49,64,81,100)
num =int (input (" SEARCH A NUMBER "))
indx=0
while indx < len(tup) :
    if(tup[indx] == num) :
        print("your elment at",indx)
    else:
        print("finding...")
        indx =indx +1
