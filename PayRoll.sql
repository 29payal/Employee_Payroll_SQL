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
insert into Employee_payroll values 
('payal',25000,'12-08-2019'),
('Ritu',23000.20,'22-09-2016'),
('Bill',12000.33,'19-11-2018'),
('Minu',22500.200,'14-03-2019'),
('Charlie',36123,'29-02-2020')

--------------------UC4 Retrive Data into Table---------
select * from Employee_payroll 

-------UC5 Retrieve salary data on a condition-----
select Salary from Employee_payroll where Name= 'Bill'
select Salary,Name from Employee_payroll where StartDate between ('20-04-2019') and ('25-04-2016')
select Salary from Employee_payroll where Id=4