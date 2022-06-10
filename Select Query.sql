select * from ComEmployee;

--insted of using (*) use column name 
select EmpNo, EmpName, Salary from ComEmployee;

-- Select only employee of specific Designation
select Empno, EmpName, Salary from ComEmployee where Designation='Manager';

--use Like operator
--Name starts with M
Select * from ComEmployee Where EmpName Like 'M%';
--Name ends with m
select EmpNo from ComEmployee where EmpName like '%m';
--name end with sh 
select * from ComEmployee where EmpName like '%sh';
--Select employee start with M and have 6 letter 
select * from ComEmployee Where EmpName like 'M_____';
select * from ComEmployee where EmpName like 'S%m';

select * from ComEmployee Where Designation='Manager' OR Designation='Lead';


Select MIN(Salary) from ComEmployee;
select Max(Salary) from ComEmployee;
select sum(Salary) from ComEmployee;
select Count(*) from ComEmployee;
select * from ComEmployee order by Salary;
select Distinct Designation from ComEmployee;
select top 20 Percent * from ComEmployee ;
