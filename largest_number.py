#LARGST  NUMBER
num1=int (input(" ENTER A NUMBER  1:"))
num2=int (input(" ENTER A NUMBER  2:"))
num3=int (input(" ENTER A NUMBER  3:"))
if(num1 >= num2 and num1 >=num3):
    print(num1, "Is the largest number")
elif(num2 >= num1 and num2 >=num3):
    print(num2,"is the largest number")
else:
    print(num3,"Is the largest number")
