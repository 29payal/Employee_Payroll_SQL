-----UC1 Create Database----
create database Payroll_service

use Payroll_service

------UC2 Create a employee payroll table------
create table Employee_payroll
(
Id int identity(1,1) primary key,
Name varchar(20),
Salary int,
StartDate varchar(20)
)

--------UC3 insert data in the table------
insert into Employee_payroll values 
('payal',25000,'12-08-2019'),
('Ritu',23000,'22-09-2016'),
('Bill',12000,'19-11-2018'),
('Minu',22500,'14-03-2019'),
('Charlie',36123,'29-02-2020')

--------------------UC4 Retrive Data into Table---------
select * from Employee_payroll 

-------UC5 Retrieve salary data on a condition-----
select Salary from Employee_payroll where Name= 'Bill'
select Salary,Name from Employee_payroll where StartDate between ('20-04-2019') and ('25-04-2016')
select Salary from Employee_payroll where Id=4

-------UC6 Add one row Name as Gender in the table-----
ALTER TABLE Employee_payroll ADD Gender varchar(20)
UPDATE Employee_payroll set Gender = 'M' where Name= 'Bill' or Name = 'Charlie'
UPDATE Employee_payroll set Gender = 'F' where Name= 'payal' or Name= 'Ritu' or Name= 'Minu'

-----UC7 Calcuulate the avg, mim,max,count,sum and number of male and female in employee table----
select MAX(Salary) as MaxvalueforMale  from Employee_payroll where Gender= 'M' Group by Gender
select MAX(Salary) as MaxvalueforFemale from Employee_payroll where Gender = 'F' Group by Gender

select Min(Salary) as MimvalueForMale from Employee_payroll where Gender= 'M' Group by Gender
select Min(Salary) as MimvalueForFemale from Employee_payroll where Gender= 'F' Group by Gender

select AVG(Salary) as AverageforMale from Employee_payroll where Gender= 'M' Group by Gender
select avg(Salary) as AverageforFemale from Employee_payroll where Gender= 'F' Group by Gender

select SUM(Salary) as SumofMale from Employee_payroll where Gender= 'M' Group by Gender
select SUM(Salary) as SumofFemale from Employee_payroll where Gender= 'F' Group by Gender

select COUNt(Salary) as CountforMale  from Employee_payroll where Gender= 'M' Group by Gender
select COUNT(Salary) as COuntForFemale from Employee_payroll where Gender= 'F' Group by Gender
