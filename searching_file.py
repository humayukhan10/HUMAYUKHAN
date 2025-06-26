f=open("practice.txt","r")
#data=f.write("\nhi everyone\nwe are learning file i/o\nusing java\ni like programming in java\n")
data=f.read()
new_data=data.replace("java","pythone")
print(new_data)
word="learning"
#searching
if(data.find(word) != -1):
    print("found")
else:
    print("not found")
f.close()    
