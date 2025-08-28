import pandas as pd

df=pd.read_csv("ad_19082025.csv")
print(df)

print(df.head())
print(df.tail())
print(df.info())


data={
      "name":['Ad','king'],
      "age":[1,2],
      "city":['Anand','AAU']
      
      }


df=pd.DataFrame(data)
print(df)

print(df.head())
