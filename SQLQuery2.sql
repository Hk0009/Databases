select * from Department;
Create Table EMployee(EmpNo int Primary Key, EmpName varchar(200) not null,
  Salary int not null, Designation varchar(100) not null, 
  DeptNo int not null  References Department (DeptNo)
);
Alter Table Employee 
	Add Email varchar(100) not null;
-- Modify the size of the EmpName 
Alter Table Employee
	Alter Column EmpName varchar(300) not null; 

-- Insert Employees

insert into Employee Values (101, 'Mahesh', 11000, 'Manager', 10, 'mahesh@msit.com');

insert into Employee Values (102, 'Mahesh', 1000, 'Manager', 20, 'mahesh@msit.com');
insert into Employee Values (103, 'Rajesh', 12000, 'Manager', 30, 'mahesh@msit.com');
insert into Employee Values (104, 'Geetesh', 13000, 'Manager', 40, 'mahesh@msit.com');
insert into Employee Values (105, 'Ram', 14000, 'Lead', 10, 'mahesh@msit.com');
insert into Employee Values (106, 'esh', 15000, 'Lead', 20, 'mahesh@msit.com');
insert into Employee Values (107, 'rishitsh', 16000, 'Lead', 30, 'mahesh@msit.com');
insert into Employee Values (108, 'Kavya', 17000, 'Lead', 40, 'mahesh@msit.com');
insert into Employee Values (109, 'Ramu', 18000, 'Sr.Manager', 10, 'mahesh@msit.com');
insert into Employee Values (110, 'Radhe', 19000, 'Sr.Manager', 20, 'mahesh@msit.com');
insert into Employee Values (111, 'Rutuja', 21000, 'Sr.Manager', 30, 'mahesh@msit.com');
insert into Employee Values (112, 'Vidhya', 22000, 'Sr.Manager', 40, 'mahesh@msit.com');
insert into Employee Values (113, 'Arpit', 23000, 'Staff', 10, 'mahesh@msit.com');
insert into Employee Values (114, 'Arogya', 24000, 'Staff', 20, 'mahesh@msit.com');
insert into Employee Values (115, 'Setu', 25000, 'Staff', 30, 'mahesh@msit.com');
insert into Employee Values (116, 'Rahesh', 26000, 'Staff', 40, 'mahesh@msit.com');
insert into Employee Values (117, 'Mahesh', 27000, 'Engineer', 10, 'mahesh@msit.com');
insert into Employee Values (118, 'Mahesh', 28000, 'Clerk', 20, 'mahesh@msit.com');
insert into Employee Values (119, 'Mahesh', 31000, 'Operator', 30, 'mahesh@msit.com');
insert into Employee Values (120, 'Mahesh', 30000, 'Staff', 40, 'mahesh@msit.com');
