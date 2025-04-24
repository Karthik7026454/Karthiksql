create database Karthik;
create database vicram;
create database harish;
create database nithish;
use Karthik;
Create Table employee_details( emp_id varchar(9),emp_name VARCHAR(20),emp_designation VARCHAR(20),emp_age int);
desc employee_details;

Insert into employee_details VALUES
('E40001','PRADEEP','HR',36),
('E40002','ASHOK','MANAGER',40),
('E40003','PAVAN KUMAR','ASST MANAGER',28),
('E40004','SANTOSH','STORE MANAGER',25),
('E40005','THAMAN','GENERAL MANAGER',26);
select * from employee_details;

select emp_id,emp_age from employee_details;
set sql_safe_updates = 0;

create database dummy;
drop database dummy;

create table stud_details(
id INT  PRIMARY KEY,
age INT CHECK (age < 25),
country varchar(10) DEFAULT 'INDIA',
dept VARCHAR(10) NOT NULL,
name VARCHAR(10) DEFAULT 'UNKNOWN');

desc stud_details;

INSERT INTO stud_details(id,age,dept,name) VALUES
(10,20,'MECH','depakki'),
(20,21,'MECH','Jothi'),
(25,20,'EEE','Arul'),
(15,24,'DD','Ashoki'),
(16,20,'DDS','Ash');

select * from stud_details;
update stud_details SET name = 'Prabhu' WHERE id =20;

select * from stud_details;

drop table stud_details;

-----------------------------------------------------

select * from employee_details;

UPDATE employee_details SET emp_name = 'Karthik' WHERE emp_id = 'E40002';

select * from employee_details;

ALTER TABLE employee_details
ADD Email VARCHAR(255);

select * from employee_details;



ALTER TABLE employee_details
DROP COLUMN Email;

delete from employee_details WHERE emp_id = 'E40005';

ALTER TABLE employee_details RENAME COLUMN emp_age to AGE;

TRUNCATE TABLE employee_details;
select * from employee_details;

