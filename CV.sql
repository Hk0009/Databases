create database CV;
use  CV;
create table PersonalInfo(
MobileNo int Primary Key,  
FullName  Varchar(100),
Address varchar(100),
Email varchar(100),
Age int, 
Adhar int,

ImagefilePath Varchar(100),
ProfileFilePath Varchar(100)
);
drop table PersonalInfo;
drop table EducationInfo;
drop table ProfessionalInfo;
create table EducationInfo(
EducationId int  identity(1,1) primary Key,  
SSC float not null, 
HSC float not null   ,
Degree varchar(100) ,  
Masters varchar(100), 
MobileNo int references PersonalInfo(MobileNo) 
);
create table ProfessionalInfo
(
ProfessionalId int identity(1,1),
WorkExperience varchar(100) ,
_From Date ,
Till Date,
companies varchar(100),
Projects varchar(100) ,MobileNo int references PersonalInfo(MobileNo) 
);





