
#  python Containers

#  there are 4 type  list , tuple, set, dict


#--------list----------------



fruits=["mango","Orange","banana","mango"]
print(fruits[0])
  
for i in fruits:
    print(i)
    
fruits.append("orange")
#fruits.clear()
print(fruits)


fruits.pop()
print(fruits)

print(fruits.count("mango"))

print(not "mango" in fruits)

fruits.insert(3,"kela")
print(fruits)

print(fruits.remove("kela"))

fruits.pop()

print(fruits[0:2])
# _________________ Tuple_______________________



rec1=("1","Ayan","Petlad")
rec2=("2","hk","Bakrol")


rec=rec1+rec2

print(rec)
print(rec[1])

for item in rec:
    print(item)


rec = ("1", "Ayan", "Petlad")
rec = rec + ("new_item",)  # add this type of tuple
print("Updated tuple:", rec)



list_of_tuples = [
    ("101", "ad", "aau"),
    ("102", "bd", "baca"),
    ("3", "cd", "caneda")
]
print(list_of_tuples)

#_--------------Sets------------#

animal={"cat","dog","hourse"}

print(animal)   

print("dog" in animal)

animal.add("Monky")
animal

animal.remove("Monky")
animal


#---------- dictonary----------
#  there are avilabe in key and value


dic={"1":"Ayan","2":"HK","3":"jk"}

print(dic)
print(dic.keys())
print(dic.values())
print(type(dic))
print(dic.pop("3"))
print(dic.popitem())


dic1 = {"id": "1", "Name": "Ayan", "Village": "Petlad"}
print("id:", dic1['id'])
print("Name:", dic1['Name'])
print("Village:", dic1['Village'])

dic_list=[
    {"id":"1","Name":"Ayan","Village":"Khdana"},
    {"id":"2","Name":"Hk","Village":"AAU"},   
   
    ]

print(dic_list)


for i in dic_list:
    print("Id:",i["id"])
    print("Name:",i["Name"])
    print("Village:",i["Village"])
    print("---------------")

