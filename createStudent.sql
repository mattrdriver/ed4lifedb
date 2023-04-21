--createStudent.sql

--PRAGMA foreign_keys = on;

DROP TABLE student;

CREATE TABLE student(studentID INTEGER NOT NULL UNIQUE PRIMARY KEY,
sponsorID INTEGER,
fullName TEXT NOT NULL UNIQUE,
age INTEGER NOT NULL, --check what oldest students are 6-16 maybe?
gender CHAR NOT NULL CHECK (gender IN ("M","F")),
dob DATE NOT NULL CHECK (dob LIKE '__/__/____'),
grade TEXT NOT NULL CHECK (grade IN ("PP1","PP2","G1","G2","G3","G4","G5","G6","G7",
"G8","G9","G10","G11","G12","SNE")),
sponsored BOOLEAN NOT NULL,
priority BOOLEAN NOT NULL,
notes TEXT,
FOREIGN KEY (sponsorID) REFERENCES sponsor(sponsorID)
);

INSERT INTO student(sponsorID, fullName, age, gender, dob, grade,
sponsored, priority, notes)
VALUES
(11,"PP1A",7,"F",'08/09/2015',"PP1",TRUE,FALSE,"Class PP1 has 40 students"), 

(50,"PP1B",7,"F",'05/07/2015',"PP1",TRUE,FALSE,"xxxx"), 

(30,"PP1C",8,"F",'20/10/2014',"PP1",TRUE,FALSE,"xxxx"), 

(2,"PP1D",7,"M",'06/07/2015',"PP1",FALSE,FALSE,"xxxx"), 

(3,"PP1E",7,"F",'05/01/2016',"PP1",FALSE,TRUE,"xxxx"), 

(9,"PP1F",7,"F",'23/10/2015',"PP1",TRUE,FALSE,"xxxx"), 

