create database JobApp;
use JobApp;


create table PersonalInfo(
PersonId int identity(1,1) Primary Key,
Personname Varchar(100),
MobileNo Varchar(100),
City Varchar(100),
State Varchar(100),
Age Varchar(100),
Gender Varchar(100),
ImageFilePath Varchar(300),
ResumeFilePath Varchar(300)
);
create table EducationalInfo(
EducationId int  identity(1,1) primary Key,  
SSC float not null, 
HSC float not null   ,
Degree varchar(100) ,  
Masters varchar(100), 
PersonId int references PersonalInfo(PersonId) 
);
drop table ProfessionalInfo;
create table ProfessionalInfo(
ProfessionalId int identity(1,1) Primary key,
WorkExperience varchar(100) ,
_From Date ,
Till Date,
companies varchar(100),
Projects varchar(100) ,
PersonId int references PersonalInfo(PersonId) 
);
select * from PersonalInfo;
select * from EducationalInfo;
select * from ProfessionalInfo;
create table LogDetails(
RequedtId int Identity(1,1) primary key,
Date smalldatetime,
ControllerName Varchar(100),
Actionname varchar (100),
Executiontime varchar(100)
);
drop table LogDetails;
create table LogException(
RequedtId int Identity(1,1) primary key,
Date smalldatetime,
ControllerName Varchar(100),
Actionname varchar (100),
ExceptionType varchar(100),
ExceptionMessage varchar(100),
Executiontime varchar(100)

);z				

create table Employeer(
Emp_id INT IDENTITY(1,1) PRIMARY KEY,
Emp_name varchar(30),
Contact_Number varchar(10),
Company_Name varchar(30),
Company_Description varchar(500)
)
select * from LogDetails;
select * from LogException;




select * from Categories;
Select * from Products;