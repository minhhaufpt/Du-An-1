USE [master]
GO
/****** Object:  Database [ManagerPhoneStore]    Script Date: 25/11/2022 12:43:58 PM ******/
CREATE DATABASE [ManagerPhoneStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ManagerPhoneStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.NGUYENMINHHAU\MSSQL\DATA\ManagerPhoneStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ManagerPhoneStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.NGUYENMINHHAU\MSSQL\DATA\ManagerPhoneStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ManagerPhoneStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ManagerPhoneStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ManagerPhoneStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ManagerPhoneStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ManagerPhoneStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ManagerPhoneStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ManagerPhoneStore] SET  MULTI_USER 
GO
ALTER DATABASE [ManagerPhoneStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ManagerPhoneStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ManagerPhoneStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ManagerPhoneStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ManagerPhoneStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ManagerPhoneStore]
GO
/****** Object:  User [minhhau]    Script Date: 25/11/2022 12:43:58 PM ******/
CREATE USER [minhhau] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ImportCoupon]    Script Date: 25/11/2022 12:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCoupon](
	[CodeCoupon] [int] IDENTITY(1,1) NOT NULL,
	[CodePhone] [nvarchar](10) NOT NULL,
	[CodeEmployee] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[DateImport] [datetime] NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_ImportCoupon] PRIMARY KEY CLUSTERED 
(
	[CodeCoupon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationCustomer]    Script Date: 25/11/2022 12:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationCustomer](
	[CodeCustomer] [int] IDENTITY(1,1) NOT NULL,
	[NameCustomer] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_InformationCustomer] PRIMARY KEY CLUSTERED 
(
	[CodeCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationPhone]    Script Date: 25/11/2022 12:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationPhone](
	[CodePhone] [nvarchar](10) NOT NULL,
	[NamePhone] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Color] [nvarchar](50) NULL,
	[OperatingSystem] [nvarchar](50) NULL,
	[Brand] [nvarchar](50) NULL,
	[CPU] [nvarchar](50) NULL,
	[ROM] [int] NULL,
	[RAM] [int] NULL,
	[ScreenResolution] [nvarchar](50) NULL,
	[Camera] [nvarchar](50) NULL,
	[Battery] [nvarchar](50) NULL,
	[YearOfManufacture] [int] NULL,
	[Material] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Origin] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[CodePhone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationUsers]    Script Date: 25/11/2022 12:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationUsers](
	[UserNames] [nvarchar](50) NOT NULL,
	[PassWords] [nvarchar](50) NOT NULL,
	[Roles] [bit] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BirthYear] [date] NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_InformationUsers] PRIMARY KEY CLUSTERED 
(
	[UserNames] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderBasic]    Script Date: 25/11/2022 12:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderBasic](
	[CodeOrder] [int] IDENTITY(1,1) NOT NULL,
	[CodeCustomer] [int] NOT NULL,
	[CodeEmpoyye] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[AddressOrder] [nvarchar](50) NULL,
	[DateOfPayment] [datetime] NULL,
	[Formality] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_OrderBasic] PRIMARY KEY CLUSTERED 
