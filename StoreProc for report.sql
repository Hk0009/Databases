create proc sp_SelectEmployeebyDeptName
@DeptName varchar(100)
as
begin
select Mydatabase.DeptNo, DeptName , EmpNo, EmpName ,Salary,Designation,ComEmployee.DeptNo 
from Mydatabase inner join ComEmployee on Mydatabase.DeptNo = ComEmployee.DeptNo
where ComEmployee.DeptNo in (select Mydatabase.DeptNo from Mydatabase where DeptName=@DeptName)
End;
Exec  sp_SelectEmployeebyDeptName @DeptName= 'CS';
select 
create proc sp_SelectMaxSalaryByDeptName
@DeptName varchar(100)
as
begin 
Select  max(Salary) as max_Salary from Mydatabase inner join ComEmployee on Mydatabase.DeptNo = ComEmployee.DeptNo
Where ComEmployee.DeptNo in (select Mydatabase.DeptNo from Mydatabase where DeptName=@DeptName)
End;
drop proc sp_SelectMaxSalaryByDeptName
Exec sp_SelectMaxSalaryByDeptName  @DeptName= 'CS';

Create proc sp_SelectSumSalaryByDeptName
@DeptName Varchar(100)
as
begin 
select sum(Salary) as Salary from Mydatabase inner join ComEmployee on Mydatabase.DeptNo = ComEmployee.DeptNo 
where ComEmployee.DeptNo in (select Mydatabase.DeptNo from Mydatabase where DeptName=@DeptName) 
End;
Exec  sp_SelectSumSalaryByDeptName @DeptName= 'CS';

drop proc  sp_SelectSumSalaryByDeptName
create proc sp_SelectEmployeeByLocation
@Location Varchar(100)
as
begin
select Mydatabase.DeptNo, DeptName , EmpNo, EmpName ,Salary,Designation,ComEmployee.DeptNo 
from Mydatabase inner join ComEmployee on Mydatabase.DeptNo = ComEmployee.DeptNo
where ComEmployee.DeptNo in (select Mydatabase.DeptNo from Mydatabase where Location=@Location)
End;
Exec sp_SelectEmployeeByLocation @Location='Mumbai'
Select * from ComEmployee;
Select * from Mydatabase;