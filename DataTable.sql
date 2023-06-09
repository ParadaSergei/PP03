USE [master]
GO
/****** Object:  Database [CommunicationsShowroom]    Script Date: 12.04.2023 22:17:45 ******/
CREATE DATABASE [CommunicationsShowroom]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CommunicationsShowroom', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CommunicationsShowroom.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CommunicationsShowroom_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CommunicationsShowroom_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CommunicationsShowroom] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CommunicationsShowroom].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CommunicationsShowroom] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET ARITHABORT OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CommunicationsShowroom] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CommunicationsShowroom] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CommunicationsShowroom] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CommunicationsShowroom] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET RECOVERY FULL 
GO
ALTER DATABASE [CommunicationsShowroom] SET  MULTI_USER 
GO
ALTER DATABASE [CommunicationsShowroom] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CommunicationsShowroom] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CommunicationsShowroom] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CommunicationsShowroom] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CommunicationsShowroom] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CommunicationsShowroom] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CommunicationsShowroom', N'ON'
GO
ALTER DATABASE [CommunicationsShowroom] SET QUERY_STORE = OFF
GO
USE [CommunicationsShowroom]
GO
/****** Object:  Table [dbo].[AccountClient]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountClient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginClient] [nvarchar](50) NULL,
	[PasswordClient] [nvarchar](50) NULL,
	[Id_Client] [int] NULL,
	[Id_Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountEmployees]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountEmployees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginEmployees] [nvarchar](50) NULL,
	[PasswordEmployees] [nvarchar](50) NULL,
	[Id_Employees] [int] NULL,
	[Id_Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NULL,
	[LastName] [nvarchar](70) NULL,
	[Number] [nvarchar](70) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](70) NULL,
	[Model] [nvarchar](70) NULL,
	[DeviceType] [nvarchar](70) NULL,
	[Price] [int] NULL,
	[AmountInStock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InfoEmployees]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoEmployees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NULL,
	[LastName] [nvarchar](70) NULL,
	[Position] [nvarchar](70) NULL,
	[Email] [nvarchar](100) NULL,
	[DateEnterOnJob] [date] NULL,
	[Salary] [int] NULL,
	[GoodsSold] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersStatus]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairOrders]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Id_Client] [int] NULL,
	[Id_Device] [int] NULL,
	[Id_Status] [int] NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Id_Client] [int] NULL,
	[Id_Device] [int] NULL,
	[Price] [int] NULL,
	[Id_Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesStatus]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusAccount]    Script Date: 12.04.2023 22:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusAccount] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountClient] ON 

INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (1, N'Alagannie', N'YSBJ9ZJ-', 11, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (2, N'Lfganeya', N'_6KG5BL0', 12, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (3, N'Useppercur', N'901U1H_4', 13, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (4, N'Rendalin', N'TLFFM37_', 14, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (5, N'Uraytonial', N'YNC_MH2N', 15, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (6, N'Quinnislavo', N'35FWTI4_', 16, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (7, N'Ontessaralda', N'M10R7_U2', 17, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (8, N'Operdres', N'1_LNF28K', 18, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (9, N'Ieldoreyna', N'_LRFR4-5', 19, 3)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (10, N'Heodoris', N'9XFOX6_B', 20, 1)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (1007, N'sdge', N'sdgsdg', 11, 1)
INSERT [dbo].[AccountClient] ([Id], [LoginClient], [PasswordClient], [Id_Client], [Id_Status]) VALUES (2005, N'фывф', N'фыв', 11, 1)
SET IDENTITY_INSERT [dbo].[AccountClient] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountEmployees] ON 

INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (1, N'Glyndal', N'ZM0Z-1-G', 1, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (2, N'Nitok', N'74VR-G0W', 2, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (3, N'Yanel', N'4-7CAV-1', 3, 1)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (4, N'Inerora', N'7SXM6KD_', 4, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (5, N'Jali', N'S_NHZU0W', 5, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (6, N'Rotheatl', N'7HDSN_PI', 6, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (7, N'Turi', N'_TOVCX1G', 7, 2)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (8, N'Zenev', N'AU-6SAEZ', 8, 2)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (9, N'Xterent', N'7YTZKC-5', 9, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (10, N'Ortony', N'BK_V45ZV', 10, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (11, N'Ximu', N'-51Q9X7R', 11, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (12, N'Gilmori', N'UHCA0C9-', 12, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (13, N'Dielly', N'HE4R_BY2', 13, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (14, N'Arayse', N'1UVY-ZUT', 13, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (1002, N'asdaf', N'ase-EAfsg', 3, 4)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (1004, N'sagfag', N'aga', 2, 2)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (1005, N'sdhgdsh', N'sdhdsh', 3, 1)
INSERT [dbo].[AccountEmployees] ([Id], [LoginEmployees], [PasswordEmployees], [Id_Employees], [Id_Status]) VALUES (2002, N'фыа', N'фыа', 2, 1)
SET IDENTITY_INSERT [dbo].[AccountEmployees] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (11, N'	Петров	', N'	Александр	', N'	+79284602465	', N'	mcnamara@hotmail.com	', N'612020')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (12, N'	Филиппова	', N'	Екатерина	', N'	+79289503246	', N'	mrobshaw@mac.com	', N'566020')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (13, N'	Зайцева	', N'	Арина	', N'	+79288829392', N'	denism@msns.com	', N'87200')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (14, N'Григорьев', N'	Матвей	', N'	+79280056504	', N'	dimensio@yahoo.ca	', N'855528')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (15, N'	Климова	', N'	Анна	', N'	+79287421177	', N'	nighthawk@verizon.net	', N'49483')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (16, N'	Серова	', N'	Ярослава	', N'	+79282844206	', N'	ardagna@outlook.com	', N'638443')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (17, N'	Терехова	', N'	Мария	', N'	+79289892829	', N'	ovprit@sbcglobal.net	', N'715350')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (18, N'	Денисов	', N'	Артемий	', N'	+79282458508	', N'	rogerspl@verizon.net	', N'552383')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (19, N'	Тарасова	', N'	Алиса', N'	+79284046826', N'	aglassis@aol.com	', N'256537')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (20, N'	Фадеева	', N'	Александра', N'	+79280162123', N'	jacks@me.com	', N'649351')
INSERT [dbo].[Client] ([Id], [Name], [LastName], [Number], [Email], [Address]) VALUES (1002, N'Сергей', N'Парада', N'+79184212600', N'dhgfyuoHH@gmail.com', N'234516')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Device] ON 

INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (1, N'Iphone', N'iphone 5', N'phone', 2000, 15)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (2, N'Iphone', N'iphone 6', N'phone', 4000, 20)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (3, N'Iphone', N'iphone 7', N'phone', 10000, 25)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (4, N'Iphone', N'iphone 8', N'phone', 20000, 30)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (5, N'Iphone', N'iphone 10', N'phone', 30000, 30)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (6, N'Iphone', N'iphone 10 pro', N'phone', 40000, 10)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (7, N'Iphone', N'iphone 10 pro max', N'phone', 40000, 20)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (8, N'Iphone', N'iphone 10R', N'phone', 25000, 30)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (9, N'Iphone', N'iphone 11', N'phone', 14000, 30)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (10, N'Iphone', N'iphone 12', N'phone', 70000, 30)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (11, N'Iphone', N'iphone 13', N'phone', 18000, 30)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (12, N'samsung', N'galaxy z fold 3', N'phone', 50000, 15)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (13, N'samsun', N'galaxy z fold 4', N'phone', 65000, 13)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (14, N'samsung', N'galaxy z fold 5', N'phone', 80000, 11)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (15, N'samsung', N'galaxy z flip 3', N'phone', 95000, 9)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (16, N'samsung', N'galaxy z flip 4', N'phone', 110000, 7)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (17, N'samsung', N'galaxy z flip 4 5G', N'phone', 125000, 5)
INSERT [dbo].[Device] ([Id], [Brand], [Model], [DeviceType], [Price], [AmountInStock]) VALUES (1001, N'йццйк', NULL, N'йцвйц', 123, 2)
SET IDENTITY_INSERT [dbo].[Device] OFF
GO
SET IDENTITY_INSERT [dbo].[InfoEmployees] ON 

INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (1, N'Антипова', N'Варвара', N'кассир', N'mequozuppeimmu-9128@yopmail.com', CAST(N'2016-08-29' AS Date), 10000, 3)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (2, N'Митрофанова', N'Валентина', N'Менеджер', N'wiffeuppezaumme-5137@yopmail.com', CAST(N'2021-06-09' AS Date), 16000, 3)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (3, N'Лаврентьева', N'Кристина', N'Руководитель цифровых проектов', N'residauwutou-4942@yopmail.com', CAST(N'2021-09-08' AS Date), 19000, 1)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (4, N'Иванова', N'Каролина', N'Менеджер', N'joxoittauddattu-3883@yopmail.com', CAST(N'2010-05-06' AS Date), 13000, 5)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (5, N'Соколова', N'Кира', N'Аналитик VAS продуктов', N'yucolupicri-6140@yopmail.com', CAST(N'2022-09-08' AS Date), 10000, 6)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (6, N'Голубев', N'Кирилл', N'Юрисконсульт-эксперт', N'bregufobapa-8656@yopmail.com', CAST(N'2017-02-20' AS Date), 7000, 5)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (7, N'Смирнов', N'Дмитрий', N'Системный аналитик', N'meummozaulucru-8551@yopmail.com', CAST(N'2010-03-02' AS Date), 10000, 8)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (8, N'Сазонова', N'Мария', N'Эксперт по пакетной опорной сети', N'wettenallouxe-8824@yopmail.com', CAST(N'2014-02-09' AS Date), 10000, 3)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (9, N'Мальцев', N'Святослав', N'Специалист по операциям на складах', N'teiffeprareido-5642@yopmail.com', CAST(N'2016-01-16' AS Date), 10000, 7)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (10, N'Зотова', N'Анна', N'Специалист по семантике', N'sauquoproddogu-4389@yopmail.com', CAST(N'2022-11-20' AS Date), 64000, 14)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (11, N'Громов', N'Дмитрий', N'Специалист по продажам ', N'weunnappippiji-3148@yopmail.com', CAST(N'2021-12-23' AS Date), 16000, 10)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (12, N'Семенова', N'Арина', N'Инженер-энергетик', N'yifotrulanneu-9745@yopmail.com', CAST(N'2020-03-07' AS Date), 23000, 16)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (13, N'Попова', N'Валерия', N'Юрисконсульт', N'daddemipreimei-4931@yopmail.com', CAST(N'2020-08-16' AS Date), 10000, 17)
INSERT [dbo].[InfoEmployees] ([Id], [Name], [LastName], [Position], [Email], [DateEnterOnJob], [Salary], [GoodsSold]) VALUES (22, N'asf', N'asf', N'afsf', N'asfa', CAST(N'2019-02-08' AS Date), 12342, 12)
SET IDENTITY_INSERT [dbo].[InfoEmployees] OFF
GO
SET IDENTITY_INSERT [dbo].[OrdersStatus] ON 

INSERT [dbo].[OrdersStatus] ([Id], [Status]) VALUES (1, N'в процессе')
INSERT [dbo].[OrdersStatus] ([Id], [Status]) VALUES (2, N'выполнено')
INSERT [dbo].[OrdersStatus] ([Id], [Status]) VALUES (3, N'в очереди')
SET IDENTITY_INSERT [dbo].[OrdersStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[RepairOrders] ON 

INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (11, CAST(N'2021-06-30' AS Date), 11, 1, 3, 500)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (12, CAST(N'2021-11-18' AS Date), 12, 2, 1, 1000)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (13, CAST(N'2021-07-15' AS Date), 13, 3, 1, 200)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (14, CAST(N'2021-11-02' AS Date), 14, 4, 3, 460)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (15, CAST(N'2022-10-25' AS Date), 15, 5, 3, 460)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (16, CAST(N'2021-09-28' AS Date), 16, 6, 1, 500)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (17, CAST(N'2021-02-15' AS Date), 17, 7, 2, 1000)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (18, CAST(N'2022-10-20' AS Date), 18, 8, 2, 200)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (19, CAST(N'2022-03-31' AS Date), 19, 9, 1, 1000)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (20, CAST(N'2022-08-03' AS Date), 11, 10, 1, 200)
INSERT [dbo].[RepairOrders] ([Id], [Date], [Id_Client], [Id_Device], [Id_Status], [Price]) VALUES (1002, CAST(N'2012-05-03' AS Date), 11, 2, 2, 237)
SET IDENTITY_INSERT [dbo].[RepairOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (11, CAST(N'2021-02-26' AS Date), 11, 10, 70000, 1)
INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (12, CAST(N'2021-05-31' AS Date), 12, 9, 14000, 1)
INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (13, CAST(N'2021-01-06' AS Date), 13, 8, 25000, 1)
INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (14, CAST(N'2021-12-09' AS Date), 14, 7, 40000, 1)
INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (15, CAST(N'2021-10-25' AS Date), 15, 6, 40000, 1)
INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (16, CAST(N'2021-05-17' AS Date), 16, 5, 30000, 2)
INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (17, CAST(N'2022-01-22' AS Date), 17, 4, 20000, 1)
INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (18, CAST(N'2021-06-10' AS Date), 18, 3, 10000, 1)
INSERT [dbo].[Sales] ([Id], [Date], [Id_Client], [Id_Device], [Price], [Id_Status]) VALUES (19, CAST(N'2022-05-03' AS Date), 19, 2, 4000, 2)
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET IDENTITY_INSERT [dbo].[SalesStatus] ON 

INSERT [dbo].[SalesStatus] ([Id], [Status]) VALUES (1, N'оплачено')
INSERT [dbo].[SalesStatus] ([Id], [Status]) VALUES (2, N'не оплачено')
SET IDENTITY_INSERT [dbo].[SalesStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusAccount] ON 

INSERT [dbo].[StatusAccount] ([Id], [StatusAccount]) VALUES (1, N'администратор')
INSERT [dbo].[StatusAccount] ([Id], [StatusAccount]) VALUES (2, N'менеджер')
INSERT [dbo].[StatusAccount] ([Id], [StatusAccount]) VALUES (3, N'клиент')
INSERT [dbo].[StatusAccount] ([Id], [StatusAccount]) VALUES (4, N'сотрудник')
SET IDENTITY_INSERT [dbo].[StatusAccount] OFF
GO
ALTER TABLE [dbo].[AccountClient]  WITH CHECK ADD FOREIGN KEY([Id_Client])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[AccountClient]  WITH CHECK ADD FOREIGN KEY([Id_Status])
REFERENCES [dbo].[StatusAccount] ([Id])
GO
ALTER TABLE [dbo].[AccountEmployees]  WITH CHECK ADD FOREIGN KEY([Id_Employees])
REFERENCES [dbo].[InfoEmployees] ([Id])
GO
ALTER TABLE [dbo].[AccountEmployees]  WITH CHECK ADD FOREIGN KEY([Id_Status])
REFERENCES [dbo].[StatusAccount] ([Id])
GO
ALTER TABLE [dbo].[InfoEmployees]  WITH CHECK ADD FOREIGN KEY([GoodsSold])
REFERENCES [dbo].[Device] ([Id])
GO
ALTER TABLE [dbo].[RepairOrders]  WITH CHECK ADD FOREIGN KEY([Id_Client])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[RepairOrders]  WITH CHECK ADD FOREIGN KEY([Id_Device])
REFERENCES [dbo].[Device] ([Id])
GO
ALTER TABLE [dbo].[RepairOrders]  WITH CHECK ADD FOREIGN KEY([Id_Status])
REFERENCES [dbo].[OrdersStatus] ([Id])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Id_Client])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Id_Device])
REFERENCES [dbo].[Device] ([Id])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Id_Status])
REFERENCES [dbo].[OrdersStatus] ([Id])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([Id_Status])
REFERENCES [dbo].[SalesStatus] ([Id])
GO
USE [master]
GO
ALTER DATABASE [CommunicationsShowroom] SET  READ_WRITE 
GO
