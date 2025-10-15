Lab Experiment 01: Implementation of DDL Commands in SQL for the given scenarios
-- STUDENT NAME: 
-- USN: 
-- SECTION: 

SELECT USER(), 
       @@hostname AS Host_Name, 
       VERSION() AS MySQL_Version, 
       NOW() AS Current_Date_Time;
-- OUTPUT : [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]

-- Scenario: College Student Management System

-- CREATE AND LOAD THE database
-- Write your SQL query below Codespace:

-- Task 1: Create the Tables under this system (min 5 tables)
  -- Table 01: Departments ( DepartmentID, DepartmentName, HOD,ContactEmail,PhoneNumber,Location )
  -- Table 02: Course (CourseID, CourseName,Credits,DepartmentID,Duration,Fee )
  -- Table 03: Students (StudentID,FirstName,LastName,Email,DateOfBirth,CourseID)
  -- Table 04: Faculty FacultyID,FacultyName,DepartmentID,Qualification,Email,PhoneNumber)
  -- Table 05: Enrollments (  EnrollmentID,StudentID,CourseID,Semester,Year,Grade)
-- Specify the Key (Primary and Foreign) for each table while creating


-- Write your SQL query below Codespace:
CREATE database University;
use University;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    HOD VARCHAR(100),
    ContactEmail VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Location VARCHAR(100)
);
desc Departments;

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT,
    DepartmentID INT,
    Duration VARCHAR(50),
    Fee DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
desc Course;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DateOfBirth DATE,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
desc Students;

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    Qualification VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
desc Faculty;

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Semester VARCHAR(20),
    Year INT,
    Grade VARCHAR(5),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
desc Enrollments;

-- [ COPYPASTE OF THE OUTPUT in CSV Format and terminate with ; ]
-- OUTPUT : Disclaimer - This code is not the part of the SQL Code
	/*Field	Type	Null	Key	Default	Extra
	DepartmentID	int	NO	PRI		
	DepartmentName	varchar(100)	NO			
	HOD	varchar(100)	YES			
	ContactEmail	varchar(100)	YES			
	PhoneNumber	varchar(15)	YES			
	Location	varchar(100)	YES		*/
    
	/*	Field	Type	Null	Key	Default	Extra
	CourseID	int	NO	PRI		
	CourseName	varchar(100)	NO			
	Credits	int	YES			
	DepartmentID	int	YES	MUL		
	Duration	varchar(50)	YES			
	Fee	decimal(10,2)	YES			*/
    
 /*   	Field	Type	Null	Key	Default	Extra
	StudentID	int	NO	PRI		
	FirstName	varchar(50)	NO			
	LastName	varchar(50)	YES			
	Email	varchar(100)	YES			
	DateOfBirth	date	YES			
	CourseID	int	YES	MUL		*/
    
    /*	Field	Type	Null	Key	Default	Extra
	FacultyID	int	NO	PRI		
	FacultyName	varchar(100)	NO			
	DepartmentID	int	YES	MUL		
	Qualification	varchar(100)	YES			
	Email	varchar(100)	YES			
	PhoneNumber	varchar(15)	YES		*/	
    
    /*	Field	Type	Null	Key	Default	Extra
	EnrollmentID	int	NO	PRI		
	StudentID	int	YES	MUL		
	CourseID	int	YES	MUL		
	Semester	varchar(20)	YES			
	Year	int	YES			
	Grade	varchar(5)	YES			*/

--  describe the structure of each table and copy paste the Output 

-- Perform the following operations on the each of the tables
-- 01: add 2 new columns for each table

ALTER TABLE Departments ADD COLUMN EstablishedYear YEAR, ADD COLUMN Website VARCHAR(100);
desc Departments;
	/* DepartmentID	int	NO	PRI		
	DepartmentName	varchar(100)	NO			
	HOD	varchar(100)	YES			
	ContactEmail	varchar(100)	YES			
	PhoneNumber	varchar(15)	YES			
	Location	varchar(100)	YES			*/
    
ALTER TABLE Course ADD COLUMN CourseType VARCHAR(30), ADD COLUMN Mode VARCHAR(20);
desc Course;
/*	Field	Type	Null	Key	Default	Extra
	CourseID	int	NO	PRI		
	CourseName	varchar(100)	NO			
	Credits	int	YES			
	DepartmentID	int	YES	MUL		
	Duration	varchar(50)	YES			
	Fee	decimal(10,2)	YES			
	CourseType	varchar(30)	YES			
	Mode	varchar(20)	YES	*/
    
