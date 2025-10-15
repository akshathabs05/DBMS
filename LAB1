-- Lab Experiment 01: Implementation of DDL Commands in SQL
-- STUDENT NAME: 
-- USN: 
-- SECTION: 

SELECT USER(), 
       @@hostname AS Host_Name, 
       VERSION() AS MySQL_Version, 
       NOW() AS Current_Date_Time;
-- OUTPUT : [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]

-- Scenario: University Course Management System
-- CREATE AND LOAD THE database DBLab001
-- Write your SQL query below Codespace:
create database lab2;
use lab2;
-- Task 1: Create the Students Table
-- Create a table to store information about students.
-- Include the following columns:
-- 1. StudentID (Primary Key)
-- 2. FirstName
-- 3. LastName
-- 4. Email (Unique Constraint)
-- 5. DateOfBirth

-- Write your SQL query below Codespace:
CREATE TABLE Students 
( studentID varchar(15) primary key,
  firstname varchar(15),
  lastname varchar(15),
  email varchar(15) unique,
  DOB date
  );


DESC STUDENTS; -- [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]
-- OUTPUT : Disclaimer - This code is not the part of the SQL Code
/*'studentID', 'varchar(15)', 'NO', 'PRI', NULL, ''
'firstname', 'varchar(15)', 'YES', '', NULL, ''
'lastname', 'varchar(15)', 'YES', '', NULL, ''
'email', 'varchar(15)', 'YES', 'UNI', NULL, ''
'DOB', 'date', 'YES', '', NULL, ''
*/

-- Alter the table and 2 new columns
alter table students add (gender varchar(2),age int );
desc Students;
/*'studentID', 'varchar(15)', 'NO', 'PRI', NULL, ''
'firstname', 'varchar(15)', 'YES', '', NULL, ''
'lastname', 'varchar(15)', 'YES', '', NULL, ''
'email', 'varchar(15)', 'YES', 'UNI', NULL, ''
'DOB', 'date', 'YES', '', NULL, ''
'gender', 'varchar(2)', 'YES', '', NULL, ''
'age', 'int', 'YES', '', NULL, ''
*/

-- Modify a column data type
alter table students modify email varchar(20);
desc students;
/*'studentID', 'varchar(15)', 'NO', 'PRI', NULL, ''
'firstname', 'varchar(15)', 'YES', '', NULL, ''
'lastname', 'varchar(15)', 'YES', '', NULL, ''
'email', 'varchar(20)', 'YES', 'UNI', NULL, ''
'DOB', 'date', 'YES', '', NULL, ''
'gender', 'varchar(2)', 'YES', '', NULL, ''
'age', 'int', 'YES', '', NULL, ''
*/

-- Rename a column
alter table students rename column lastname to surname;
desc students;
/*'studentID', 'varchar(15)', 'NO', 'PRI', NULL, ''
'firstname', 'varchar(15)', 'YES', '', NULL, ''
'surname', 'varchar(15)', 'YES', '', NULL, ''
'email', 'varchar(20)', 'YES', 'UNI', NULL, ''
'DOB', 'date', 'YES', '', NULL, ''
'gender', 'varchar(2)', 'YES', '', NULL, ''
'age', 'int', 'YES', '', NULL, ''
*/

-- Drop a column
alter table students drop gender;
desc student;

-- Rename the table
alter table students rename studentdetails;
desc studentdetails;



-- Task 2: Create the Courses Table
-- Create a table to store information about courses.
-- Include the following columns:
-- - CourseID (Primary Key)
-- - CourseName
-- - Credits

-- Write your SQL query below Codespace:
create table courses
(courseID varchar (10) primary key,
coursename varchar (15),
credits int);

DESC Courses; -- [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]

-- OUTPUT :
/*ourseID', 'varchar(10)', 'NO', 'PRI', NULL, ''
'coursename', 'varchar(15)', 'YES', '', NULL, ''
'credits', 'int', 'YES', '', NULL, ''
*/


-- Alter the table and 2 new columns
alter table Courses
add (CourseDept varchar(10));
desc Courses;

-- Modify a column data type
alter table courses modify coursename varchar(20);
desc courses;
-- Rename a column
alter table courses rename column CourseDept to coursedept;
desc courses;
-- Drop a column
alter table courses drop coursedept;
desc courses;
-- Rename the table
alter table courses rename coursesdetails;
desc coursesdetails;



-- Task 3: Create the Enrollments Table

-- Create a table to store course enrollment information.
-- Include the following columns:
-- - EnrollmentID (Primary Key)
-- - StudentID (Foreign Key referencing Students table)
-- - CourseID (Foreign Key referencing Courses table)
-- - EnrollmentDate

-- Write your SQL query below Codespace:
create table ENROLLMENTS
(emailID varchar(10) primary key,
studentID varchar(15),
courseID varchar(15),
foreign key (studentID) references studentdetails(studentID),
foreign key (courseID) references coursedetails(courseID)
);
desc studentdetails;
desc coursesdetails;
SHOW TABLES;

DESC ENROLLMENTS; -- [ [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ] ]
-- OUTPUT :

-- Alter the table and 2 new columns
-- Modify a column data type
-- Rename a column
-- Drop a column
-- Rename the table

-- Task 4: Alter the Students Table
-- Add a column 'PhoneNumber' to store student contact numbers.

-- Write your SQL query below Codespace:

DESC STUDENTS; -- [[ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]]

-- Task 5: Modify the Courses Table
-- Change the data type of the 'Credits' column to DECIMAL.
-- Write your SQL query below Codespace:

-- Task 6: Drop Tables

SHOW TABLES; -- Before dropping the table

-- Drop the 'Courses' and 'Enrollments' tables from the database.
-- Write your SQL query below Codespace:

SHOW TABLES; -- After dropping the table Enrollement and Course

-- End of Lab Experiment 01
-- Upload the Completed worksheet in the google classroom with file name USN _ LabExperiment01
