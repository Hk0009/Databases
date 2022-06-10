create table EmployeeAdit(
Auditid int identity (1,1) Primary key,
auditEmpNo int not null,
auditDate Date not null
)
go
Create Trigger trg_InsertEmp
on ComEmployee
After Insert 
As
Begin 
Declare @EmpNo int;
select @EmpNo= EmpNo from Inserted 
Insert into EmployeeAdit
Values
(
@EmpNo,
GETDATE()
)
End;
Insert into ComEmployee Values (30011, 'Amit', 34000, 'Lead', 20, 'amit@msit.com',151);
Select * from EmployeeAdit;
create proc ap_abc1
@Designation Varchar(100)
as
begin
select * from ComEmployee where Designation=@Designation
end;
exec ap_abc1 @Designation='Manager' ;