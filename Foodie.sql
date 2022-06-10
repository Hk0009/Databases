create Database foodie;
use foodie;
create table RestaurantInfo(RestaurantID int Identity(1,1) Primary key,
RestaurantName varchar(100) ,
Contact varchar(100),
Description varchar(100)
);
Select * from RestaurantInfo where IdDeleted=1;
Delete  RestaurantInfo;
Create table FoodCategories( 
CategoryId int identity(1,1) Primary Key ,
CategoryName varchar(100) , ImageUrl Varchar(max), 
Date smalldatetime,
RestaurantID int references RestaurantInfo(RestaurantID)
);
create table Products(
ProductID int identity(1,1) Primary Key,
ProductName varchar(100),Description varchar(100),  Price int, Quantity int ,ImageUrl varchar(100), CategoryId int references FoodCategories(CategoryId) ,Date smalldatetime

);
Alter table Products add  RestaurantID int references RestaurantInfo(RestaurantID);
Alter table Products add  IsDeleted int;
Alter Table FoodCategories add IsDeleted int;
Create table PersonalInfo(
PersonlId  int Identity(1,1) Primary key, 
PersonName Varchar(100),
Mobile_No Varchar(100),
Contact varchar(100),
Adress varchar(300),
Pincode int 
);
create table Orders(
OrderId int identity(1,1) Primary Key, Quantity int,ProductID int references Products(ProductID),Date smalldatetime ,  PersonlId int references PersonalInfo(PersonlId)
);
create table cart
(
CartId int identity(1,1) Primary Key, Quantity int,ProductID int references Products(ProductID),Date smalldatetime ,  PersonlId int references PersonalInfo(PersonlId),Total int
);

create table Payment(
PaymentID int identity(1,1),  Mode varchar(100), PersonlId int references PersonalInfo(PersonlId) 
);
select * from Login;
Alter table Login add  RestaurantID int references RestaurantInfo(RestaurantID);
Alter table RestaurantInfo add IdDeleted int ;
Alter table Login Drop column Role;
Alter table RestaurantInfo ALter Column IsDeleted DROP DEFAULT ; 
int DEFAULT 1 
select * from role;

use foodie
select * from RestaurantInfo;
select * from FoodCategories;
select * from Products Where RestaurantID=3017;
select * from Orders;
select * from cart;
select * from Products where RestaurantID=3012;

Select * from role
Create table role(
Id int identity(1,1), UserId int references Login(UserId), Role varchar(100)
);
Insert into role values(1,'User');