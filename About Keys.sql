

-- Primary Key: Used to Identify the Record Uniquely
-- This cannot accept Null Values , becuase the Primary Key applies the
-- Not Null Constraint on the Column 

insert into MyDatabase values (null, 'Test_Dept','Pune',1200);-- this cannot be done

-- Alter Table [TABLE-NAME] Add Constraint [Constraint-Name] UNIQUE [Column-NAME]
Alter table MyDatabase Add Constraint DeptName_Unique Unique(DeptName);
insert into MyDatabase values (50, 'IT','Pune',1200); -- will throw error
 
 -- create a table with unique  column
 Create table Users(
 UserId int Primary key,
 UserName varchar(100) Unique,
 Password Varchar(20) not null,);
 Insert into Users values(1,'harsh','mahesh');
 Insert into Users values(2,null,'mahesh'); --- unique key accept null value
 select * from Users;

 Drop Table Users;
 -- Using an Identity Key also known as AUTO_INCREMENT Key
 -- The column value will be automatically generated from 1 by default

 --Create table Comments(
 --  CommentId int Identity PRIMARY Key,
 --  Comment varchar(2000) Not Null

 Create table content(
 CommentId int Identity(1,10) Primary Key,
 Comment varchar(2000) not null
 
 );
 Insert into content values('hey i am harsh');
  Insert into content values('hey i am harsh');
   Insert into content values('hey i am harsh');
    Insert into content values('hey i am harsh');
	 Insert into content values('hey i am harsh');
	  Insert into content values('hey i am harsh');
	   Insert into content values('hey i am harsh');
	    Insert into content values('hey i am harsh');
		 Insert into content values('hey i am harsh');
		  Insert into content values('hey i am harsh');


 Select * from content;

 Truncate table content;
 Drop table content;
  -- Explore the Foreign Key

 -- 1. A Forieign key is a Primary Key of one table used in the other table to
 -- Establish relationship
	-- e.g. DeptNo is a Primary Key of Department table used as a Foreign Key in Employee Table 

 -- 2. The foreign-key provides the Parent-Child Relatioship OR aka Has-a Relationship
 -- across tables. 
	-- Each Employee has-a Department 'One-to-one' Relationship
	-- Each Department can have one-or-more employees aka 'One-to-Many' Relationship
		-- Department has Employees
 
 -- 3. The Foreign Key imposes(aka applies) the 'REFERENTIAL INTEGRITY' on a child tables
	-- Each Employee MUST have Department
 
 -- 4. The Child table can have value for the Foreign Key column that matched with the 
 -- value for the same column in the parent table
	-- If Employee Table (Child) row wants to have 10 as Value for DeptNo, then in Department Table (Parent)
		-- MUST have a row with DeptNo as 10



 insert into ComEmployee Values (201, 'Sameer', 11000, 'Manager', 10, 'tejas@msit.com');
 insert into ComEmployee Values (201, 'Sameer', 11000, 'Manager', 60, 'tejas@msit.com');  -- it will terminate because key doesnt match
 -- We cannot delete a record of parent class which is used by child
 Delete from Mydatabase Where DeptNo=50;
 Delete from Mydatabase Where DeptNo=40;
