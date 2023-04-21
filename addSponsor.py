#addSponsor.py

import sqlite3

conn = sqlite3.connect(r"C:\Users\mddri\AppData\Local\Programs\Microsoft VS Code\sqliteDB\ed4lifedb.db")

cursor = conn.cursor()

spnName = input("Enter sponsor's name: ")
spnNumber = input("Enter sponsor's phone number: ")
spnEmail = input("Enter sponsor's email: ")
spnNotes = input("Enter additional notes: ")

if spnNumber == "":
    spnNumber = "NULL"
    
if spnEmail == "":
    spnEmail = "NULL"
else:
    spnEmail = f"'{spnEmail}'"
    
if spnNotes == "":
    spnNotes = "NULL"
else:
    spnNotes = f"'{spnNotes}'"

sql = f"INSERT INTO sponsor(fullName, phoneNumber, email, notes) values('{spnName}',{spnNumber},{spnEmail},{spnNotes})"

print(sql)

cursor.execute(sql)

conn.commit()

conn.close()