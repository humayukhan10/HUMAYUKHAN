import  numpy as np

row=int(input("Enter A Row "))
col=int(input("Enter A Col "))

mat=[]
print(f"You entered {row * col} elements")

for i in range(row * col):
    elem=int(input(f"Enter a element {i} = "))
    mat.append(elem)
    
    
array=np.array(mat).reshape(row,col)

print(array)
