

import matplotlib.pyplot as plt

x = [1, 2, 3, 4]
y = [2, 4, 6, 8]

plt.plot(x, y)  # Create a line plot
plt.title("Line Plot Example")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.show()
x = [5, 7, 8, 7]
y = [7, 8, 5, 6]

plt.scatter(x, y, color="red")
plt.title("Scatter Plot Example")
plt.show()

names = ["A", "B", "C"]
values = [4, 7, 3]

plt.bar(names, values, color="green")
plt.title("Bar Chart Example")
plt.show()

names = ["A", "B", "C"]
values = [4, 7, 3]

plt.barh(names, values, color="orange")
plt.title("Horizontal Bar Chart Example")
plt.show()

names = ["A", "B", "C"]
values = [4, 7, 3]

plt.barh(names, values, color="orange")
plt.title("Horizontal Bar Chart Example")
plt.show()

data = [1, 1, 2, 3, 3, 3, 4, 4, 5]
plt.hist(data, bins=5, color="purple", edgecolor="black")
plt.title("Histogram Example")
plt.show()

sizes = [40, 30, 20, 10]
labels = ["Python", "Java", "C++", "Others"]

plt.pie(sizes, labels=labels, autopct="%1.1f%%")
plt.title("Pie Chart Example")
plt.show()


plt.subplot(1, 2, 1)  # 1 row, 2 columns, 1st plot
plt.plot([1, 2, 3], [1, 4, 9])
plt.title("First Plot")

plt.subplot(1, 2, 2)  # 1 row, 2 columns, 2nd plot
plt.plot([1, 2, 3], [1, 2, 3])
plt.title("Second Plot")

plt.show()
plt.plot([1, 2, 3], [4, 5, 6], label="Line 1")
plt.plot([1, 2, 3], [6, 5, 4], label="Line 2")
plt.legend()
plt.show()


plt.plot([1, 2, 3], [4, 5, 6], label="Line 1")
plt.plot([1, 2, 3], [6, 5, 4], label="Line 2")
plt.legend()
plt.show()
