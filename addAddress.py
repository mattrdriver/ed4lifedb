#addAddress.py

import sqlite3

conn = sqlite3.connect(r"C:\Users\mddri\AppData\Local\Programs\Microsoft VS Code\sqliteDB\ed4lifedb.db")

cursor = conn.cursor()

addDelete = input("What is the address ID of the address you would you like to delete?: ")

addDelete = int(addDelete)

sql = f"DELETE FROM address WHERE addressID = {addDelete}"
    
cursor.execute(sql)

print(sql)

cursor.execute(sql)

conn.commit()

conn.close()