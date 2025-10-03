import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.linear_model import LogisticRegression

df = pd.read_csv("house.csv")



X = df[['Income', 'Age', 'CreditScore']]
y = df['Purchased'] 

logModel = LogisticRegression()
logModel.fit(X,y)

yp = logModel.predict([[25000,22,500]])
print("Prediction",yp)

#white box approach


b1 = logModel.coef_
b0 = logModel.intercept_

print("Cofficient",b1)
print("intercept_",b0)


data=np.array([25000,22,500])
Yp =np.dot(data, b1.T)+ b0
print(Yp)



SYp = 1/(1+np.exp(-Yp))
print("Sigmoid=",SYp)


















