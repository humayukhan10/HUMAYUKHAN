num = int(input("Enter how many values you want to input: "))

values = []

for i in range(num):
    val = int(input(f"Enter value {i+1}: "))
    values.append(val)

print("\nStored List:", values)


array = np.array(values)
print("Numpy Array:", array)
