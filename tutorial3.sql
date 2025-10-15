create database School2;
use School2;
create table Student2(
StudentID int primary key,
FirstName varchar(10),
LastName varchar(10),
DOB date,
Class varchar(5),
Marks int,
City varchar(10)
); 

create table Teacher2(
TeacherID int primary key,
FirstName varchar(10),
LastName varchar(10),
Sub varchar(10),
HireDate date,
Salary int
); 

create table course2(
CourseID int primary key,
CourseName varchar(10),
Credits int
);

create table admission2(
EnrollID int primary key,
StudentID int,
	foreign key (studentID) references Student2 (StudentID),
CourseID int,
	foreign key (CourseID) references Course2 (CourseID),
Grade int
);
desc student2;
desc teacher2;
desc course2;
desc admission2;

insert into course2 values ('001','Maths',2);
insert into course2 values ('002','English',3);

insert into Student2 values ('01', 'Laxman', 'Bhat', '2006-10-9', '12', '80', 'Bengaluru');
insert into Student2 values ('02', 'Akshatha', 'BS', '2006-02-05', '12', '90', 'Bengaluru');

insert into teacher2 values ('66', 'Jahnavi', 'PR', 'English', '2024-01-01', '100000');
insert into teacher2 values ('96', 'Deeksha', 'Maheesh', 'Maths', '2024-02-01', '100000');

insert into admission2 values ('30040', '01', '001', '12');
insert into admission2 values ('30041', '02', '002', '12');


select*from Student2;
/*1	Laxman	Bhat	2006-10-09	12	80	Bengaluru
2	Akshatha	BS	2006-02-05	12	90	Bengaluru*/

select*from teacher2;
/*1	Laxman	Bhat	2006-10-09	12	80	Bengaluru
2	Akshatha	BS	2006-02-05	12	90	Bengaluru*/

select*from course2;
/*1	Maths	2
2	English	3*/

select*from admission2;
/*30040	1	1	12
30041	2	2	12*/
    
select right(CourseName, 3) as LastThreeChars from course2;
/*	LastThreeChars
	ths
	ish*/
    
select concat(FirstName, ' ', LastName) as FullName from teacher2;      
/*Jahnavi PR
Deeksha Maheesh*/

select FirstName, length(FirstName) as NameLength from student2;
/*Laxman	6
Akshatha	8*/

alter table course2 modify column CourseName varchar(15);
update course2 set CourseName = replace(CourseName, 'Maths', 'Mathematics');

select abs(max(marks) - min(marks)) as AbsoluteDifference from Student2;
/*10*/
    
select round(salary, -3) as RoundedSalary from teacher2;
/*100000
100000*/

select CourseName, sqrt(credits) as CreditSquareRoot from course2;
/*	Mathematics	1.7320508075688772
	English	1.4142135623730951*/
    
select marks, ceil(marks) as CeilingMarks, floor(marks) as FloorMarks from Student2;
/*80	80	80
90	90	90*/
    
select sum(marks) % 5 as ModulusOfTotalMarks from Student2;
/*0*/
    
select now();
/*2025-09-10 22:21:42*/


select year(HireDate) as HireYear, month(HireDate) as HireMonth from teacher2; 
/*	2024	1
	2024	2*/
    
select FirstName, LastName from Student2 where month(DOB) = 2;
/*Akshatha	BS*/

select datediff(curdate(), HireDate) as DaysSinceHire from teacher2;
/*	618
	587*/

select count(StudentID) as TotalStudents from Student2;
/*	2*/
    
select avg(Salary) as AverageSalary from teacher2;
/*100000.0000*/
    
select max(marks) as HighestMarks, min(marks) as LowestMarks from Student2;
/*	90	80*/
    
show tables;
/*admission1
course1
student1
teacher1*/

select*from Student2;
/*1	Laxman	Bhat	2006-10-09	12	80	Bengaluru
2	Akshatha	BS	2006-02-05	12	90	Bengaluru*/

select*from course2;
/*1	Mathematics	2
2	English	3*/

select*from teacher2;
/*66	Jahnavi	PR	English	2024-01-01	100000
96	Deeksha	Maheesh	Maths	2024-02-01	100000*/

select*from admission2;
/*30040	1	1	12
30041	2	2	12*/
