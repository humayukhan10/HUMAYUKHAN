from matplotlib import pyplot as plt
import numpy as np
from scipy import stats
from sklearn.linear_model import LinearRegression


x = np.array([[12],
 [18],
 [24],
 [30],
 [36],
 [42],
 [48]
 ])
print(x)

Y = np.array([5.3,
 5.7,
 6.5,
 7.2,
 8.2,
 8.7,
 8.4])
print(Y)


plt.scatter(x,Y)
plt.grid()
plt.xlabel("x")
plt.ylabel("Y")
plt.title("Y vs. x ")


x.ravel()


r, p = stats.pearsonr(x.ravel(), Y)
print(r)

model = LinearRegression()
model.fit(x,Y)

b1 = model.coef_
b0 = model.intercept_
model.predict([[28]])
yp = b0 + b1*28
print(yp)






