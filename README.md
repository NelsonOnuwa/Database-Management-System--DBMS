

CREATE TABLE `umuokolie` (
  `id` int NOT NULL,
  `name` varchar(50),
  `sex` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `name_of_university` varchar(45) NOT NULL,
  `relationship` varchar(45) NOT NULL,
  `day_of_birth` varchar(45) NOT NULL
);
DESC umuokolie;                           #shows the primary key, the column, data types



CREATE TABLE `umuokolie` (
  `id` int NOT NULL,
  `name` varchar(50),
  `sex` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `name_of_university` varchar(45) NOT NULL,
  `relationship` varchar(45) NOT NULL,
  `day_of_birth` varchar(45) NOT NULL
);
INSERT INTO  umuokolie VALUES(1,'PRINCE','MALE','29-06-2022','HUMBER_COLLEGE','SON','THURSDAY');
INSERT INTO  umuokolie VALUES(2,'OGECHI','FEMALE','05-03-1998','FEDEI_POLY','WIFE','FRIDAY');
INSERT INTO  umuokolie VALUES(3,'NELSON','MALE','28-01-1985','UNIVERSITY_OF_JOS','HUSBAND','MONDAY');

SELECT * FROM umuokolie;                                            

SELECT NAME, Sex FROM Umuokolie;



--                           *FROM CLAUSE example
-- selecting columns

SELECT NAME FROM umuokolie;                                   -- selects specific column(field names) from the table for all the record
SELECT * FROM umuokolie;                                      -- selects all the column(field names) available in the table 


--                           *WHERE CLAUSE example

 -- selecting specific record
SELECT * FROM umuokolie WHERE NAME = 'NELSON';                 
SELECT * FROM umuokolie WHERE NAME = 'PRINCE';
SELECT * FROM umuokolie WHERE NAME = 'ogechi';

SELECT * FROM umuokolie WHERE NAME = NULL;
SELECT * FROM umuokolie WHERE NAME IS NULL;
SELECT * FROM umuokolie WHERE NAME IS NOT NULL;
SELECT * FROM umuokolie WHERE DATE_OF_BIRTH is null;

--                           *ORDER BY CLAUSE example

SELECT * FROM umuokolie ORDER BY NAME;
SELECT * FROM umuokolie ORDER BY day_of_birth ;
SELECT * FROM umuokolie ORDER BY NAME DESC;




--          TABLE MODIFICATION
						----------------------------

CREATE TABLE `umuokoliefamily` (
  `name` varchar(50) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(45) NOT NULL
);
INSERT INTO  umuokoliefamily VALUES('PRINCE','OKOLIE', 1, 'MALE');
INSERT INTO  umuokoliefamily VALUES('OGECHI','OKOLIE', 24, 'FEMALE');
INSERT INTO  umuokoliefamily VALUES('NELSON','OKOLIE', 37, 'MALE');

SELECT * FROM umuokoliefamily;

SELECT NAME FROM umuokoliefamily; 


--                          A. ADDING ROWS
                                                -----
INSERT INTO  umuokoliefamily (NAME,surname,age,gender) VALUES ('SUNSHINE','OKOLIE','0','FEMALE');
INSERT INTO  umuokoliefamily (NAME,surname,age,gender) VALUES ('','okolie','0','MALE');
SELECT * FROM umuokoliefamily;

--                          B. ADDING COLUMNS
                                                -------
ALTER TABLE umuokoliefamily                                   -- nb no semicolon on the first line
Add year_of_birth INT;

SELECT * FROM umuokoliefamily;

--                           C. DELETING COLOUMNS

ALTER TABLE umuokoliefamily
DROP COLUMN AGE;
SELECT * FROM umuokoliefamily;

--                           D. RENAMING COLUMNS
ALTER TABLE umuokoliefamily
RENAME COLUMN gender to sex;
SELECT * FROM umuokoliefamily;

--                           E. CHANGING DATA TYPE OF COLUMNS IN A TABLE
ALTER TABLE umuokoliefamily
MODIFY COLUMN SEX TEXT;
SELECT * FROM umuokoliefamily;