ALTER TABLE Students ADD COLUMN Address VARCHAR(100), ADD COLUMN Gender CHAR(1);
desc Students;
/*	Field	Type	Null	Key	Default	Extra
	StudentID	int	NO	PRI		
	FirstName	varchar(50)	NO			
	LastName	varchar(50)	YES			
	Email	varchar(100)	YES			
	DateOfBirth	date	YES			
	CourseID	int	YES	MUL		
	Address	varchar(100)	YES			
	Gender	char(1)	YES			*/
    
ALTER TABLE Faculty ADD COLUMN JoiningDate DATE, ADD COLUMN Salary DECIMAL(10,2);
desc Faculty;
/*	Field	Type	Null	Key	Default	Extra
	FacultyID	int	NO	PRI		
	FacultyName	varchar(100)	NO			
	DepartmentID	int	YES	MUL		
	Qualification	varchar(100)	YES			
	Email	varchar(100)	YES			
	PhoneNumber	varchar(15)	YES			
	JoiningDate	date	YES			
	Salary	decimal(10,2)	YES		*/
	
ALTER TABLE Enrollments ADD COLUMN Status VARCHAR(20), ADD COLUMN Remarks VARCHAR(100);
desc Enrollments;
/*	Field	Type	Null	Key	Default	Extra
	EnrollmentID	int	NO	PRI		
	StudentID	int	YES	MUL		
	CourseID	int	YES	MUL		
	Semester	varchar(20)	YES			
	Year	int	YES			
	Grade	varchar(5)	YES			
	Status	varchar(20)	YES			
	Remarks	varchar(100)	YES			*/
    
-- 02: Modify the existing column from each table
ALTER TABLE Departments MODIFY COLUMN DepartmentName VARCHAR(80);
desc Departments;
/* 	Field	Type	Null	Key	Default	Extra
	DepartmentID	int	NO	PRI		
	DepartmentName	varchar(80)	YES			
	HOD	varchar(100)	YES			
	ContactEmail	varchar(100)	YES			
	PhoneNumber	varchar(15)	YES			
	Location	varchar(100)	YES			
	EstablishedYear	year	YES			
	Website	varchar(100)	YES			*/
    
 ALTER TABLE Course MODIFY COLUMN CourseName VARCHAR(100); 
 desc Course;
/* 	Field	Type	Null	Key	Default	Extra
	CourseID	int	NO	PRI		
	CourseName	varchar(100)	NO			
	Credits	int	YES			
	DepartmentID	int	YES	MUL		
	Duration	varchar(50)	YES			
	Fee	decimal(10,2)	YES			
	CourseType	varchar(30)	YES			
	Mode	varchar(20)	YES		*/	
    
 ALTER TABLE Students MODIFY COLUMN FirstName VARCHAR(60);
desc Students;
/* 	Field	Type	Null	Key	Default	Extra
	StudentID	int	NO	PRI		
	FirstName	varchar(60)	YES			
	LastName	varchar(50)	YES			
	Email	varchar(100)	YES			
	DateOfBirth	date	YES			
	CourseID	int	YES	MUL		
	Address	varchar(100)	YES			
	Gender	char(1)	YES			*/
    
 ALTER TABLE Faculty MODIFY COLUMN FacultyName VARCHAR(60);   
 desc Faculty;
 /* 	Field	Type	Null	Key	Default	Extra
	FacultyID	int	NO	PRI		
	FacultyName	varchar(60)	YES			
	DepartmentID	int	YES	MUL		
	Qualification	varchar(100)	YES			
	Email	varchar(100)	YES			
	PhoneNumber	varchar(15)	YES			
	JoiningDate	date	YES			
	Salary	decimal(10,2)	YES			*/
    
 ALTER TABLE  Enrollments MODIFY COLUMN Grade VARCHAR(5);  
desc Enrollments;
/* 	Field	Type	Null	Key	Default	Extra
	EnrollmentID	int	NO	PRI		
	StudentID	int	YES	MUL		
	CourseID	int	YES	MUL		
	Semester	varchar(20)	YES			
	Year	int	YES			
	Grade	varchar(5)	YES			
	Status	varchar(20)	YES			
	Remarks	varchar(100)	YES			*/
    
    
    
