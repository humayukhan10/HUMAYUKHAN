import pandas as pd
from sklearn.preprocessing import LabelEncoder, StandardScaler, MinMaxScaler
from sklearn.model_selection import train_test_split

# Load the dataset
data = pd.read_csv('pipe.csv')

# Drop rows with missing values in non-critical columns (optional)
# data.dropna(inplace=True)  # Uncomment if you want to drop all rows with any missing values

# Fill missing values in 'Age' and 'Salary'
data['Age'] = data['Age'].fillna(data['Age'].mean())
data['Salary'] = data['Salary'].fillna(data['Salary'].median())

# Encode categorical variable 'Gender'
label_encoder = LabelEncoder()
data['Gender'] = label_encoder.fit_transform(data['Gender'])

# Scale 'Age' using StandardScaler
scaler = StandardScaler()
data['Age_scaled'] = scaler.fit_transform(data[['Age']])

# Scale 'Salary' using MinMaxScaler
minmax = MinMaxScaler()
data['Salary_scaled'] = minmax.fit_transform(data[['Salary']])

# Prepare features and target
X = data[['Age_scaled', 'Gender']]  # You can include other features if needed
y = data['Salary_scaled']

# Split the data into training and testing sets
x_train, x_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Print the results
print("x_train:\n", x_train)
print("x_test:\n", x_test)
print("y_train:\n", y_train)
print("y_test:\n", y_test)
