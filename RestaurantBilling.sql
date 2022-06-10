create table Customerinfo(
CustomerId int Identity(1,1) Primary Key,
CustomerName varchar(100) not null,
CustomerMobile varchar(10)

);
create table DishInfo(
DishId  int Identity(1,1) Primary Key,
DishName varchar(100) not null,
Price int 

);

create table Orders(
orderId int Identity(1,1) Primary Key,
CustomerId int not null References CustomerInfo (CustomerId),
DishId int  not null References DishInfo (DishId)
);
alter table orders  ADD toatal int;
create table BillInfo(
BillNo int Identity(1,1) Primary Key,


CustomerId int not null References CustomerInfo (CustomerId),

DishId int  not null References DishInfo (DishId),
Total int   not null  

);


select * from DishInfo;

insert into DishInfo values('Roti',20);
insert into DishInfo values('Rice',60);
insert into DishInfo values('Chapati',10);
insert into DishInfo values('ChikenThali',150);
insert into DishInfo values('ChikenTikka',170);
insert into DishInfo values('ChikenChilli',130);
insert into DishInfo values('FishThali',200);
insert into DishInfo values('VegThali',100);
insert into DishInfo values('ShahiPaneer',120);
insert into DishInfo values('PaneerTikka',150);
insert into DishInfo values('PaneerPalak',130);
insert into DishInfo values('FriedRice',130);
insert into DishInfo values('ChickenLoliipop',120);
insert into DishInfo values('ChickenBiryani',170);
insert into DishInfo values('VegBiryani',120);
insert into DishInfo values('ChickenHandi',350);