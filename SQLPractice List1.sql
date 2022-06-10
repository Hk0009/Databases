create Database Mydatabase;
Use Mydatabase;
Create Table Mydatabase(
DeptNo int Primary key,
DeptName Varchar(100) not null,
Location Varchar(100) ,
Capctay int not null
);


Alter Table MyDatabase alter Column Location varchar(100) Not Null;

insert into MyDatabase Values
(
  10, 'IT', 'Pune', 1000 
);
insert into  MyDatabase Values
(
  20, 'HR', 'Pune', 25 
);
insert into  MyDatabase Values
(
  30, 'SL', 'Pune', 45 
);
insert into  MyDatabase Values
(
  40, 'AC', 'Pune', 18 
);


select * from Mydatabase;

create Table ComEmployee(EmpNo int Primary Key, EmpName varchar(200) not null,
  Salary int not null, Designation varchar(100) not null, 
  DeptNo int not null  References Mydatabase (DeptNo)
);
alter table ComEmployee 
add Email varchar(100) not null;
Alter Table ComEmployee
	Alter Column EmpName varchar(300) not null; 

	insert into ComEmployee Values (101, 'Mahesh', 11000, 'Manager', 10, 'mahesh@msit.com');

insert into ComEmployee Values (102, 'Tejas', 11000, 'Manager', 20, 'tejas@msit.com');
insert into ComEmployee Values (103, 'Nandu', 11000, 'Manager', 30, 'nandu@msit.com');
insert into ComEmployee Values (104, 'Anil', 11000, 'Manager', 40, 'anil@msit.com');
insert into ComEmployee Values (105, 'Jaywant', 11000, 'Lead', 10, 'jaywany@msit.com');
insert into ComEmployee Values (106, 'Abhay', 11000, 'Lead', 20, 'abhay@msit.com');
insert into ComEmployee Values (107, 'Shyam', 11000, 'Lead', 30, 'shyam@msit.com');
insert into ComEmployee Values (108, 'Anil', 11000, 'Lead', 40, 'anil@msit.com');
insert into ComEmployee Values (109, 'Vikram', 11000, 'Sr.Manager', 10, 'vikram@msit.com');
insert into ComEmployee Values (110, 'Suprotim', 11000, 'Sr.Manager', 20, 'suprotim@msit.com');
insert into ComEmployee Values (111, 'Manish', 11000, 'Sr.Manager', 30, 'manish@msit.com');
insert into ComEmployee Values (112, 'Praveen', 11000, 'Sr.Manager', 40, 'praveen@msit.com');
insert into ComEmployee Values (113, 'Prasad', 11000, 'Staff', 10, 'prasad@msit.com');
insert into ComEmployee Values (114, 'Pranil', 11000, 'Staff', 20, 'pranil@msit.com');
insert into ComEmployee Values (115, 'Mukesh', 11000, 'Staff', 30, 'mukesh@msit.com');
insert into ComEmployee Values (116, 'Vivek', 11000, 'Staff', 40, 'vivek@msit.com');
insert into ComEmployee Values (117, 'Veenit', 11000, 'Engineer', 10, 'veenit@msit.com');
insert into ComEmployee Values (118, 'Ashwin', 11000, 'Clerk', 20, 'ashwin@msit.com');
insert into ComEmployee Values (119, 'Abhijit', 11000, 'Operator', 30, 'abhijit@msit.com');
insert into ComEmployee Values (120, 'Vaibhav', 11000, 'Staff', 40, 'vaibhav@msit.com');
insert into ComEmployee Values (121, 'Vaibhav', 12000, 'Staff', 40, 'vaibhav@msit.com');
insert into ComEmployee Values (122, 'Vaibhav', 13000, 'Staff', 40, 'vaibhav@msit.com');
insert into ComEmployee Values (123, 'Vaibhav', 14000, 'Staff',30, 'vaibhav@msit.com');
insert into ComEmployee Values (124, 'Vaibhav', 15000, 'Staff', 20, 'vaibhav@msit.com');
insert into ComEmployee Values (125, 'Vaibhav', 16000, 'Staff', 10, 'vaibhav@msit.com');