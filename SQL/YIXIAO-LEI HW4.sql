CREATE DATABASE EdenInventory;

USE EdenInventory;
CREATE TABLE Customer(
CustomerNumber INT PRIMARY KEY NOT NULL,
CustomerName VARCHAR  (50) NOT NULL,
CustomerAddress1 VARCHAR(100) NOT NULL,
CustomerAddress2 VARCHAR(100) ,
City_State_Zip VARCHAR(100) NOT NULL,
CustomerPhone1 BIGINT NOT NULL,
CustomerPhone2 BIGINT,
CustomerSince DATE,
Notes VARCHAR(100),
CustomerType VARCHAR(100) NOT NULL
);
CREATE TABLE RetailSaleTicket(
OrderNumber INT PRIMARY KEY NOT NULL,
CustomerNumber INT NOT NULL,
SaleDate DATE,
OrderTotal decimal(9,2) NOT NULL,
DeliveryFee decimal(9,2),
 SalesTax decimal(9,2),
 SoldBy varchar(50),
 TicketNumber INT NOT NULL
);
CREATE TABLE OrderDetail(
OrderNumber INT PRIMARY KEY NOT NULL,
ProductNumber INT NOT NULL,
Quantity decimal(9) not null,
UnitPrice decimal(9,2) not null,
TotalPrice decimal(9.2) not null
);
CREATE TABLE Inventory(
ProductNumber INT PRIMARY KEY NOT NULL,
ProductName varchar(100) not null,
Category  varchar(50),
ProductDesciption varchar(50),
ProductTypes varchar(50),
itemSKU int not null,
CurrentInStore int not null default 0,
PlantFoot decimal(9,2),
Unit varchar(50)
);
CREATE TABLE Supplier(
ProductNumber INT PRIMARY KEY NOT NULL,
Quantity decimal(9) not null,
UnitPrice decimal(9,2) not null,
TotalPrice decimal(9,2) not null,
SupplierNumber int not null
);
CREATE TABLE SupplierReceipt(
SupplierNumber INT PRIMARY KEY NOT NULL,
BroughtDate DATE,
DelieveryFee decimal(9,2),
TotalCost decimal(9,2),
Tax decimal(9,2),
CompanyNumber int not null
);
CREATE TABLE SupplierCompany(
CompanyNumber INT PRIMARY KEY NOT NULL,
CompanyName Varchar(100),
Companyphone bigint
);
insert into Inventory (ProductNumber, ProductName, ProductTypes, Category , itemSKU, CurrentInStore, Unit ) 
values(
'001', 'Barn Red','Landscape Materials ','Gravel','001','0','cubic yards'
);
insert into Inventory (ProductNumber, ProductName, ProductTypes, Category , itemSKU, CurrentInStore, Unit) 
values(
'002', 'Quaker Blend', 'Landscape Materials ','Gravel','002','0','cubic yards'
);
insert into Inventory (ProductNumber, ProductName, ProductTypes, Category , itemSKU, CurrentInStore,Unit ) 
values(
'003', 'Coarse Hardwood','Landscape Materials ', 'Mulch','003','0','cubic yards'
);
insert into Inventory (ProductNumber, ProductName, ProductTypes, Category , itemSKU, CurrentInStore,Unit ) 
values(
'004', 'Crowne hill stone', 'Landscape Materials ','Fabricated Stone','004','0','pallet'
);
insert into Inventory (ProductNumber, ProductName, ProductTypes, Category , itemSKU, CurrentInStore,Unit ) 
values(
'005', 'Natural Limestone', 'Landscape Materials ','Natural Stone','005','0','pallet'
);
insert into Inventory (ProductNumber, ProductName, ProductTypes, Category , itemSKU, CurrentInStore,Unit ) 
values(
'006', 'Cobble Classic', 'Landscape Materials ','Precast Patio Pavers','006','0','pallet'
);
insert into Inventory (ProductNumber, ProductName,ProductTypes,  Category , itemSKU, CurrentInStore,PlantFoot,Unit ) 
values(
'007', 'American Tulip', 'Live stock ','Trees','007','0', '6','by size'
);
insert into Inventory (ProductNumber, ProductName,ProductTypes,  Category , itemSKU, CurrentInStore,PlantFoot,Unit) 
values(
'008', 'American Walnut', 'Live stock ','Trees','008','0', '6','by size'
);
insert into Inventory (ProductNumber, ProductName,ProductTypes,  Category , itemSKU, CurrentInStore,PlantFoot,Unit ) 
values(
'009', 'Balsam Fir', 'Live stock ','Trees','009','0', '8','by size'
);
insert into Inventory (ProductNumber, ProductName,ProductTypes,  Category , itemSKU, CurrentInStore,PlantFoot,Unit) 
values(
'010', 'American Holly', 'Live stock ','Shrubs','010','0', '4','by size'
);
insert into Inventory (ProductNumber, ProductName,ProductTypes,  Category , itemSKU, CurrentInStore,PlantFoot,Unit) 
values(
'011', 'Mugo Pine,', 'Live stock ','Shrubs','011','0', '4','by size'
);
insert into Inventory (ProductNumber, ProductName,ProductTypes,  Category , itemSKU, CurrentInStore, Unit) 
values(
'012', 'Euonymus alatus ‘Monstrosus’', 'Live stock ','Perennials','012','0','by size'
);
insert into Inventory (ProductNumber, ProductName,ProductTypes,  Category , itemSKU, CurrentInStore,Unit ) 
values(
'013', ' Euonymus alatus var. striatus ', 'Live stock ','Perennials','013','0','by size'
);
insert into Inventory (ProductNumber, ProductName,ProductTypes,  Category , itemSKU, CurrentInStore,PlantFoot, Unit ) 
values(
'014', 'Black Ash,', 'Live stock ','Trees','014','0', '10','by size'
);
insert into Customer (CustomerNumber, CustomerName,CustomerAddress1,  City_State_Zip , CustomerPhone1, CustomerSince, CustomerType ) 
values(
'001', 'Sophie', 'Table Mesa 3455 ','Boulder, Colorado, 80305','7209801350','1999-06-26', 'individual'
);
insert into Customer (CustomerNumber, CustomerName,CustomerAddress1,  City_State_Zip , CustomerPhone1, CustomerSince, CustomerType ) 
values(
'002', 'Ray', 'baseline ','Boulder, Colorado, 80305','7209801333','1970-06-26', 'individual'
);
insert into Customer (CustomerNumber, CustomerName,CustomerAddress1,  City_State_Zip , CustomerPhone1, CustomerSince, CustomerType ) 
values(
'004', 'Mistia', ' Narnia ','Narnia, Nowhere, 133333','7209991333','1999-09-09', 'individual'
);
insert into Customer (CustomerNumber, CustomerName, CustomerAddress1,  City_State_Zip , CustomerPhone1, CustomerSince, CustomerType ) 
values(
'005', 'Harry Potter', ' Gryffindor ','Gryffindor, London, 133333','7209991111','1999-09-09', 'individual'
);
insert into Customer (CustomerNumber, CustomerName, CustomerAddress1,  City_State_Zip , CustomerPhone1, CustomerSince, CustomerType ) 
values(
'006', 'Hermione Granger', ' Gryffindor ','Gryffindor, London, 1111111','7209991222','1999-09-09', 'individual'
);
insert into SupplierCompany (CompanyNumber, CompanyName, Companyphone ) 
values(
'001', 'HAPPYMOOD', ' 92099999999 '
);
insert into SupplierCompany (CompanyNumber, CompanyName, Companyphone ) 
values(
'002', 'GOODVALUE', ' 7209801111 '
);
insert into RetailSaleTicket (OrderNumber, CustomerNumber, SaleDate, OrderTotal, DeliveryFee,  SalesTax,  TicketNumber ) 
values(
'001','006', '2020-3-21','459.99', '0','99.99','001'
);
insert into RetailSaleTicket (OrderNumber, CustomerNumber, SaleDate, OrderTotal, DeliveryFee,  SalesTax,  TicketNumber ) 
values(
'002','004', '2021-2-21','80', '0','0','002'
);
insert into RetailSaleTicket (OrderNumber, CustomerNumber, SaleDate, OrderTotal, DeliveryFee,  SalesTax,  TicketNumber ) 
values(
'003','005', '1999-2-21','299.99', '0','99.99','003'
);
insert into RetailSaleTicket (OrderNumber, CustomerNumber, SaleDate, OrderTotal, DeliveryFee,  SalesTax,  TicketNumber ) 
values(
'004','001', '1999-6-30','899.99', '0','99.99','004'
);
insert into OrderDetail (OrderNumber, ProductNumber , Quantity, UnitPrice, TotalPrice ) 
values(
'001','001', '30','12', '360'
);
insert into OrderDetail (OrderNumber, ProductNumber , Quantity, UnitPrice, TotalPrice ) 
values(
'002','014', '50','30', '80'
);
insert into OrderDetail (OrderNumber, ProductNumber , Quantity, UnitPrice, TotalPrice ) 
values(
'003','012', '100','2', '200'
);
insert into OrderDetail (OrderNumber, ProductNumber , Quantity, UnitPrice, TotalPrice ) 
values(
'004','010', '10','80', '800'
);

