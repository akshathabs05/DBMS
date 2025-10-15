create database StudentMarks;
use StudentMarks;
create table student(
USN varchar(10),
StudentName varchar(20),
Age int,
Combination varchar(10),
M1 int,
M2 int,
M3 int
);
desc student;

insert into Student values ('USN001', 'Abhay', '16', 'PCMC', '90', '80', '85');
insert into Student values ('USN002', 'Akshata', '17', 'PCMB', '75', '60', '49');
insert into Student values ('USN003', 'Deeksha', '17', 'PCMC', '96', '89', '82');
insert into Student values ('USN004', 'Gaurav', '16', 'PCMB', '95', '90', '93');
insert into Student values ('USN005', 'Himani', '16', 'PCMC', '74', '50', '50');
insert into Student values ('USN006', 'Laxman', '16', 'PCMB', '74', '69', '79');
insert into Student values ('USN007', 'Prahlad', '16', 'PCMB', '83', '91', '96');
insert into Student values ('USN008', 'Pratiksha', '16', 'PCMC', '92', '60', '50');
insert into Student values ('USN009', 'Pradyumna', '17', 'PCMC', '90', '90', '90');
insert into Student values ('USN010', 'Varun', '16', 'PCMC', '100', '80', '85');
select * from Student;
alter table Student
add (Total int, Average int, Result varchar(4));
select * from Student;
update Student set Total=M1+M2+M3;
update Student set Average=(Total/3);
update Student set Result='Pass' where M1>=60 AND M2>=60 AND M3>=60;
update Student set Result='Fail' where M1<60 OR M2<60 OR M3<60;
select * from Student;
