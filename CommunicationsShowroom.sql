--CREATE DATABASE CommunicationsShowroom
--USE CommunicationsShowroom
--GO

--CREATE TABLE Client(
--Id int identity primary key,
--[Name] nvarchar(70),
--[LastName]  nvarchar(70),
--[Number] nvarchar(70),
--[Email] nvarchar(100),
--[Address] nvarchar(70)
--)

--CREATE TABLE Device(
--Id int identity primary key,
--[Brand] nvarchar(70),
--[Model]  nvarchar(70),
--[DeviceType] nvarchar(70),
--[Price] int,
--[AmountInStock] int
--)
--CREATE TABLE OrdersStatus(
--Id int identity primary key,
--Status nvarchar(50)
--)


--CREATE TABLE InfoEmployees(
--Id int identity primary key,
--[Name] nvarchar(70),
--[LastName]  nvarchar(70),
--[Position] nvarchar(70),
--[Email] nvarchar(100),
--[DateEnterOnJob] DATE ,
--[Salary] int,
--[GoodsSold] int,
--FOREIGN KEY([GoodsSold]) REFERENCES Device,
--)
--CREATE TABLE RepairOrders(
--Id int identity primary key,
--[Date] Date,
--[Id_Client]  int ,
--[Id_Device] int,
--[Id_Status] int,
--FOREIGN KEY([Id_Status]) REFERENCES OrdersStatus,
--FOREIGN KEY([Id_Device]) REFERENCES Device,
--FOREIGN KEY([Id_Client]) REFERENCES Client,
--[Price] int,
--)

--CREATE TABLE SalesStatus(
--Id int identity primary key,
--Status nvarchar(50)
--)

--create table StatusAccount
--(
--[Id] int identity primary key,
--[StatusAccount] nvarchar(50),
--)

--CREATE TABLE AccountClient(
--Id int identity primary key,
--[LoginClient] nvarchar(50),
--[PasswordClient] nvarchar(50),
--[Id_Client]  int ,
--[Id_Status] int,

--FOREIGN KEY([Id_Status]) REFERENCES StatusAccount,
--FOREIGN KEY([Id_Client]) REFERENCES Client,
--)

--CREATE TABLE AccountEmployees(
--Id int identity primary key,
--[LoginEmployees] nvarchar(50),
--[PasswordEmployees] nvarchar(50),
--[Id_Employees] int,
--[Id_Status] int,
--FOREIGN KEY([Id_Status]) REFERENCES StatusAccount,
--FOREIGN KEY([Id_Employees]) REFERENCES InfoEmployees,
--)

--CREATE TABLE Sales(
--Id int identity primary key,
--[Date] Date,
--[Id_Client]  int ,
--[Id_Device] int,
--[Price] int,
--[Id_Status] int,
--FOREIGN KEY([Id_Status]) REFERENCES OrdersStatus,
--FOREIGN KEY([Id_Device]) REFERENCES Device,
--FOREIGN KEY([Id_Client]) REFERENCES Client,
--FOREIGN KEY([Id_Status]) REFERENCES SalesStatus,
--)

--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Петров	','	Александр	','	+79284602465	','	mcnamara@hotmail.com	',	612020	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Филиппова	','	Екатерина	','	+79289503246	','	mrobshaw@mac.com	',	566020	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Зайцева	','	Арина	','	+79288829392'	,'	denism@msn.com	',	87200	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('Григорьев','	Матвей	','	+79280056504	','	dimensio@yahoo.ca	',855528	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Климова	','	Анна	','	+79287421177	','	nighthawk@verizon.net	',	49483	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Серова	','	Ярослава	','	+79282844206	','	ardagna@outlook.com	',	638443	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Терехова	','	Мария	','	+79289892829	','	ovprit@sbcglobal.net	',	715350	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Денисов	','	Артемий	','	+79282458508	','	rogerspl@verizon.net	',	552383	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Тарасова	','	Алиса'	,'	+79284046826'	,'	aglassis@aol.com	',	256537	)
--INSERT INTO Client(Name,[LastName],[Number],[Email],[Address])VALUES('	Фадеева	','	Александра'	,'	+79280162123'	,'	jacks@me.com	',	649351	)
