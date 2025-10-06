import os

print(os.getcwd())
os.chdir("e:/SEM_5/python/")
os.mkdir("AAU")

print(os.listdir())
os.remove("aau.txt")
os.rmdir("AAU")
os.chdir('..')



with open("AAU/aau.txt","a") as f1:
    f1.write("This is AAU file Demo")
   

with open("AAU/num.txt","w") as f1:
    
    num=int(input("Enter No:"))
    
    if num%2==0:
        f1.write("is even\n")
       
    else:
        f1.write("is odd\n")
    

with open("aau.txt") as f1:
    print(f1.read())