-- 03 change the datatypes
ALTER TABLE Departments MODIFY COLUMN PhoneNumber VARCHAR(20);
desc Departments; 
/* 	Field	Type	Null	Key	Default	Extra
	DepartmentID	int	NO	PRI		
	DepartmentName	varchar(80)	YES			
	HOD	varchar(100)	YES			
	ContactEmail	varchar(100)	YES			
	PhoneNumber	varchar(20)	YES			
	Location	varchar(100)	YES			
	EstablishedYear	year	YES			
	Website	varchar(100)	YES			*/
 
 ALTER TABLE Course MODIFY COLUMN Fee DECIMAL(12,2);
 desc Course;
 /* 	Field	Type	Null	Key	Default	Extra
	CourseID	int	NO	PRI		
	CourseName	varchar(100)	NO			
	Credits	int	YES			
	DepartmentID	int	YES	MUL		
	Duration	varchar(50)	YES			
	Fee	decimal(12,2)	YES			
	CourseType	varchar(30)	YES			
	Mode	varchar(20)	YES			*/
    
ALTER TABLE Students MODIFY COLUMN Email VARCHAR(100);
desc Students;
/* 	Field	Type	Null	Key	Default	Extra
	StudentID	int	NO	PRI		
	FirstName	varchar(60)	YES			
	LastName	varchar(50)	YES			
	Email	varchar(100)	YES			
	DateOfBirth	date	YES			
	CourseID	int	YES	MUL		
	Address	varchar(100)	YES			
	Gender	char(1)	YES			*/
    
 ALTER TABLE Faculty MODIFY COLUMN Qualification VARCHAR(80);
 desc Faculty;
 /* 	Field	Type	Null	Key	Default	Extra
	FacultyID	int	NO	PRI		
	FacultyName	varchar(60)	YES			
	DepartmentID	int	YES	MUL		
	Qualification	varchar(80)	YES			
	Email	varchar(100)	YES			
	PhoneNumber	varchar(15)	YES			
	JoiningDate	date	YES			
	Salary	decimal(10,2)	YES			*/
    
 ALTER TABLE Enrollments MODIFY COLUMN Year YEAR;
 desc Enrollments;
   /* 	Field	Type	Null	Key	Default	Extra
	EnrollmentID	int	NO	PRI		
	StudentID	int	YES	MUL		
	CourseID	int	YES	MUL		
	Semester	varchar(20)	YES			
	Year	year	YES			
	Grade	varchar(5)	YES			
	Status	varchar(20)	YES			
	Remarks	varchar(100)	YES			*/

-- 04: Rename a column
ALTER TABLE Departments CHANGE COLUMN HOD HeadOfDepartment VARCHAR(50);
desc Departments;
/* 	Field	Type	Null	Key	Default	Extra
	DepartmentID	int	NO	PRI		
	DepartmentName	varchar(80)	YES			
	HeadOfDepartment	varchar(50)	YES			
	ContactEmail	varchar(100)	YES			
	PhoneNumber	varchar(20)	YES			
	Location	varchar(100)	YES			
	EstablishedYear	year	YES			
	Website	varchar(100)	YES			*/
    
ALTER TABLE Course CHANGE COLUMN Duration CourseDuration INT;
desc Course;
/* 	Field	Type	Null	Key	Default	Extra
	CourseID	int	NO	PRI		
	CourseName	varchar(100)	NO			
	Credits	int	YES			
	DepartmentID	int	YES	MUL		
	CourseDuration	int	YES			
	Fee	decimal(12,2)	YES			
	CourseType	varchar(30)	YES			
	Mode	varchar(20)	YES			*/
    
 ALTER TABLE Students CHANGE COLUMN DateOfBirth DOB DATE;
 desc Students;
 /* 	Field	Type	Null	Key	Default	Extra
	StudentID	int	NO	PRI		
	FirstName	varchar(60)	YES			
	LastName	varchar(50)	YES			
	Email	varchar(100)	YES			
	DOB	date	YES			
	CourseID	int	YES	MUL		
	Address	varchar(100)	YES			
	Gender	char(1)	YES			*/
    
 ALTER TABLE Faculty CHANGE COLUMN Qualification Degree VARCHAR(80);
 desc Faculty;
 /* 	Field	Type	Null	Key	Default	Extra
	FacultyID	int	NO	PRI		
	FacultyName	varchar(60)	YES			
	DepartmentID	int	YES	MUL		
	Degree	varchar(80)	YES			
	Email	varchar(100)	YES			
	PhoneNumber	varchar(15)	YES			
	JoiningDate	date	YES			
	Salary	decimal(10,2)	YES			*/
    
