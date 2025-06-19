student ={
    "name" :"ayan diwan",
    "marks" :{
        "phy" : 76,
        "chem" :55,
        "bio" : 67,
    }
}
print(student)
print(student["marks"]["phy"])

print(student.keys())
print(student.values())
print(student.items())
print(student.get("name"))
student.update({"surname" : "pathan"})
print(student)
