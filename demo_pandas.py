import pandas as pd
df=pd.read_csv("E:\Sem5\Xus_Ai\prac\data.csv")
print(df)


data = {
    'Name': ['Ad', 'hk', 'sd'],
    'Age': [25, 30, 35],
    'Salary': [70000, 80000, 90000]
}

df = pd.DataFrame(data)
print(df)
