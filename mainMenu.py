#mainMenu.py

import sqlite3

conn = sqlite3.connect(r"C:\Users\mddri\AppData\Local\Programs\Microsoft VS Code\sqliteDB\ed4lifedb.db")

cursor = conn.cursor()

choice = 0
    
def main():
    carryOn = "yes"
    while carryOn != "no":
        print("----------MENU----------")
        print("Choose what action you want to perform:")
        print("1. Add a student")
        print("2. Add a sponsor")
        print("3. Add a profile")
        print("4. Add an address")
        print("5. Remove a student")
        print("6. Remove a sponsor")
        print("7. Remove a profile")
        print("8. Remove an address")
        print("9. View all students")
        print("10. View all sponsors")
        print("11. View all profiles")
        print("12. View all addresses")
        print("13. View all priority students")
        print("14. Quit menu")
        choice = input()
        
        if choice == '1':
            add_student()
            
        elif choice == '2':
            add_sponsor()
            
        elif choice == '3':
            add_profile()
            
        elif choice == '4':
            add_address()
            
        elif choice == '5':
            delete_student()
            
        elif choice == '6':
            delete_sponsor()
            
        elif choice == '7':
            delete_profile()
            
        elif choice == '8':
            delete_address()
            
        elif choice == '9':
            view_student()
            
        elif choice == '10':
            view_sponsor()
            
        elif choice == '11':
            view_profile()
            
        elif choice == '12':
            view_address()
            
        elif choice == '13':
            priority_student()
            
        elif choice == '14':
            carryOn = 'no'
            
            
def add_student():
    stdSponsor = input("Enter student's sponsorID: ")
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

    sql = f"INSERT INTO student(sponsorID, fullName, age, gender, dob, grade, sponsored, priority, notes) values({stdSponsor},'{stdName}',{stdAge},'{stdGender}','{stdDob}','{stdGrade}',{stdSponsored},{stdPriority},{stdNotes})"
    
    cursor.execute(sql)
    
    conn.commit()


def add_sponsor():
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
    
    cursor.execute(sql)
    
    conn.commit()
    
    
def add_profile():
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
    
    cursor.execute(sql)
    
    conn.commit()
    

def add_address():
    addSponsor = input("Enter sponsorID for this address: ")
    addNum = input("Enter house number for this address: ")
    addSN1 = input("Enter first street name for this address: ")
    addSN2 = input("(Optional) Enter second street name for this address: ")
    addTown = input("Enter town or city name for this address: ")
    addCounty = input("Enter county for this address: ")
    addPostcode = input("Enter postcode for this address: ")
    addCountry = input("(UK/Canada) Enter country for this address: ")

    if addSN2 == "":
        addSN2 = "NULL"
    else:
        addSN2 = f"'{addSN2}'"

    sql = f"INSERT INTO address(sponsorID, houseNumber, streetName1, streetName2, townCity, county, postCode, country) values({addSponsor},'{addNum}','{addSN1}',{addSN2},'{addTown}','{addCounty}','{addPostcode}','{addCountry}')"

    cursor.execute(sql)
    
    conn.commit()
    
    
def delete_student():
    stdDelete = input("What is the student ID of the student you would you like to delete?: ")

    stdDelete = int(stdDelete)

    sql = f"DELETE FROM student WHERE studentID = {stdDelete}"
    
    cursor.execute(sql)
    
    conn.commit()
    
    
def delete_sponsor():
    spnDelete = input("What is the sponsor ID of the sponsor you would you like to delete?: ")

    spnDelete = int(spnDelete)

    sql = f"DELETE FROM sponsor WHERE sponsorID = {spnDelete}"
    
    cursor.execute(sql)
    
    conn.commit()
    
    
def delete_profile():
    proDelete = input("What is the profile ID of the profile you would you like to delete?: ")

    proDelete = int(proDelete)

    sql = f"DELETE FROM profile WHERE profileID = {proDelete}"
    
    cursor.execute(sql)
    
    conn.commit()
    
    
def delete_address():
    addDelete = input("What is the address ID of the address you would you like to delete?: ")

    addDelete = int(addDelete)

    sql = f"DELETE FROM address WHERE addressID = {addDelete}"
    
    cursor.execute(sql)
    
    conn.commit()


def view_student():
    sql = "SELECT * FROM student;"
    cursor.execute(sql)
    rows = cursor.fetchall()
    for row in rows:
        print(row)
        
        
def view_sponsor():
    sql = "SELECT * FROM sponsor;"
    cursor.execute(sql)
    rows = cursor.fetchall()
    for row in rows:
        print(row)
        
        
def view_profile():
    sql = "SELECT * FROM profile;"
    cursor.execute(sql)
    rows = cursor.fetchall()
    for row in rows:
        print(row)
        
        
def view_address():
    sql = "SELECT * FROM address;"
    cursor.execute(sql)
    rows = cursor.fetchall()
    for row in rows:
        print(row)
   
    
def priority_student():
    sql = "SELECT * FROM student WHERE priority = 1;"
    cursor.execute(sql)
    rows = cursor.fetchall()
    for row in rows:
        print(row)



main()

conn.close()