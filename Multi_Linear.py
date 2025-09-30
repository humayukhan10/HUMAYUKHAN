from matplotlib import pyplot as plt
import numpy as np
import pandas as pd
from scipy import stats
from sklearn.linear_model import LinearRegression



df = pd.read_csv("reg2.csv")
df.columns = df.columns.str.strip()  
df.columns
df.corr()

print(df)
df1 = df[['Years of Experience','Education Level', 'Number of Certifications', 'Hobby Score', 'Salary']]
df1.corr()
x = df1[['Years of Experience', 'Education Level', 'Number of Certifications', 'Hobby Score']]
Y = df1['Salary']

print(df1.shape)
print(x.shape)
print(Y.shape)
multlm = LinearRegression()
multlm.fit(x,Y)
b = multlm.coef_
b0 = multlm.intercept_
print(b)
d = np.array([[30,20,12,3]])
p = multlm.predict(d)
print(p)
plt.scatter(x["Years of Experience"],Y)
plt.grid()
plt.xlabel("x")
plt.ylabel("Y")
plt.title("Y vs. x ")

p1 = b0 + np.dot(b,d.ravel())
print(p1)
















