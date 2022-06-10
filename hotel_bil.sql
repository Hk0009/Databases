create database hotel_billing;
use hotel_billing;
create table menu 
(
DishNo int Identity(1,1) Primary Key,
DishName varchar(100),
Price int not null
);

--drop table menu

insert into menu values
(
'Paneer',150
);
insert into menu values
(
'Daal',125
);
insert into menu values
(
'Chicken',180
);
insert into menu values
(
'Rice',100
);
insert into menu values
(
'Daal tadka',120
);
insert into menu values
(
'Roti',20
);
insert into menu values
(
'Naan',40
);
insert into menu values
(
'Briyani',200
);
insert into menu values
(
'Puri Bhaji',90
);
insert into menu values
(
'Egg roll',70
);
insert into menu values
(
'Paneer roll',80
);
insert into menu values
(
'Chicken roll',100
);

insert into menu values
(
'Jalebi',100
);
insert into menu values
(
'Milkshake',150
);
insert into menu values
(
'Icecream',70
);


select *from menu;


-------------------------------------------------------------------------------------------------
create table Customer_OrderDetails
(
Order_ID int Identity(1,1) Primary key,
Customer_Name varchar(100),
MobileNo varchar (100),
Table_No int not null
);

--drop table Customer_OrderDetails

insert into Customer_OrderDetails values
(
'Shreya','9822626792',2
);

Select *from Customer_OrderDetails
-------------------------------------------------------------------------------------------------


create table billing_Details
(
Order_No int Identity(1,1) primary key ,
Order_ID int  FOREIGN KEY REFERENCES Customer_OrderDetails(Order_ID),
DishNo int FOREIGN KEY REFERENCES menu(DishNo),
DishName varchar(100),
Quantity int not null,
Price int not null,
subTotal int not null,
);

--drop table billing_Details
 
insert into billing_Details values
(
2,1,1,150
);


create table finalBill
(
Billno int Identity(1,1) Primary key,
Order_ID int  FOREIGN KEY REFERENCES Customer_OrderDetails(Order_ID),
Billing_Amount float ,
Date smalldatetime not null
);

select *from billing_Details;
select *from Customer_OrderDetails;
select *from Menu;
select *from finalBill;

select Customer_Name, DishNo,Quantity,Total from Customer_OrderDetails inner join 
billing_Details as B on Customer_OrderDetails.Order_ID=B.Order_ID 
where Customer_OrderDetails.Order_ID=1;
delete from 

--dotnet ef dbcontext scaffold "Data Source=.;Initial Catalog=hotel_billing;Integrated Security=SSPI" Microsoft.EntityFrameworkCore.SqlServer -o Models


---------------------------------------------------------------------------------------------------------------------------





