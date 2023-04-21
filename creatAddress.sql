--createAddress.sql

PRAGMA foreign_keys = on;

DROP TABLE address;

CREATE TABLE address(addressID INTEGER NOT NULL UNIQUE PRIMARY KEY,
sponsorID INTEGER NOT NULL UNIQUE,
houseNumber TEXT NOT NULL, 
streetName1 TEXT NOT NULL,
streetName2 TEXT,
townCity TEXT NOT NULL,
county TEXT NOT NULL,
postCode TEXT NOT NULL CHECK (LENGTH(postCode)BETWEEN 4 AND 10), 
country TEXT NOT NULL CHECK (country IN ("UK","Canada")),
FOREIGN KEY (sponsorID) REFERENCES sponsor(sponsorID)
);

INSERT INTO address(sponsorID, houseNumber, streetName1, streetName2,
townCity, county, postCode, country)
VALUES
(1,"HN1","SN11","SN21","T1","C1","PCPCPC1","UK"), 

(2,"HN2","SN12","SN22","T2","C2","PCPCPC2","UK"), 

(3,"HN3","SN13","SN23","T3","C3","PCPCPC3","UK"), 

(4,"HN4","SN14","SN24","T4","C4","PCPCPC4","UK"), 

(5,"HN4","SN14","SN24","T4","C4","PCPCPC4","UK"), 

(6,"HN5","SN15","SN25","T5","C5","PCPCPC5","UK"), 

(7,"HN5","SN15","SN25","T5","C5","PCPCPC5","UK"), 

(8,"HN8","SN18","SN28","T8","C8","PCPCPC8","UK"), 

(9,"HN9","SN19","SN29","T9","C9","PCPCPC9","UK"), 

(10,"HN10","SN110","SN210","T10","C10","PCPCPC10","UK"), 

(11,"HN11","SN111","SN211","T11","C11","PCPCPC11","UK"), 

(12,"HN12","SN112","SN212","T12","C12","PCPCPC12","UK"), 

(13,"HN13","SN113","SN213","T13","C13","PCPCPC13","UK"), 

(14,"HN14","SN114","SN214","T14","C14","PCPCPC14","UK"), 

(15,"HN15","SN115","SN215","T15","C15","PCPCPC15","Canada"), 

(16,"HN15","SN115","SN215","T15","C15","PCPCPC15","Canada"), 

(17,"HN17","SN117","SN217","T17","C17","PCPCPC17","UK"), 

(18,"HN18","SN118","SN218","T18","C18","PCPCPC18","UK"), 

(19,"HN19","SN119","SN219","T19","C19","PCPCPC19","UK"), 

(20,"HN20","SN120","SN220","T20","C20","PCPCPC20","UK"), 

(21,"HN20","SN120","SN220","T20","C20","PCPCPC20","UK"), 

(22,"HN22","SN122","SN222","T22","C22","PCPCPC22","UK"), 

(23,"HN23","SN123","SN223","T23","C23","PCPCPC23","UK"), 

(24,"HN24","SN124","SN224","T24","C24","PCPCPC24","UK"), 

(25,"HN25","SN125","SN225","T25","C25","PCPCPC25","UK"), 

(26,"HN26","SN126","SN226","T26","C26","PCPCPC26","UK"), 

(27,"HN27","SN127","SN227","T27","C27","PCPCPC27","UK"), 

(28,"HN27","SN127","SN227","T27","C27","PCPCPC27","UK"), 

(29,"HN29","SN129","SN229","T29","C29","PCPCPC29","UK"), 

(30,"HN30","SN130","SN230","T30","C30","PCPCPC30","UK"), 

(31,"HN31","SN131","SN231","T31","C31","PCPCPC31","UK"), 

(32,"HN32","SN132","SN232","T32","C32","PCPCPC32","UK"), 

(33,"HN33","SN133","SN233","T33","C33","PCPCPC33","Canada"), 

(34,"HN34","SN134","SN234","T34","C34","PCPCPC34","UK"), 

(35,"HN35","SN135","SN235","T35","C35","PCPCPC35","UK"), 

(36,"HN36","SN136","SN236","T36","C36","PCPCPC36","UK"), 

(37,"HN36","SN136","SN237","T37","C37","PCPCPC37","UK"), 

(38,"HN38","SN138","SN238","T38","C38","PCPCPC38","UK"), 

(39,"HN39","SN139","SN239","T39","C39","PCPCPC39","Canada"), 

(40,"HN40","SN140","SN240","T40","C40","PCPCPC40","UK"), 

(41,"HN41","SN141","SN241","T41","C41","PCPCPC41","UK"), 

(42,"HN42","SN142","SN242","T42","42","PCPCPC42","UK"), 

(43,"HN43","SN143","SN243","T43","C43","PCPCPC43","UK"), 

(44,"HN44","SN144","SN244","T44","C44","PCPCPC44","Canada"), 

(45,"HN45","SN145","SN245","T45","C45","PCPCPC45","Canada"), 

(46,"HN46","SN146","SN246","T46","C46","PCPCPC46","UK"), 

(47,"HN47","SN147","SN247","T47","C47","PCPCPC47","UK"), 

(48,"HN48","SN148","SN248","T48","C48","PCPCPC48","UK"), 

(49,"HN49","SN149","SN249","T49","C49","PCPCPC49","UK"), 

(50,"HN50","SN150","SN250","T50","C50","PCPCPC50","UK"); 

SELECT * FROM address;