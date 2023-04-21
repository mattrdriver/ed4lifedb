#addStudent.py

import sqlite3

conn = sqlite3.connect(r"C:\Users\mddri\AppData\Local\Programs\Microsoft VS Code\sqliteDB\ed4lifedb.db")



stdView = input("(All/Filter) Would you like to see all student data or only see some based on a filter?: ")

if stdView == "All":
    sql = f"SELECT * FROM student"
    
elif stdView == "Filter":
    stdFilter = input("What grade do you want to filter by?")
    sql = f"SELECT * FROM student WHERE grade = {stdFilter}"

stdName = input("Enter name: ")
stdAge = input("Enter age: ")
stdGender = input("(M/F) Enter gender: ")
stdDob = input("(DD/MM/YYYY) Enter date of birth: ")
stdGrade = input("(PP1/PP2/SNE/G1-G12) Enter grade: ")
stdSponsored = input("(TRUE/FALSE) Is this student sponsored?: ")
stdPriority = input("(TRUE/FALSE) Is this student a priority for a sponsor?: ")
stdNotes = input("Enter additional notes: ")

if stdSponsor == "":
    stdSponsor = "NULL"
else:
    stdSponsor = f"{stdSponsor}"

if stdNotes == "":
    stdNotes = "NULL"
else:
    stdNotes = f"'{stdNotes}'"

sql = f"SELECT '{stdView}' FROM student"

print(sql)

cursor.execute(sql)

conn.commit()

conn.close()