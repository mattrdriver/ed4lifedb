--createSponsor.sql

DROP TABLE sponsor;

CREATE TABLE sponsor(sponsorID INTEGER NOT NULL UNIQUE PRIMARY KEY,
fullName TEXT NOT NULL UNIQUE,
phoneNumber INTEGER UNIQUE,
email TEXT UNIQUE,
notes TEXT,
CONSTRAINT phoneNumber CHECK (phoneNumber BETWEEN 1000000000 AND 99999999999),
CONSTRAINT Email CHECK (email LIKE '%@%.com')
);

INSERT INTO sponsor(fullName, phoneNumber, email, notes)
VALUES
("SP1",76239337720,"SP1@testemail.com","There are 50 sponsors"), 

("SP2",15251252513,"SP2@testemail.com","xxxx"), 

("SP3",13727784855,"SP3@testemail.com","xxxx"), 

("SP4",37519380903,NULL,"xxxx"), 

("SP5",8922183777,"SP5@testemail.com","xxxx"), 

("SP6",18074884495,NULL,"xxxx"), 

("SP7",65745129512,"SP7@testemail.com","xxxx"), 

("SP8",50577787941,NULL,"xxxx"), 

("SP9",10376232288,"SP9@testemail.com","xxxx"), 

("SP10",20363634964,"SP10@testemail.com","xxxx"), 

("SP11",78947512010,NULL,"xxxx"), 

("SP12",90688003833,NULL,"xxxx"), 

("SP13",NULL,NULL,"xxxx"), 

("SP14",6369444203,"SP14@testemail.com","xxxx"), 

("SP15",NULL,"SP15@testemail.com","xxxx"), 

("SP16",NULL,"SP16@testemail.com","xxxx"), 

("SP17",13531890693,"SP17@testemail.com","xxxx"), 

("SP18",33563172415,"SP18@testemail.com","xxxx"), 

("SP19",41451911472,"SP19@testemail.com","xxxx"), 

("SP20",2687936037,"SP20@testemail.com","xxxx"), 

("SP21",33953385627,"SP21@testemail.com","xxxx"), 

("SP22",84893708128,"SP22@testemail.com","xxxx"), 

("SP23",90833549504,"SP23@testemail.com","xxxx"), 

("SP24",49850303170,"SP24@testemail.com","xxxx"), 

("SP25",5588792477,"SP25@testemail.com","xxxx"), 

("SP26",13663817275,"SP26@testemail.com","xxxx"), 

("SP27",97040711231,NULL,"xxxx"), 

("SP28",54857478739,"SP28@testemail.com","xxxx"), 

("SP29",38801551051,"SP29@testemail.com","xxxx"), 

("SP30",78116303331,"SP30@testemail.com","xxxx"), 

("SP31",86271384856,"SP31@testemail.com","xxxx"), 

("SP32",28479985730,"SP32@testemail.com","xxxx"), 

("SP33",NULL,"SP33@testemail.com","xxxx"), 

("SP34",15759099141,"SP34@testemail.com","xxxx"), 

("SP35",25119415077,"SP35@testemail.com","xxxx"), 

("SP36",91033370723,"SP36@testemail.com","xxxx"), 

("SP37",79399230414,"SP37@testemail.com","xxxx"), 

("SP38",71723063444,"SP38@testemail.com","xxxx"), 

("SP39",NULL,"SP39@testemail.com","xxxx"), 

("SP40",43294822789,"SP40@testemail.com","xxxx"), 

("SP41",58488617011,"SP41@testemail.com","xxxx"), 

("SP42",NULL,NULL,"xxxx"), 

("SP43",89479658176,"SP43@testemail.com","xxxx"), 

("SP44",NULL,NULL,"xxxx"), 

("SP45",NULL,"SP45@testemail.com","xxxx"), 

("SP46",9147185118,"SP46@testemail.com","xxxx"), 

("SP47",34196911069,"SP47@testemail.com","xxxx"), 

("SP48",94010439538,"SP48@testemail.com","xxxx"), 

("SP49",56362957354,"SP49@testemail.com","xxxx"), 

("SP50",7840913850,"SP50@testemail.com","xxxx"); 

SELECT * FROM sponsor;