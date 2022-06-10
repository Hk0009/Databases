-- Using Stored Procs (SP)
-- A Simple SP to read all Employees
-- Syntax
-- Create Procedure | Proc [NAME] [INPUT, OUTPUT PARAMETERS] 
-- The Following SP is not having any input and output parameter
Create Procedure sp_GetEMp
As -- The Name SP and its Parameters (if any) will be uniquely used
Begin
   -- The Implementation
   Select * from ComEmployee;
End;
go
exec sp_GetEmp;
Go;

-- A SP with input parameter
-- NOTE: generally parameter name matches with actual column names
-- ParameterName is always Prefixed with '@' sign, 
-- Make Sure that the Implementation of SP (Code inside Begin...End) is implemented in
-- new line steps
create Proc sp_getEmployeeByDesig
@Designation varchar(100)
As 
Begin 
select EmpNo,EmpName,Salary,Designation, DeptNo
from ComEmployee
where Designation = @Designation
End;
Exec sp_getEmployeeByDesig @Designation='Manager';

-- this way you can give input and get the sutaible result

Go
Declare @Desig varchar(100);
set @Desig='lead';
Exec sp_getEmployeeByDesig @Designation=@Desig;
go

-- get sum of salary by deptno

create proc sp_sumSalaryDeptNoWise
@DeptNo int
as 
declare @sumSalary int
begin
select @sumSalary=Sum(Salary)
from ComEmployee
where Deptno=@DeptNo;
return @sumSalary;
End;

-- declare a variable that will collect the result from the proc

go
declare @sumSalary int;
Exec @sumSalary = sp_sumSalaryDeptNoWise @DeptNo=10;
select @sumSalary;
go
create proc sp_getsumsalarybydeptnowithoutparam
@DeptNo int,
@Result int Output
As
Begin 
Declare @SumSalary int;
Select @SumSalary = sum(Salary)
From ComEmployee
where @DeptNo=DeptNo
select @Result=@SumSalary;
End;

Go
Declare @res int;
Exec sp_getsumsalarybydeptnowithoutparam @DeptNo=10,@Result=@res OUTPUT;
select @res;
go;


--SP with insert operation
create proc sp_InsertDep
@DeptNo int , @DeptName varchar(100),@Location varchar(100),@Capacity int
As
Begin
Insert into Mydatabase(DeptNo,DeptName,Location,Capctay)
values(@DeptNo,@DeptName,@Location,@Capacity)
End;
go;
Exec sp_InsertDep @DeptNo=90,@DeptName='SYS',@Location='Pune',@Capacity=350;
go