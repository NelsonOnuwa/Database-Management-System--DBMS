Database

Database is a structure that stores information in an organized, consistent, reliable and searchable way.  It is either relational or non-relational. 
Relational database focuses on organizing data into rows and columns within tables. E.g. MYSQL, SQL, Postgre SQL.
Non-Relational (NOSQL) e.g. Mongo, Cassandra.

Fields and records makeup tables while tables make up a database.

                                  Columns
Id	Name	City	State	zip
1	Nelson	Ibusa	Delta	234
2	Ogechi	Obazu	Imo	234
3	Cupcake (Ikechukwu)	Ibusa	delta	234
                            
A relational database with one table and three(3) Records 

Fields (Column): maintains specific information about every record in a table
Record (Row): each individual entry that exists in a table
Tables:  collection of closely related data

Advantage of storing data in a database rather than other traditional formats like EXCEL                                                  (Why database and NOT Excel)
    -- Many users can write queries to gather insight (an accurate and deep understanding) from the data at the same time
    -- When a database is queried, the data stored inside the database does not change rather the database info is accessed and presented according to the instruction in the query.




Database Management System (DBMS)

Database Management System (DBMS) is the software (a set of instructions that operate the hardware). It provides the services that are necessary for end users or other software to interact with the data. Examples of DBMS include MYSQL, SQL, and Access.
Nb. MYSQL is a DBMS for relational databases (RDBMS)

Data has been stored in RDBMS format for years. The reasons behind it are as follows:
	-- RDBMS is one of the safest ways to store, manage, and retrieve data.
	-- They are backed by a solid mathematical foundation (relational algebra and calculus) and they expose an efficient and intuitive declarative language – SQL – for easy interaction.
	-- Almost every language has a rich set of libraries to interact with different RDBMS and the tricks and methods of using them are well tested and well understood.
	-- Scaling an RDBMS is a pretty well-understood task and there are a bunch of well trained, experienced professionals to do this job (DBA or database administrator).
    







SQL (Structured Query Language)


SQL is a standard language for accessing (storing and retrieving) and manipulating databases. It turns raw data stored in a database into actionable insights. 
When we use SQL to work with data in existing tables that is SQL being used as a DML (Data Manipulation Language) – CRUD. 
When we write SQL to make changes to the structure of tables or to the database that is SQL being used as a DDL (Data definition language).
SQL became a standard of the American National Standards Institute (ANSI) in 1986 and of the International Organization for Standardization (ISO) in 1987

SQL comments starts with either a (--) or a (/* */) for example:         
1.	-- created by Okolie Nelson Ogechi

2.	 /* created by Okolie Nelson Ogechi
                    Date: 13-07-2022
                    Description: e-portfolio to show your progress in your course work at Uni Essex. */

To interact with the database, users employ SQL statements
                

SQL STATEMENTS
The basic SQL statements are CRUD:   CREATE (SELECT)
                                                                    READ (INSERT)
		                                        UPDATE
		                                        DELETE
SQL statements contains clauses, expressions and it is terminated by a semicolon (;) 
E.g. SELECT * FROM okoliefamily WHERE Name = ‘prince’ ORDER BY;

 The clauses are "FROM", "WHERE", "ORDER BY" While the expression is = 
SQL keywords are NOT case sensitive: select is the same as SELECT. Always use single quotes ' ' in MySQL although double quotes ““works but not for all programs. 
Table names and fields should be in lower cases.

1.	SELECT (CREATE) STATEMENT  

The SELECT statement:   
 Requests for data from a database (query a database- it is a query that return values) 
           Prints exactly what is in the ‘‘(quote), this creates a row.
N.b SELECT a; gives a syntax error.
                
 2.  INSERT STATEMENT 
The INSERT Syntax:             INSERT INTO DATABASE (Colunmn1, Colunmn2, Colunmn3, Colunmn4...)
                                                VALUES ('CUPCAKE','WHITE WAY','TORONTO','ONTARIO','112');

3.  UPDATE STATEMENT
The UPDATE Syntax:        UPDATE DATABASE SET ADDRESS= 'WHITEWAY', ZIP='112', WHERE ID =4;

4.  DELECT STATEMENT
The DELECT Syntax:       DELECT FROM DATABASE WHERE ID=5;














Schema

Schema are the blue prints of databases. It shows a database design such as what tables are include in the database and any relationship btw its tables.  It lets one know what data type each field can hold.

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