(
	[CodeOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 25/11/2022 12:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[CodeOrder] [int] NOT NULL,
	[CodePhone] [nvarchar](10) NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderDetail_1] PRIMARY KEY CLUSTERED 
(
	[CodeOrder] ASC,
	[CodePhone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remember]    Script Date: 25/11/2022 12:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remember](
	[CodeRemember] [int] NOT NULL,
	[UserNames] [nvarchar](50) NOT NULL,
	[PassWords] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Remember] PRIMARY KEY CLUSTERED 
(
	[CodeRemember] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 25/11/2022 12:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[CodeStatus] [int] NOT NULL,
	[DateOfPayment] [datetime] NULL,
	[Formality] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[CodeStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ImportCoupon] ON 

INSERT [dbo].[ImportCoupon] ([CodeCoupon], [CodePhone], [CodeEmployee], [Quantity], [DateImport], [Note]) VALUES (9, N'KSP01', N'nhanvienkithuat', 100, CAST(N'2022-11-21T21:12:20.027' AS DateTime), N'Name phone : iPhone 13 Pro Max')
INSERT [dbo].[ImportCoupon] ([CodeCoupon], [CodePhone], [CodeEmployee], [Quantity], [DateImport], [Note]) VALUES (10, N'KSP10', N'nhanvienkithuat', 100, CAST(N'2022-11-21T21:40:02.213' AS DateTime), N'None')
SET IDENTITY_INSERT [dbo].[ImportCoupon] OFF
GO
SET IDENTITY_INSERT [dbo].[InformationCustomer] ON 

INSERT [dbo].[InformationCustomer] ([CodeCustomer], [NameCustomer], [PhoneNumber], [Email], [Address], [Note]) VALUES (1, N'Nguyễn Minh Hậu', N'032590523', N'haunguye@gmail.com', N'TP.HCM', N'none')
INSERT [dbo].[InformationCustomer] ([CodeCustomer], [NameCustomer], [PhoneNumber], [Email], [Address], [Note]) VALUES (2, N'Nguyễn Ngọc Ánh Hoa', N'025252957', N'hoa@gmail.com', N'Bình Định', N'none')
INSERT [dbo].[InformationCustomer] ([CodeCustomer], [NameCustomer], [PhoneNumber], [Email], [Address], [Note]) VALUES (3, N'Nguyễn Tất Thành', N'033939337', N'thanh222@gmail.com', N'Đà Nẵng', N'none')
INSERT [dbo].[InformationCustomer] ([CodeCustomer], [NameCustomer], [PhoneNumber], [Email], [Address], [Note]) VALUES (7, N'Trần Huy Giáp', N'021424214', N'giap@gmail.com', N'Hà Nội', N'none')
INSERT [dbo].[InformationCustomer] ([CodeCustomer], [NameCustomer], [PhoneNumber], [Email], [Address], [Note]) VALUES (8, N'Nguyễn Thái Học', N'035235252', N'hoc@gmail.com', N'Cao Nguyên', N'none')
INSERT [dbo].[InformationCustomer] ([CodeCustomer], [NameCustomer], [PhoneNumber], [Email], [Address], [Note]) VALUES (9, N'Trịnh Văn Bá', N'023523535', N'banguyen@gmail.com', N'Gia Lai', N'noen')
INSERT [dbo].[InformationCustomer] ([CodeCustomer], [NameCustomer], [PhoneNumber], [Email], [Address], [Note]) VALUES (10, N'Trần Hữu Tài', N'023523555', N'tai@gmail.com', N'TP.HCM', N'none')
SET IDENTITY_INSERT [dbo].[InformationCustomer] OFF
GO
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP01', N'iPhone 13 Pro Max', 30000000.0000, 100, N'Green', N'IOS', N'Apple', N'Apple A14 Bionic', 128, 6, N'854 x 480 pixels', N'8MP', N'3600mAh', 2020, N'Anuminium', N'6.1 inch', N'China', N'KSP01.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP02', N'iPhone 12', 20000000.0000, 100, N'Green', N'IOS', N'Apple', N'Apple A11 Bionic', 120, 1, N'960 x 540 pixels', N'8MP', N'3600mAh', 2019, N'Anuminium', N'6.1 inch', N'China', N'KSP02.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP03', N'iPhone 11', 10000000.0000, 100, N'Black', N'IOS', N'Apple', N'Apple A10 Bionic', 120, 1, N'1280 x 720 pixels', N'8MP', N'3200mAh', 2019, N'Anuminium', N'6.1 inch', N'China', N'KSP03.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP04', N'iPhone 14 Pro Max', 40000000.0000, 100, N'Brown', N'IOS', N'Apple', N'Apple A16 Bionic', 560, 8, N'1280 x 720 pixels', N'8MP', N'3800mAh', 2020, N'Anuminium', N'6.7 inch', N'Japan', N'KSP04.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP05', N'iPhone XS', 30000000.0000, 100, N'Brown', N'IOS', N'Apple', N'Apple A12 Bionic', 128, 1, N'1280 x 720 pixels', N'8MP', N'3800mAh', 2019, N'Anuminium', N'6.7 inch', N'Japan', N'KSP05.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP06', N'Samsung Galaxy Z Fold4', 37000000.0000, 100, N'Brown', N'Android', N'SamSung', N'Snapdragon 8+ Gen 1 8 nhân', 560, 8, N'1280 x 720 pixels', N'16MP', N'3800mAh', 2021, N'Gold', N'6.7 inch', N'Japan', N'KSP06.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP10', N'OPPO Reno8', 8600000.0000, 100, N'Blue', N'Android', N'Oppo', N'Snapdragon 680 8 nhân', 560, 8, N'1280 x 720 pixels', N'1MP', N'3800mAh', 2022, N'Platic', N'6.5 inch', N'Canada', N'KSP10.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP11', N'VivoY15 series', 6000000.0000, 100, N'Violet', N'Android', N'Oppo', N'Snapdragon 680 8 nhân', 64, 6, N'3200 x 1800 pixels', N'32MP', N'3600mAh', 2019, N'Anuminium', N'6.3 inch', N'Brazil', N'No Image')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP12', N'Xiaomi 12T Pro 5G', 17000000.0000, 200, N'White', N'Android', N'Xaoimi', N'Snapdragon 8+ Gen 1 8 nhân', 240, 8, N'2160 x 1080 pixels', N'32MP', N'3600mAh', 2022, N'Silver', N'6.7 inch', N'Korea', N'KSP14.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP13', N'Realme 9 series', 7000000.0000, 100, N'Orange', N'Android', N'Redmi', N'Snapdragon 680 8 nhân', 560, 8, N'1440 x 720 pixels', N'16MP', N'3600mAh', 2022, N'Anuminium', N'6.5 inch', N'China', N'KSP13.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP14', N'Xiaomi Redmi Note 11 Pro', 7000000.0000, 100, N'White', N'Android', N'Redmi', N'MediaTek Helio G96 8 nhân', 240, 8, N'1440 x 720 pixels', N'20MP', N'3800mAh', 2022, N'Anuminium', N'6.3 inch', N'China', N'KSP14.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP15', N'OPPO A77s', 6000000.0000, 100, N'Black', N'Android', N'Oppo', N'Snapdragon 680 8 nhân', 240, 8, N'1440 x 720 pixels', N'16MP', N'3400mAh', 2022, N'Anuminium', N'6.3 inch', N'China', N'KSP15.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP16', N'Samsung Galaxy A32', 6000000.0000, 100, N'Violet', N'Android', N'SamSung', N'MediaTek Helio G80 8 nhân', 240, 8, N'1920 x 1080 pixels', N'16MP', N'3600mAh', 2022, N'Anuminium', N'6.3 inch', N'Brazil', N'KSP16.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP17', N'Realme 9', 5000000.0000, 100, N'Orange', N'Android', N'Redmi', N'Snapdragon 680 8 nhân', 240, 8, N'1280 x 720 pixels', N'16MP', N'3600mAh', 2022, N'Anuminium', N'6.5 inch', N'China', N'KSP17.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP18', N'OPPO A95', 5400000.0000, 100, N'Black', N'Android', N'Oppo', N' Snapdragon 662 8 nhân', 240, 6, N'1440 x 720 pixels', N'20MP', N'3600mAh', 2022, N'Anuminium', N'6.3 inch', N'China', N'KSP18.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP19', N'Xiaomi Redmi Note 10S', 5444444.0000, 200, N'White', N'Android', N'Xaoimi', N'MediaTek Helio G95 8 nhân', 240, 8, N'1440 x 720 pixels', N'20MP', N'3400mAh', 2019, N'Silver', N'6.3 inch', N'China', N'No Image')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP20', N'OPPO A76', 5200000.0000, 200, N'Black', N'Android', N'Oppo', N'Snapdragon 662 8 nhân', 128, 1, N'1920 x 1080 pixels', N'16MP', N'5000mAh', 2019, N'Anuminium', N'6.3 inch', N'China', N'KSP20.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP21', N'Samsung Galaxy A22', 5200000.0000, 100, N'Violet', N'Android', N'SamSung', N'MediaTek MT6769V 8 nhân (Helio G80)', 128, 1, N'1920 x 1080 pixels', N'32MP', N'5100mAh', 2019, N'Anuminium', N'6.5 inch', N'Japan', N'KSP21.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP22', N'Xiaomi Redmi Note 10 5G ', 5666666.0000, 200, N'Blue', N'Android', N'Xaoimi', N'MediaTek Dimensity 700 5G 8 nhân', 128, 1, N'1920 x 1080 pixels', N'20MP', N'3600mAh', 2019, N'Anuminium', N'6.7 inch', N'Canada', N'KSP22.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP23', N'Xaomi 10T', 10000000.0000, 120, N'Green', N'Windows Phone', N'Redmi', N'Dimensity 1000', 128, 1, N'960 x 640 pixels', N'16MP', N'3000mAh', 2019, N'Gold', N'6.3 inch', N'China', N'Phone01.jpg')
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP24', N'Xiaomi Redmi note 12
', 4350000.0000, 100, NULL, NULL, NULL, N'Snapdragon 4 Gen 1
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP25', N'Tecno Pova 3
', 4190000.0000, 100, NULL, NULL, NULL, N'Helio G88
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP26', N'Vivo V25E 
', 7690000.0000, 100, NULL, NULL, NULL, N'MediaTek Helio G99
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP27', N'Nokia C31', 2790000.0000, 100, NULL, NULL, NULL, N'Unisoc SC9863A1
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP28', N'Nokia C21 Plus', 2790000.0000, 100, NULL, NULL, NULL, N'Spreadtrum SC9863A
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP29', N'Itel L6502', 2190000.0000, 100, NULL, NULL, NULL, N'Spreadtrum 9832E
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP30', N'Huawei Nova3i', 5389000.0000, 100, NULL, NULL, NULL, N'Krin 710', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InformationPhone] ([CodePhone], [NamePhone], [Price], [Quantity], [Color], [OperatingSystem], [Brand], [CPU], [ROM], [RAM], [ScreenResolution], [Camera], [Battery], [YearOfManufacture], [Material], [Size], [Origin], [Image]) VALUES (N'KSP31', N'Realme Narzo 50
', 3290000.0000, 100, NULL, NULL, NULL, N'Helio G96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[InformationUsers] ([UserNames], [PassWords], [Roles], [Name], [BirthYear], [PhoneNumber], [Email], [Address], [Image]) VALUES (N'nhanvienbanhang', N'1234', 0, N'Nguyễn Thị Lan Hương', CAST(N'2005-10-09' AS Date), N'0253526692', N'huong@gmail.com', N'TP.Quy Nhơn', N'nhanvienbanhang.jpg')
INSERT [dbo].[InformationUsers] ([UserNames], [PassWords], [Roles], [Name], [BirthYear], [PhoneNumber], [Email], [Address], [Image]) VALUES (N'nhanvienkithuat', N'1234', 1, N'Nguyễn Minh Hậu', CAST(N'2003-02-06' AS Date), N'0922229922', N'haunguyen@gmail.com', N'TP.Hồ Chí Minh', N'nhanvienkithuat.jpg')
INSERT [dbo].[InformationUsers] ([UserNames], [PassWords], [Roles], [Name], [BirthYear], [PhoneNumber], [Email], [Address], [Image]) VALUES (N'nhanvientiepthi', N'1234', 0, N'Nguyễn Ngọc Ánh Hoa', CAST(N'2000-10-09' AS Date), N'0352355352', N'anhhoa@gmail.com', N'TP.Hồ Chí Minh', N'nhanvientiepthi.jpg')
GO
SET IDENTITY_INSERT [dbo].[OrderBasic] ON 

INSERT [dbo].[OrderBasic] ([CodeOrder], [CodeCustomer], [CodeEmpoyye], [OrderDate], [AddressOrder], [DateOfPayment], [Formality], [Status]) VALUES (1, 1, N'nhanvienkithuat', CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'TP.HCM', CAST(N'2022-09-04T23:39:22.610' AS DateTime), N'Tại cửa hàng', 1)
INSERT [dbo].[OrderBasic] ([CodeOrder], [CodeCustomer], [CodeEmpoyye], [OrderDate], [AddressOrder], [DateOfPayment], [Formality], [Status]) VALUES (2, 2, N'nhanvienkithuat', CAST(N'2000-10-10T00:00:00.000' AS DateTime), N'Bình Định', CAST(N'2022-10-10T23:39:22.610' AS DateTime), N'Vận chuyển', 0)
INSERT [dbo].[OrderBasic] ([CodeOrder], [CodeCustomer], [CodeEmpoyye], [OrderDate], [AddressOrder], [DateOfPayment], [Formality], [Status]) VALUES (6, 3, N'nhanvienkithuat', CAST(N'2022-11-04T23:39:21.387' AS DateTime), N'Đà Nẵng', CAST(N'2022-12-04T23:39:22.610' AS DateTime), N'Vận chuyển', 0)
INSERT [dbo].[OrderBasic] ([CodeOrder], [CodeCustomer], [CodeEmpoyye], [OrderDate], [AddressOrder], [DateOfPayment], [Formality], [Status]) VALUES (7, 3, N'nhanvienkithuat', CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'TP.HCM', CAST(N'2022-11-10T23:39:22.610' AS DateTime), N'Tại cửa hàng', 1)
INSERT [dbo].[OrderBasic] ([CodeOrder], [CodeCustomer], [CodeEmpoyye], [OrderDate], [AddressOrder], [DateOfPayment], [Formality], [Status]) VALUES (11, 1, N'nhanvienkithuat', CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'TP.HCM', CAST(N'2022-08-10T23:39:22.610' AS DateTime), N'Tại cửa hàng', 1)
INSERT [dbo].[OrderBasic] ([CodeOrder], [CodeCustomer], [CodeEmpoyye], [OrderDate], [AddressOrder], [DateOfPayment], [Formality], [Status]) VALUES (13, 2, N'nhanvienkithuat', CAST(N'2022-10-10T00:00:00.000' AS DateTime), N'TP.HCM', CAST(N'2022-08-10T23:39:22.610' AS DateTime), N'Tại cửa hàng', 1)
SET IDENTITY_INSERT [dbo].[OrderBasic] OFF
GO
INSERT [dbo].[OrderDetail] ([CodeOrder], [CodePhone], [Price], [Quantity], [Note]) VALUES (1, N'KSP02', 20000000.0000, 9, N'No Note')
INSERT [dbo].[OrderDetail] ([CodeOrder], [CodePhone], [Price], [Quantity], [Note]) VALUES (1, N'KSP03', 10000000.0000, 4, N'No Note')
INSERT [dbo].[OrderDetail] ([CodeOrder], [CodePhone], [Price], [Quantity], [Note]) VALUES (1, N'KSP10', 40000000000.0000, 1, N'No Note')
INSERT [dbo].[OrderDetail] ([CodeOrder], [CodePhone], [Price], [Quantity], [Note]) VALUES (7, N'KSP01', 30000000.0000, 1, N'No Note')
GO
INSERT [dbo].[Status] ([CodeStatus], [DateOfPayment], [Formality], [Status]) VALUES (1, CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'Giao hàng', 0)
INSERT [dbo].[Status] ([CodeStatus], [DateOfPayment], [Formality], [Status]) VALUES (2, CAST(N'2022-10-20T00:00:00.000' AS DateTime), N'Giao hàng', 0)
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_ImportCoupon_InformationPhone] FOREIGN KEY([CodePhone])
REFERENCES [dbo].[InformationPhone] ([CodePhone])
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_ImportCoupon_InformationPhone]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_ImportCoupon_Users] FOREIGN KEY([CodeEmployee])
REFERENCES [dbo].[InformationUsers] ([UserNames])
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_ImportCoupon_Users]
GO
ALTER TABLE [dbo].[OrderBasic]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CodeCustomer])
REFERENCES [dbo].[InformationCustomer] ([CodeCustomer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderBasic] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderBasic]  WITH CHECK ADD  CONSTRAINT [FK_Order_InformationUsers] FOREIGN KEY([CodeEmpoyye])
REFERENCES [dbo].[InformationUsers] ([UserNames])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderBasic] CHECK CONSTRAINT [FK_Order_InformationUsers]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_InformationPhone] FOREIGN KEY([CodePhone])
REFERENCES [dbo].[InformationPhone] ([CodePhone])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_InformationPhone]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_OrderBasic] FOREIGN KEY([CodeOrder])
REFERENCES [dbo].[OrderBasic] ([CodeOrder])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_OrderBasic]
GO
ALTER TABLE [dbo].[Remember]  WITH CHECK ADD  CONSTRAINT [FK_Remember_Users] FOREIGN KEY([UserNames])
REFERENCES [dbo].[InformationUsers] ([UserNames])
GO
ALTER TABLE [dbo].[Remember] CHECK CONSTRAINT [FK_Remember_Users]
GO
USE [master]
GO
ALTER DATABASE [ManagerPhoneStore] SET  READ_WRITE 
GO