ALTER TABLE Enrollments CHANGE COLUMN Remarks Notes VARCHAR(100);
 desc Enrollments;
 /* 	Field	Type	Null	Key	Default	Extra
	EnrollmentID	int	NO	PRI		
	StudentID	int	YES	MUL		
	CourseID	int	YES	MUL		
	Semester	varchar(20)	YES			
	Year	year	YES			
	Grade	varchar(5)	YES			
	Status	varchar(20)	YES			
	Notes	varchar(100)	YES			*/
   
-- 05: Drop a column
ALTER TABLE Departments DROP COLUMN PhoneNumber;
desc Departments;
/* 	Field	Type	Null	Key	Default	Extra
	DepartmentID	int	NO	PRI		
	DepartmentName	varchar(80)	YES			
	HeadOfDepartment	varchar(50)	YES			
	ContactEmail	varchar(100)	YES			
	Location	varchar(100)	YES			
	EstablishedYear	year	YES			
	Website	varchar(100)	YES			*/
    
 ALTER TABLE Course DROP COLUMN CourseDuration;
   desc Course;
   /* 	Field	Type	Null	Key	Default	Extra
	CourseID	int	NO	PRI		
	CourseName	varchar(100)	NO			
	Credits	int	YES			
	DepartmentID	int	YES	MUL		
	Fee	decimal(12,2)	YES			
	CourseType	varchar(30)	YES			
	Mode	varchar(20)	YES			*/
    
ALTER TABLE Students DROP COLUMN Email;
desc Students;
/* 	Field	Type	Null	Key	Default	Extra
	StudentID	int	NO	PRI		
	FirstName	varchar(60)	YES			
	LastName	varchar(50)	YES			
	DOB	date	YES			
	CourseID	int	YES	MUL		
	Address	varchar(100)	YES			
	Gender	char(1)	YES			*/
    
 ALTER TABLE Faculty DROP COLUMN PhoneNumber;
   desc Faculty;
   /* 	Field	Type	Null	Key	Default	Extra
	FacultyID	int	NO	PRI		
	FacultyName	varchar(60)	YES			
	DepartmentID	int	YES	MUL		
	Degree	varchar(80)	YES			
	Email	varchar(100)	YES			
	JoiningDate	date	YES			
	Salary	decimal(10,2)	YES			*/
    
 ALTER TABLE Enrollments DROP COLUMN Status;
   desc Enrollments;
   /* 	Field	Type	Null	Key	Default	Extra
	EnrollmentID	int	NO	PRI		
	StudentID	int	YES	MUL		
	CourseID	int	YES	MUL		
	Semester	varchar(20)	YES			
	Year	year	YES			
	Grade	varchar(5)	YES			
	Notes	varchar(100)	YES			*/
    
-- 06: Rename the table
RENAME TABLE Faculty TO Teachers;
desc Teachers;

-- 07: describe the structure of the new table

/*  Additional set of questions 
--1 Add a new column Address (VARCHAR(100)) to the Students table.
--2 Add a column Gender (CHAR(1)) to the Students table.
--3 Add a column JoiningDate (DATE) to the Faculty table.
--4 Modify the column CourseName in the Courses table to increase its size from VARCHAR(50) to VARCHAR(100).
--5 Modify the column Location in the Departments table to VARCHAR(80).
--6 Rename the column Qualification in the Faculty table to Degree.
--7 Rename the table Faculty to Teachers.
--8 Drop the column PhoneNumber from the Departments table.
--9 Drop the column Email from the Students table.
--10 Drop the column Duration from the Courses table.
*/

SHOW TABLES; -- Before dropping the table

-- Drop the 'Courses' and 'Enrollments' tables from the database.
-- Write your SQL query below Codespace:

SHOW TABLES; -- After dropping the table Enrollement and Course

-- Note: Perform the specified operations on all the 5 tables in the system
-- End of Lab Experiment 01
-- Upload the Completed worksheet in the google classroom with file name USN _ LabScenario01
