#addProfile.py

import sqlite3

conn = sqlite3.connect(r"C:\Users\mddri\AppData\Local\Programs\Microsoft VS Code\sqliteDB\ed4lifedb.db")

cursor = conn.cursor()

proStudent = input("Enter studentID for this profile: ")
proVillage = input("Enter village for this student: ")
proFamily = input("Enter family members this student lives with: ")
proHobbies = input("Enter hobbies this student has: ")
proGoals = input("Enter goals this student has: ")
proHalf = input("(TRUE/FALSE) Has a half photo been taken of this student?: ")
proFull = input("(TRUE/FALSE) Has a full photo been taken of this student?: ")

if proVillage == "":
    proVillage = "NULL"
else:
   proVillage = f"'{proVillage}'"
   
if proFamily == "":
    proFamily = "NULL"
else:
   proFamily = f"'{proFamily}'"
   
if proHobbies == "":
    proHobbies = "NULL"
else:
   proHobbies = f"'{proHobbies}'"
   
if proGoals == "":
    proGoals = "NULL"
else:
   proGoals = f"'{proGoals}'"

sql = f"INSERT INTO profile(studentID, village, family, hobbies, goals, halfPhoto, fullPhoto) values({proStudent},{proVillage},{proFamily},{proHobbies},{proGoals},{proHalf},{proFull})"

print(sql)

cursor.execute(sql)

conn.commit()

conn.close()