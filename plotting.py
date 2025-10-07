import calendar
import random
import matplotlib.pyplot as plt
month=calendar.month_name[1:13]
salary=random.sample(range(10000,80000),12)
tax=random.sample(range(5000,10000),12)



plt.figure(figsize=(15,10))
plt.bar(month,salary,color='red')
plt.plot(month, salary,color='black',marker='H',linestyle='-')
plt.xlable("Month")
plt.ylabel("Salaray")
