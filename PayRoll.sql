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