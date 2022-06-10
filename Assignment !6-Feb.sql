
-- max
select * from ComEmployee
--Select Second Max Salary Per DeptNo
select DeptNo, max(salary) as Salary From ComEmployee where Salary<(select max(salary) from ComEmployee)  group by DeptNo; 
select DeptNo, max(Salary) as Salary from ComEmployee group by DeptNo;

--Select Max and Second Max Salary for Each Designation (Write Separate Queries)
select Designation, max(salary) as Salary From ComEmployee where Salary<(select max(salary) from ComEmployee)  group by Designation; 
select Designation, Max(Salary) as Max_Salary from ComEmployee Group by Designation;
--Create Strored Proc (SP) that will return Max Salary per DeptName
--Use Group By
select * from ComEmployee;
Create Proc sp_getMaxSalaryDeptWise
As
Begin
 
 select DeptName, Max(Salary) as Salary From ComEmployee , Mydatabase ---- here we are joining
 where ComEmployee.DeptNo= Mydatabase.DeptNo  -- giving the matching link
 Group by (Mydatabase.DeptName)  -- per department wise 
 
end;
Exec sp_getMaxSalaryDeptWise;


drop Proc sp_getMaxSalaryDeptWise;


---Insert
create proc sp_InsertEmployeess
@EmpNo int, @EmpName varchar(100),@Salary int,@Designation varchar(100),@DeptNo int,@Email varchar(100)
As
begin
Insert into ComEmployee(EmpNo, EmpName,Salary,Designation ,DeptNo ,Email)
values
(@EmpNo , @EmpName ,@Salary ,@Designation,@DeptNo ,@Email )
end;
Go
Exec sp_InsertEmployeess @EmpNo=134, @EmpName='harh' ,@Salary=55555,@Designation = 'Manager',@DeptNo=10,@Email='harsh@mail.com';

select * from Mydatabase;
select * from ComEmployee;
select Deptno, max(Salary) as Salary from ComEmployee where Salary<( select max(Salary) from ComEmployee ) group by Deptno;
select Designation , max(Salary) as salary from ComEmployee where salary< (Select max(Salary) from ComEmployee ) group by Designation;
Create proc maxsalarybydaptname
as
begin 
select DeptName, max(salary) from ComEmployee , Mydatabase 
where ComEmployee.DeptNo =Mydatabase.DeptNo
group by Mydatabase.DeptName
end;

Exec maxsalarybydaptname;

select *
From Mydatabase Left Join ComEmployee 
on Mydatabase.DeptNo = ComEmployee.DeptNo;