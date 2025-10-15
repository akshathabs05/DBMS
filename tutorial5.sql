create database work;
use work;

create table department (
    dept_id int primary key,
    dept_name varchar(100),
    location varchar(100)
);
desc department;

create table employee (
    emp_id int primary key,
    emp_name varchar(100),
    age int,
    salary decimal(10, 2),
    designation varchar(100),
    address varchar(255),
    doj date,
    dept_id int,
    foreign key (dept_id) references department(dept_id)
);
desc employee;

insert into department values(1, 'Human Resources', 'New York');
insert into department values(2, 'Finance', 'Chicago');
insert into department values(3, 'Engineering', 'San Francisco');
insert into department values(4, 'Marketing', 'Los Angeles');
select*from department;

insert into employee values(101, 'Alice ', 30, 60000.00, 'HR Manager', '123 Main St, New York', '2019-04-15', 1);
insert into employee values(102, 'Bob ', 28, 55000.00, 'Financial Analyst', '456 Lakeview Dr, Chicago', '2020-07-22', 2);
insert into employee values(103, 'Charlie ', 35, 80000.00, 'Software Engineer', '789 Tech Ave, San Francisco', '2018-11-10', 3);
insert into employee values(104, 'Dia', 26, 50000.00, 'Marketing Executive', '321 Sunset Blvd, Los Angeles', '2021-03-05', 4);
insert into employee values(105, 'Eren', 40, 95000.00, 'Senior Developer', '654 Silicon Rd, San Francisco', '2017-06-30', 3);
select*from employee;

SET SQL_SAFE_UPDATES = 0;

UPDATE Employee
SET salary = salary + 5000
WHERE designation = 'Developer';

SET SQL_SAFE_UPDATES = 1;


select d.dept_id,d.dept_name,count(e.emp_id) as total_employees, avg(e.salary) as average_salary, max(e.salary) as highest_salary, min(e.salary) as lowest_salary
from department d join employee e on d.dept_id = e.dept_id group by d.dept_id, d.dept_name;

select 
    UPPER(emp_name) as emp_name_upper,
    UPPER(designation) as designation_upper,
    CONCAT(emp_name, ' works as ', designation) as job_description
from
    employee;
    
   
select emp_name, year(doj) as joining_year, timestampdiff(year, doj, CURDATE()) as years_worked from employee;

select e.emp_name, e.salary from employee e join department d on e.dept_id = d.dept_id where e.salary BETWEEN 40000 AND 80000 AND d.dept_name <> 'Sales';
	
select e.emp_name, e.designation, d.dept_name, d.location from employee e inner join department d on e.dept_id = d.dept_id;

select e.emp_id, e.emp_name, e.designation, d.dept_name from employee e left outer join department d on e.dept_id = d.dept_id;

select d.dept_id, d.dept_name, e.emp_id, e.emp_name, e.designation from employee e right outer join department d on e.dept_id = d.dept_id;

DELIMITER $$

create procedure insertemployee (
    IN p_emp_id int,
    IN p_emp_name varchar(100),
    IN p_age int,
    IN p_salary decimal(10,2),
    IN p_designation varchar(100),
    IN p_address varchar(255),
    IN p_doj date,
    IN p_dept_id int
)
BEGIN
  insert employee (emp_id, emp_name, age, salary, designation, address, doj, dept_id)
    values (p_emp_id, p_emp_name, p_age, p_salary, p_designation, p_address, p_doj, p_dept_id);
END $$

DELIMITER ;

DELIMITER $$

create procedure updatesalary (
    IN p_emp_id int,
    IN p_new_salary decimal(10,2)
)
BEGIN
    update employee
    set salary = p_new_salary
    where emp_id = p_emp_id;
END $$

DELIMITER ;

DELIMITER $$

create procedure deleteemployee (
    IN p_emp_id int
)
BEGIN
    delete from employee
    where emp_id = p_emp_id;
END $$

DELIMITER ;

select e.emp_name, d.dept_name, timestampdiff(year, e.doj, CURDATE()) as years_worked, e.salary + 5000 as salary_after_increment from employee e
join department d on e.dept_id = d.dept_id;


