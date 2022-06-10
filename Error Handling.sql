create proc sp_InsertEmployee
@EmpNo int, @EmpName varchar(100),@Salary int , @Designation varchar(100),@Deptno int
As
begin
	begin try 
		insert into ComEmployee(EmpNo, EmpName, Salary, Designation, DeptNo)
		values
		(@EmpNo,@EmpName ,@Salary , @Designation ,@Deptno)
		end try
	begin catch
	    select  ERROR_NUMBER() as Error_number,
		ERROR_SEVERITY() as Error_Severity,
		ERROR_MESSAGE() as Error_Meessage
	end catch
end;
Go

Exec sp_InsertEmployee @EmpNo=141, @EmpName='HK', @Salary=3454, @Designation='Manager', @DeptNo=10;
go

create proc sp_selectEmployeesByDeptNo
@DeptNo int
As
Begin
    
	IF(@DeptNo < 0)
		Select 'Dept No cannot be 0 or -VE'
	Else
		Select * from ComEmployee
		Where DeptNo=@DeptNo;
End;

Exec sp_selectEmployeesByDeptNo @DeptNo=-10;
Go


Drop proc sp_selectEmployeesByDeptNo;