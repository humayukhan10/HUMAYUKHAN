import numpy as np
lst=[[1,2,3],[11,12,13],[21,22,23],[41,42,43]]
arr=np.array(lst)

sum=np.sum(arr)
min=np.min(arr)
max=np.max(arr)
med=np.median(arr)
std=np.std(arr)
vr=np.var(arr)


print("sum",sum)
print("min",min)
print("max",max)
print("median",med)
print("std",std)
print("variance",vr)



