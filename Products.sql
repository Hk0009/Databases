create Database Products
use Products
Create Table Product(
ProdictRowID int identity(1,1)  , 
ProductID int Primary key not null,
ProductName Varchar(100) not null, 
CategoryName Varchar(100) not null, 
Manufacturer Varchar(100) not null,
Price int not null
);