insert into Supplier(ProductNumber, Quantity, UnitPrice, TotalPrice, SupplierNumber) 
values(
'001','800', '1','800', '001'
);
insert into Supplier(ProductNumber, Quantity, UnitPrice, TotalPrice, SupplierNumber) 
values(
'014','100', '23','2300', '002'
);
insert into Supplier(ProductNumber, Quantity, UnitPrice, TotalPrice, SupplierNumber) 
values(
'012','700', '1','700', '003'
);
insert into Supplier(ProductNumber, Quantity, UnitPrice, TotalPrice, SupplierNumber) 
values(
'011','600', '1','600', '004'
);
insert into SupplierReceipt(SupplierNumber, BroughtDate, DelieveryFee, TotalCost, Tax , CompanyNumber) 
values(
'001','2020-1-1', '9','809', '0','1'
);
insert into SupplierReceipt(SupplierNumber, BroughtDate, DelieveryFee, TotalCost, Tax , CompanyNumber) 
values(
'002','2009-1-1', '9','2309', '0','2'
);
insert into SupplierReceipt(SupplierNumber, BroughtDate, DelieveryFee, TotalCost, Tax , CompanyNumber) 
values(
'003','2010-1-1', '9','709', '0','1'
);
insert into SupplierReceipt(SupplierNumber, BroughtDate, DelieveryFee, TotalCost, Tax , CompanyNumber) 
values(
'004','2002-1-1', '9','609', '0','2'
);

