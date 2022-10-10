-----UC1 Create Database----
create database Payroll_service

use Payroll_service

------UC2 Create a employee payroll table------
create table Employee_Payroll
(
Id int identity(1,1) primary key,
Name varchar(20),
Salary varchar(10),
StartDate varchar(20)
)

--------UC3 insert data in the table------
insert into employee_payroll values 
('payal',25000,'12-08-2019'),
('Ritu',23000.20,'22-09-2016'),
('Bill',12000.33,'19-11-2018'),
('Minu',22500.200,'14-03-2019'),
('Charlie',36123,'29-02-2020')

