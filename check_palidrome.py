num1=input ("Enter A Number ")
num2=input ("Enter A Number ")
num3=input ("Enter A Number ")

list=[num1,num2,num3]
list_copy=list.copy()
list.reverse()

if(list == list_copy):
    print("This is Palindrome")
else:
     print("This is not palindrome")