use EdenInventory;
select* from Supplier s, OrderDetail o, Inventory i;

update Inventory, Supplier, Orderdetail
left join Inventory i on i.ProductNumber=Orderdetail.ProductNumber
set Inventory.CurrentInStore = supplier.quantity -Orderdetail.quantity
where  Inventory.ProductNumber =Supplier.ProductNumber;


drop table inventory;

select * from  inventory;


Select CustomerName, CustomerAddress1,City_State_Zip, CustomerPhone1, CustomerPhone2
FROM Customer;


CREATE TABLE Inventory(
ProductNumber INT PRIMARY KEY NOT NULL,
ProductName varchar(100) not null,
Category  varchar(50),
ProductDesciption varchar(50),
ProductTypes varchar(50),
itemSKU int not null,
CurrentInStore int not null default 0,
PlantFoot decimal(9,2),
Unit varchar(50)
);
SELECT category, itemSKU, ProductDesciption, CurrentInStore, Unit
FROM inventory;



update Inventory
set Inventory.ProductDesciption='something help you get beautiful yards ';

CREATE TABLE RetailSaleTicket(
OrderNumber INT PRIMARY KEY NOT NULL,
CustomerNumber INT NOT NULL,
SaleDate DATE,
OrderTotal decimal(9,2) NOT NULL,
DeliveryFee decimal(9,2),
 SalesTax decimal(9,2),
 SoldBy varchar(50),
 TicketNumber INT NOT NULL
);
CREATE TABLE Customer(
CustomerNumber INT PRIMARY KEY NOT NULL,
CustomerName VARCHAR  (50) NOT NULL,
CustomerAddress1 VARCHAR(100) NOT NULL,
CustomerAddress2 VARCHAR(100) ,
City_State_Zip VARCHAR(100) NOT NULL,
CustomerPhone1 BIGINT NOT NULL,
CustomerPhone2 BIGINT,
CustomerSince DATE,
Notes VARCHAR(100),
CustomerType VARCHAR(100) NOT NULL
);
CREATE TABLE OrderDetail(
OrderNumber INT PRIMARY KEY NOT NULL,
ProductNumber INT NOT NULL,
Quantity decimal(9) not null,
UnitPrice decimal(9,2) not null,
TotalPrice decimal(9.2) not null
);

select  RetailSaleTicket.TicketNumber, RetailSaleTicket.SaleDate, CustomerName, CustomerAddress1, RetailSaleTicket.OrderTotal, RetailSaleTicket.OrderNumber, OrderDetail.Quantity, OrderDetail.UnitPrice, RetailSaleTicket.SalesTax
from OrderDetail , Customer,RetailSaleTicket,  Inventory 
left join RetailSaleTicket w on w.orderNumber=OrderDetail.ordernumber
where r.customerNumber=c.customernumber;


















