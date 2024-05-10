CREATING A TABLE IN MYSQL

A database schema is first created before the table is created.
Right click on database on the left hand of MYSQL work bench and click on create schema (MYSQL)
This creates a new_schema tab	
Name the schema (MYSQL), click on apply and finish.
You would find it below database on the left of the screen
Click on the schema, then right click on table, click on create table
A new table tab pops up
Name the table, fill the column names and the datatypes. You can also select your primary key here. Click on apply and finish.

Click on table, click on the table name, click on the symbol i, this opens the table. 
Go to ddl, copy the syntax and paste on a new query tab to create the table.


To alter the schema(table), right click on the table name and click on alter table
make the necessary changes and click on apply
to get the current schema, click on the table name, double click on the box (note the modification on the table name, use it going forward)
click on edit to input your data manually

Synthax:
	
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






Schema

Schema are the blue prints of databases. It shows a database design such as what tables are included in the database and any relationship btw its tables. 
It lets one know what data type each field can hold.

A key is one or more columns that are identified as such in the creation of a table. 
Primary key is used to ensure data in the specific column is unique (identifies each record), it cannot be null and It is either an existing table column or a column that is specifically generated by the database according to a defined sequence. A table can only have one primary key because it defines the entity

Foreign key is a column or group of columns in a relational database table that provides a link between data in two tables. It is a column (or columns) that references another column (most often the primary key) of another table.  For a foreign key to exist in one entity, it must be the primary key in a related entity.  The main requirement of foreign keys is the establishment of relationships between.  It makes sure that, data is linked across multiple tables and helps in storing and retrieving data. We need foreign keys as they help us make sure that data is consistent, complete between both the tables and overall accuracy is maintained (data integrity).
                   

Primary Key	                                                                         Foreign Key
A primary key is used to ensure data in the specific column is unique.       	A foreign key is a column or group of columns in a relational database table that provides a link between data in two tables.
It does not allow NULL values.		                                        It can also contain NULL values.
Its value cannot be deleted from the parent table.	                        Its value can be deleted from the child table
It uniquely identifies a record in the relational database table.	        It refers to the field in a table, which is the primary key of another table.
	


Unique key
A primary key is also a unique constraint.




                        CONSTRAINTS
Constraints can be at column level or table level.  They are used to: 
 1. Specify rules for the data in a table.
 2. Limit the type of data that can go into a table.

The following constraints are commonly used in SQL:
1. NOT NULL - Ensures that a column cannot have a NULL value.
 2. UNIQUE - Ensures that all values in a column are different.
 3. PRIMARY KEY - A combination of a NOT NULL and UNIQUE. It uniquely identifies each row in a table.
4. FOREIGN KEY - Prevents actions that would destroy links between tables.
5. CHECK - Ensures that the values in a column satisfies a specific condition.
6. DEFAULT - Sets a default value for a column if no value is specified.
7. CREATE INDEX - Used to create and retrieve data from the database very quickly.

-Below is the constraint syntax:
                       
CREATE TABLE table_name (
column1 datatype constraint,
column2 datatype constraint,
 column3 datatype constraint,
  .... );








