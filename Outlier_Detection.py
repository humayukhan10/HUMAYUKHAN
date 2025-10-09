# importing libraries   
import numpy as np 
import pandas as pd 
import seaborn as sns 
#importing datasets   
data_set= pd.read_csv('/content/drive/MyDrive/Colab Notebooks/Outlier.csv') 
#Extracting  Variable   
scores_data= data_set.iloc[:, :].values   
print(scores_data) 
#BoxPlot 
fig=sns.boxplot(data=scores_data).set(title="Box Plot of Scores") 
# Data Frame 
df_scores = pd.DataFrame(scores_data,columns=['score']) 
df_scores 
# Describe 
df_scores.describe() 
# Using the Interquartile Range (IQR=Q3-Q1) 
Q3=34 
Q1=1.75 
IQR = Q3-Q1 
lower_limit = Q1 - 1.5*IQR 
upper_limit = Q3 + 1.5*IQR 
print(upper_limit) 
print(lower_limit) 
# Filtered 
df_scores_filtered = df_scores[(df_scores['score']>lower_limit) & (df_scores['score']<upper_limit)] 
print(df_scores) 
print(df_scores_filtered)
