import numpy as np


x=[3,4,5,6,7]
d=np.array(x)
b=np.zeros((2,3))
print(type(d))
print(b)
c=np.ones((3,))
print(c)
m1t=d.T
print(m1t)


d=np.arange(0,10,2)
print(d)
sh=np.shape(d)
print(sh)
e=np.random.rand(2,2)
print(e)
print(np.size(e))
print(np.var(e))
num=np.random.randint(1,100,(3,3))
print(num)







