create view DeptEmp
As 
 Select DeptName, Location, EmpNo, EmpName, Salary, Designation
	From Mydatabase, ComEmployee
	Where Mydatabase.DeptNo =  ComEmployee.DeptNo;
select * from DeptEmp;
Delete  from ComEmployee where EmpNo<=0 ;
