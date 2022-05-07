create table Category(
CategoryId int identity(100,1) primary key,
CategoryName varchar(10),
)

create table Products(
ProductID int identity(1000,1) primary key,
productName varchar(20),
CategoryId int foreign key references Category(CategoryId) on delete cascade,
price float,
weight float,
stock int,
Description varchar(50)
)


create table Registration(
UserID int identity(10000,1) primary key,
UserName varchar(20),
Phone int,
Password varchar(15),
Address varchar(30)
)

create table ImageTable(
ImgId int identity(100000,1) primary key,
[image name] nvarchar(100),
[image] varbinary(max),
 ProductID int foreign key references Products(ProductID) on delete cascade
)

create table Cart(
CartId int identity(100,1) primary key ,
UserID int foreign key references Registration(UserID) on delete cascade,
ProductID int foreign key references Products(ProductID) on delete cascade
)