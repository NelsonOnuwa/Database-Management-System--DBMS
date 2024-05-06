CREATING A TABLE IN MYSQL

A database (schema) is first created before the table is created.
Right click on the database and click on create schema (MYSQL)
Name the schema (MYSQL)
 You would find it below database on the left of the screen
 Click on the schema, then right click on table, click on create table
A new table tab pops up
Name the table, fill the column names and the datatypes.
You can also select your primary key here
Click on the table name, click on the symbol I, this opens the table. go to ddl and copy the syntax and paste to create the table.



--    CREATE TABLE table_name (
--      Column 1 datatype,
--      Column 2 datatype,
--      Column 3 datatype,
--      Column 4 datatype,
--       ...
--     );

-- The table can now be filled with data using the MYSQL INSERT INTO Statement:
               INSERT INTO DATABASE (Colunmn1, Colunmn2, Colunmn3, Colunmn4)
                 VALUES ('CUPCAKE','WHITE WAY','TORONTO','ONTARIO','112');




CREATE TABLE `umuokolie` (
  `id` int NOT NULL,
  `name` varchar(50),
  `sex` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `name_of_university` varchar(45) NOT NULL,
  `relationship` varchar(45) NOT NULL,
  `day_of_birth` varchar(45) NOT NULL
);
DESC umuokolie;                        #shows the primary key, the column, data types



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




--                           TABLE MODIFICATION
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











