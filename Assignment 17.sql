Create function validate(@EmpNo int,@Salary varchar(100),@EmpName varchar(100))
returns int
as
begin
declare @result int
if @EmpNo<=0 and @Salary<=0 and @Empname != '[%[A-z]*%]'
set @result = 0;
else
set @result=1;
return @result;
End;
drop function validate;
Go
create proc sp_InsertEmployee1(@EmpNo int,@EmpName varchar(200),@Salary int,@Designation varchar(200),@DeptNo int,@Email varchar(100))
as
begin
if dbo.validate (@EmpNo,@EmpName,@Salary)=0
select 'Entery is invalid'
else
Insert into ComEmployee(EmpNo,EmpName,Salary,Designation,DeptNo,Email)
values
(@EmpNo,@EmpName,@Salary,@Designation,@DeptNo,@Email)
End;
Exec sp_InsertEmployee1 @EmpNo=300,@EmpName='Harsh',@Salary=100,@Designation='Manager',@DeptNo=10,@Email='hk@gmail.com';
Exec sp_InsertEmployee1 @EmpNo=-11,@EmpName='H@arsh',@Salary=-22,@Designation='Manager',@DeptNo=10,@Email='hk@gmail.com';

Delete  from ComEmployee where EmpNo=3002; 
drop proc sp_InsertEmployee1;
select * from ComEmployee;