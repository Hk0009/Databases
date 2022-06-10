-- Group By
-- This is a mechanism using which a Table rows can be arranges into a logical groups
-- based on Column Name

-- Get countg of Employees for Each DeptNo
-- Emp_Count is a Runtime Column Creation which will be available
-- only for the Following Select Query

select Count(*) as Emp_Count, DeptNo  from ComEmployee group by (DeptNo);
select DeptNo , sum(Salary) as Salary from ComEmployee group by (DeptNo);
-- Count of Employees for each Designation
Select Designation , Count(*) Empl_Count from ComEmployee group by (Designation);
--- Second Max salary Dept no wise

--Assignment Question
select DeptNo, max(Salary) as Salary  from ComEmployee where Salary  <(Select max(Salary) from ComEmployee ) group by DeptNo ;
select Designation, Max(Salary) as Max_Salary from ComEmployee Group by Designation;
select Designation, max(Salary) as Salary  from ComEmployee where Salary  <(Select max(Salary) from ComEmployee ) group by Designation ;

----Join
--Left join
-- Selects Data from the Left Table and matching rows from the Right Table
-- Left join returns all rows from the left table and its corresponding
-- matching records from the Right Table, but if there are not match found in
-- Right table then for the records from the left table the 'null' values will be
-- generated for the Right table
-- Left Table is Deprtment and Right Table is Employee
select Mydatabase.DeptNo, DeptName, EmpNo, EmpName, Salary, Designation , ComEmployee.DeptNo 
From Mydatabase Left join ComEmployee
on Mydatabase.DeptNo = ComEmployee.DeptNo; 

-- Right join
select Mydatabase.DeptNo, DeptName, EmpNo, EmpName, Salary, Designation , ComEmployee.DeptNo 
From Mydatabase Right join ComEmployee
on Mydatabase.DeptNo = ComEmployee.DeptNo;

-- if swap data in right join it will perform same as left join

--full join

select Mydatabase.DeptNo, DeptName, EmpNo, EmpName, Salary, Designation, ComEmployee.DeptNo
From Mydatabase Full Join ComEmployee 
on Mydatabase.DeptNo = ComEmployee.DeptNo;

