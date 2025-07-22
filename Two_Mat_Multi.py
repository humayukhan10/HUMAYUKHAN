import  numpy as np

row=int(input("Enter A Row "))
col=int(input("Enter A Col "))

mat=[]
print(f"You entered {row * col} elements")

for i in range(row * col):
    elem=int(input(f"Enter a element {i} = "))
    mat.append(elem)
    
mat=np.array(mat).reshape(row,col) 
print(mat)   
print("________________________________________")
print("Enter A Second Matrix ")
row1=int(input("Enter A Row "))
col1=int(input("Enter A Col "))

mats=[]
print(f"You entered {row1 * col1} elements")

for i in range(row1 * col1):
    elems=int(input(f"Enter a element {i} = "))
    mats.append(elems)    
    
mat2=np.array(mats).reshape(row1,col1)
print(mat2)
print("________________________________________")

matmul=np.dot(mat, mat2)
print("Matrix Multplication")
print(matmul)