(4,"PP1G",8,"F",'06/02/2015',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1H",7,"F",'18/01/2016',"PP1",FALSE,FALSE,"xxxx"), 

(41,"PP1I",7,"M",'09/08/2015',"PP1",TRUE,FALSE,"xxxx"), 

(NULL,"PP1J",6,"F",'03/09/2016',"PP1",FALSE,FALSE,"xxxx"), 

(40,"PP1K",8,"F",'10/03/2015',"PP1",TRUE,FALSE,"xxxx"), 

(42,"PP1L",7,"M",'18/03/2016',"PP1",TRUE,TRUE,"xxxx"), 

(NULL,"PP1M",9,"F",'26/04/2013',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1N",6,"M",'06/02/2017',"PP1",FALSE,FALSE,"xxxx"), 

(38,"PP1O",7,"M",'18/09/2015',"PP1",TRUE,FALSE,"xxxx"), 

(45,"PP1P",7,"M",'08/10/2015',"PP1",TRUE,FALSE,"xxxx"), 

(34,"PP1Q",7,"M",'20/04/2015',"PP1",TRUE,FALSE,"xxxx"), 

(NULL,"PP1R",7,"M",'18/12/2015',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1S",7,"F",'02/06/2015',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1T",6,"M",'06/02/2017',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1U",6,"M",'12/05/2016',"PP1",FALSE,TRUE,"xxxx"), 

(NULL,"PP1V",7,"M",'08/08/2015',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1W",7,"M",'16/12/2015',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1X",7,"F",'09/11/2015',"PP1",FALSE,TRUE,"xxxx"), 

(NULL,"PP1Y",7,"M",'13/10/2015',"PP1",FALSE,FALSE,"xxxx"), 

(21,"PP1Z",7,"M",'01/05/2015',"PP1",TRUE,FALSE,"xxxx"), 

(49,"PP1A1",7,"F",'23/04/2015',"PP1",TRUE,FALSE,"xxxx"), 

(6,"PP1B1",8,"M",'19/03/2015',"PP1",TRUE,FALSE,"xxxx"), 

(NULL,"PP1C1",7,"M",'13/03/2016',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1D1",7,"F",'17/05/2015',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1E1",7,"M",'18/04/2016',"PP1",FALSE,TRUE,"xxxx"), 

(NULL,"PP1F1",7,"M",'13/08/2015',"PP1",FALSE,TRUE,"xxxx"), 

(NULL,"PP1G1",7,"M",'12/04/2016',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1H1",8,"F",'13/10/2014',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1I1",7,"M",'10/02/2016',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1J1",7,"M",'09/02/2016',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1K1",7,"M",'18/04/2016',"PP1",FALSE,FALSE,"xxxx"), 

(NULL,"PP1L1",8,"F",'09/11/2014',"PP1",FALSE,FALSE,"xxxx"), 

(37,"PP1M1",7,"F",'31/10/2015',"PP1",TRUE,FALSE,"xxxx"), 

(NULL,"PP1N1",7,"F",'23/02/2016',"PP1",FALSE,FALSE,"xxxx"), 

(4,"G4A",12,"M",'21/06/2010',"G4",TRUE,FALSE,"Class G4 has 39 students"), 

(47,"G4B",13,"F",'22/01/2010',"G4",TRUE,FALSE,"xxxx"), 

(25,"G4C",14,"M",'02/10/2008',"G4",TRUE,FALSE,"xxxx"), 

(5,"G4D",12,"F",'14/10/2010',"G4",TRUE,FALSE,"xxxx"), 

(48,"G4E",12,"F",'11/11/2010',"G4",TRUE,FALSE,"xxxx"),

(9,"G4F",12,"F",'05/11/2010',"G4",TRUE,FALSE,"xxxx"), 

(NULL,"G4G",12,"F",'15/11/2010',"G4",FALSE,FALSE,"xxxx"), 

(3,"G4H",13,"M",'28/12/2009',"G4",TRUE,FALSE,"xxxx"), 

(13,"G4I",12,"F",'11/12/2010',"G4",TRUE,FALSE,"xxxx"), 

(11,"G4J",12,"M",'28/07/2010',"G4",TRUE,FALSE,"xxxx"), 

(48,"G4K",14,"M",'06/09/2008',"G4",TRUE,FALSE,"xxxx"), 

(42,"G4L",12,"M",'27/02/2011',"G4",TRUE,TRUE,"xxxx"), 

(NULL,"G4M",12,"F",'20/11/2010',"G4",FALSE,TRUE,"xxxx"), 

(9,"G4N",12,"F",'10/12/2010',"G4",TRUE,FALSE,"xxxx"), 

(6,"G4O",12,"F",'26/10/2010',"G4",TRUE,FALSE,"xxxx"), 

(14,"G4P",12,"M",'10/10/2010',"G4",TRUE,FALSE,"xxxx"), 

(14,"G4Q",14,"M",'02/05/2008',"G4",TRUE,FALSE,"xxxx"), 

(46,"G4R",12,"M",'09/06/2010',"G4",TRUE,FALSE,"xxxx"), 

(44,"G4S", 12,"F",'10/10/2010',"G4",TRUE,FALSE,"xxxx"), 

(7,"G4T",12,"F",'16/04/2010',"G4",TRUE,FALSE,"xxxx"), 

(45,"G4U",12,"M",'27/04/2011',"G4",TRUE,FALSE,"xxxx"), 

(14,"G4V",14,"M",'05/03/2009',"G4",TRUE,FALSE,"xxxx"), 

(16,"G4W",13,"F",'09/09/2009',"G4",TRUE,FALSE,"xxxx"), 

(30,"G4X",12,"M",'25/10/2010',"G4",TRUE,FALSE,"xxxx"), 

(33,"G4Y",12,"F",'26/06/2010',"G4",TRUE,FALSE,"xxxx"), 

(6,"G4Z",13,"F",'03/03/2010',"G4",TRUE,FALSE,"xxxx"), 

(29,"G4A1",12,"M",'20/06/2010',"G4",TRUE,FALSE,"xxxx"), 

(16,"G4B1",12,"F",'03/01/2011',"G4",TRUE,FALSE,"xxxx"), 

(1,"G4C1",12,"M",'24/07/2010',"G4",TRUE,FALSE,"xxxx"), 

(16,"G4D1",13,"F",'17/03/2010',"G4",TRUE,FALSE,"xxxx"), 

(5,"G4E1",14,"F",'16/11/2008',"G4",TRUE,FALSE,"xxxx"), 

(5,"G4F1",13,"M",'23/03/2010',"G4",TRUE,FALSE,"xxxx"), 

(2,"G4G1",12,"F",'15/04/2010',"G4",TRUE,FALSE,"xxxx"), 

(16,"G4H1",12,"F",'29/10/2010',"G4",TRUE,FALSE,"xxxx"), 

(NULL,"G4I1",12,"M",'06/09/2010',"G4",FALSE,FALSE,"xxxx"), 

(11,"G4J1",12,"F",'08/09/2010',"G4",TRUE,FALSE,"xxxx"), 

(17,"G4K1",13,"M",'02/05/2009',"G4",TRUE,FALSE,"xxxx"), 

(23,"G4L1",15,"F",'24/12/2007',"G4",TRUE,FALSE,"xxxx"), 

(43,"G4M1",12,"M",'20/02/2011',"G4",TRUE,TRUE,"xxxx"); 
 
SELECT * FROM student;