USE [master]
GO
/****** Object:  Database [EventDB]    Script Date: 06/13/2019 3:02:34 PM ******/
CREATE DATABASE [EventDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EventDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EventDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EventDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EventDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EventDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EventDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EventDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EventDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EventDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EventDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EventDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EventDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EventDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EventDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EventDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EventDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EventDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EventDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EventDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EventDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EventDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EventDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EventDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EventDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EventDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EventDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EventDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EventDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EventDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EventDB] SET  MULTI_USER 
GO
ALTER DATABASE [EventDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EventDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EventDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EventDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EventDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EventDB]
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[BookingNo] [varchar](50) NULL,
	[BookingDate] [date] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingApproval] [varchar](1) NULL,
	[BookingApprovalDate] [datetime] NULL,
	[BookingCompletedFlag] [varchar](1) NULL,
 CONSTRAINT [PK_BookingDetails] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingEquipment]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingEquipment](
	[BookingEquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingEquipment] PRIMARY KEY CLUSTERED 
(
	[BookingEquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookingFlower]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingFlower](
	[BookingFlowerID] [int] IDENTITY(1,1) NOT NULL,
	[FlowerID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_BookingFlower] PRIMARY KEY CLUSTERED 
(
	[BookingFlowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookingFood]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingFood](
	[BookFoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [char](1) NULL,
	[MealType] [char](1) NULL,
	[DishType] [int] NULL,
	[DishName] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingFood] PRIMARY KEY CLUSTERED 
(
	[BookFoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingLight]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingLight](
	[BookLightID] [int] IDENTITY(1,1) NOT NULL,
	[LightType] [char](1) NULL,
	[LightIDSelected] [int] NULL,
	[BookingID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_BookingLight] PRIMARY KEY CLUSTERED 
(
	[BookLightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingVenue]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingVenue](
	[BookingVenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueID] [int] NULL,
	[EventTypeID] [int] NULL,
	[GuestCount] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_BookingVenue] PRIMARY KEY CLUSTERED 
(
	[BookingVenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](200) NULL,
	[StateID] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dishtypes]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dishtypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dishtype] [varchar](50) NULL,
 CONSTRAINT [PK_Dishtypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [varchar](200) NULL,
	[EquipmentFilename] [varchar](200) NULL,
	[EquipmentFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL CONSTRAINT [DF_Equipment_Createdate]  DEFAULT (getdate()),
	[EquipmentCost] [int] NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Event]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [varchar](50) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Flower]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Flower](
	[FlowerID] [int] IDENTITY(1,1) NOT NULL,
	[FlowerName] [varchar](200) NULL,
	[FlowerFilename] [varchar](200) NULL,
	[FlowerFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL CONSTRAINT [DF_Flower_Createdate]  DEFAULT (getdate()),
	[FlowerCost] [int] NULL,
 CONSTRAINT [PK_Flower] PRIMARY KEY CLUSTERED 
(
	[FlowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Food]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Food](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [char](1) NULL,
	[MealType] [char](1) NULL,
	[DishType] [int] NULL,
	[FoodName] [varchar](200) NULL,
	[FoodFilename] [varchar](200) NULL,
	[FoodFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL CONSTRAINT [DF_Food_Createdate]  DEFAULT (getdate()),
	[FoodCost] [int] NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Light]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Light](
	[LightID] [int] IDENTITY(1,1) NOT NULL,
	[LightType] [char](1) NULL,
	[LightName] [varchar](200) NULL,
	[LightFilename] [varchar](200) NULL,
	[LightFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL CONSTRAINT [DF_Light_Createdate]  DEFAULT (getdate()),
	[LightCost] [int] NULL,
 CONSTRAINT [PK_Light] PRIMARY KEY CLUSTERED 
(
	[LightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [int] NULL,
	[State] [int] NULL,
	[Country] [int] NULL,
	[Mobileno] [varchar](20) NULL,
	[EmailID] [varchar](100) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](100) NULL,
	[ConfirmPassword] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Birthdate] [datetime] NULL,
	[RoleID] [int] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Rolename] [varchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](200) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venue]    Script Date: 06/13/2019 3:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venue](
	[VenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueName] [varchar](200) NULL,
	[VenueFilename] [varchar](200) NULL,
	[VenueFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL CONSTRAINT [DF_Venue_Createdate]  DEFAULT (getdate()),
	[VenueCost] [int] NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookingDetails] ON 

GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (1, N'BK-2016-1', CAST(N'2016-05-14' AS Date), 1, CAST(N'2016-05-10 09:52:00.403' AS DateTime), N'A', CAST(N'2017-07-21 09:48:42.977' AS DateTime), N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (24, N'BK-2017-24', CAST(N'2017-07-18' AS Date), 1, CAST(N'2017-07-18 23:00:25.057' AS DateTime), N'C', CAST(N'2017-07-21 10:50:09.933' AS DateTime), N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (25, N'BK-2017-25', CAST(N'2017-07-20' AS Date), 1, CAST(N'2017-07-19 09:07:15.350' AS DateTime), N'R', CAST(N'2017-09-03 14:21:45.447' AS DateTime), N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (26, N'BK-2017-26', CAST(N'2017-07-22' AS Date), 1, CAST(N'2017-07-21 10:01:37.140' AS DateTime), N'P', NULL, NULL)
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (27, N'BK-2017-27', CAST(N'2017-07-24' AS Date), 1, CAST(N'2017-07-21 10:05:12.240' AS DateTime), N'P', NULL, NULL)
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (28, N'BK-2017-28', CAST(N'2017-07-27' AS Date), 1, CAST(N'2017-07-21 10:07:07.020' AS DateTime), N'P', NULL, NULL)
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (29, N'BK-2017-29', CAST(N'2017-07-27' AS Date), 1, CAST(N'2017-07-21 10:10:33.927' AS DateTime), N'P', NULL, NULL)
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (30, N'BK-2017-30', CAST(N'2017-07-29' AS Date), 1, CAST(N'2017-07-21 10:19:35.417' AS DateTime), N'P', NULL, N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (31, N'BK-2017-31', CAST(N'2017-07-22' AS Date), 1, CAST(N'2017-07-21 10:39:06.570' AS DateTime), N'R', CAST(N'2017-07-21 10:42:47.043' AS DateTime), N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (32, N'BK-2017-32', CAST(N'2017-07-28' AS Date), 1, CAST(N'2017-07-22 13:59:09.487' AS DateTime), N'A', CAST(N'2017-07-22 14:00:46.503' AS DateTime), N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (33, N'BK-2017-33', CAST(N'2017-07-24' AS Date), 1, CAST(N'2017-07-22 16:19:23.703' AS DateTime), N'A', CAST(N'2017-07-22 16:23:13.777' AS DateTime), N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (34, N'BK-2017-34', CAST(N'2017-07-30' AS Date), 1, CAST(N'2017-07-23 10:27:40.050' AS DateTime), N'A', CAST(N'2017-07-23 10:28:28.567' AS DateTime), N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (35, N'BK-2017-35', CAST(N'2017-08-03' AS Date), 1, CAST(N'2017-07-25 09:26:23.737' AS DateTime), N'A', CAST(N'2017-07-25 09:27:35.817' AS DateTime), N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (36, N'BK-2017-36', CAST(N'2017-09-13' AS Date), 1, CAST(N'2017-09-03 14:25:30.677' AS DateTime), N'P', NULL, N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (37, N'BK-2017-37', CAST(N'2017-10-22' AS Date), 1, CAST(N'2017-10-15 18:50:16.220' AS DateTime), N'P', NULL, N'C')
GO
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (38, N'BK-2019-38', CAST(N'2019-12-13' AS Date), 1, CAST(N'2019-06-13 14:59:30.010' AS DateTime), N'P', NULL, N'C')
GO
SET IDENTITY_INSERT [dbo].[BookingDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingEquipment] ON 

GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, CAST(N'2016-05-10 09:52:06.107' AS DateTime), 1)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (20, 1, 1, CAST(N'2017-07-18 23:00:31.630' AS DateTime), 24)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (21, 1, 1, CAST(N'2017-07-19 09:07:25.157' AS DateTime), 25)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (22, 1, 1, CAST(N'2017-07-21 10:01:42.500' AS DateTime), 26)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (23, 1, 1, CAST(N'2017-07-21 10:05:17.420' AS DateTime), 27)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 1, 1, CAST(N'2017-07-21 10:07:15.637' AS DateTime), 28)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 1, 1, CAST(N'2017-07-21 10:10:38.253' AS DateTime), 29)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 1, CAST(N'2017-07-21 10:19:39.253' AS DateTime), 30)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 1, 1, CAST(N'2017-07-21 10:39:10.200' AS DateTime), 31)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 1, 1, CAST(N'2017-07-22 13:59:56.670' AS DateTime), 32)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 2, 1, CAST(N'2017-07-22 13:59:56.683' AS DateTime), 32)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 1, 1, CAST(N'2017-07-22 16:19:33.043' AS DateTime), 33)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 2, 1, CAST(N'2017-07-22 16:19:33.073' AS DateTime), 33)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 1, 1, CAST(N'2017-07-23 10:27:45.787' AS DateTime), 34)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 1, 1, CAST(N'2017-07-25 09:26:29.890' AS DateTime), 35)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (34, 2, 1, CAST(N'2017-07-25 09:26:30.017' AS DateTime), 35)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (35, 1, 1, CAST(N'2017-09-03 14:27:15.503' AS DateTime), 36)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (36, 1, 1, CAST(N'2017-10-15 18:53:26.603' AS DateTime), 37)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (37, 2, 1, CAST(N'2017-10-15 18:53:26.617' AS DateTime), 37)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (38, 1, 1, CAST(N'2019-06-13 14:59:43.603' AS DateTime), 38)
GO
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (39, 2, 1, CAST(N'2019-06-13 14:59:43.677' AS DateTime), 38)
GO
SET IDENTITY_INSERT [dbo].[BookingEquipment] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingFlower] ON 

GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, CAST(N'2016-05-10 09:52:23.500' AS DateTime), 1)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (2, 1, 1, CAST(N'2017-07-18 23:00:47.720' AS DateTime), 24)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (4, 1, 1, CAST(N'2017-07-19 09:07:38.923' AS DateTime), 25)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (5, 1, 1, CAST(N'2017-07-21 10:21:14.210' AS DateTime), 30)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (6, 1, 1, CAST(N'2017-07-21 10:39:27.733' AS DateTime), 31)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (7, 1, 1, CAST(N'2017-07-22 14:00:14.283' AS DateTime), 32)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (8, 2, 1, CAST(N'2017-07-22 14:00:14.317' AS DateTime), 32)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (9, 1, 1, CAST(N'2017-07-22 16:19:58.033' AS DateTime), 33)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (10, 2, 1, CAST(N'2017-07-23 10:28:02.587' AS DateTime), 34)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (11, 1, 1, CAST(N'2017-07-25 09:26:48.337' AS DateTime), 35)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (12, 2, 1, CAST(N'2017-07-25 09:26:48.423' AS DateTime), 35)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (13, 1, 1, CAST(N'2017-09-03 14:29:12.680' AS DateTime), 36)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (14, 1, 1, CAST(N'2017-10-15 19:08:54.120' AS DateTime), 37)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (15, 1, 1, CAST(N'2019-06-13 15:00:10.393' AS DateTime), 38)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (16, 2, 1, CAST(N'2019-06-13 15:00:10.497' AS DateTime), 38)
GO
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (17, 3, 1, CAST(N'2019-06-13 15:00:10.517' AS DateTime), 38)
GO
SET IDENTITY_INSERT [dbo].[BookingFlower] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingFood] ON 

GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (1, N'1', N'1', 1, 1, 1, CAST(N'2016-05-10 09:52:12.223' AS DateTime), 1)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (24, N'1', N'2', 1, 1, 1, CAST(N'2017-07-18 23:00:41.313' AS DateTime), 24)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (25, N'1', N'2', 1, 2, 1, CAST(N'2017-07-18 23:00:41.327' AS DateTime), 24)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (26, N'1', N'1', 1, 2, 1, CAST(N'2017-07-19 09:07:33.220' AS DateTime), 25)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (27, N'1', N'1', 1, 1, 1, CAST(N'2017-07-21 10:10:45.993' AS DateTime), 29)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (28, N'1', N'1', 1, 1, 1, CAST(N'2017-07-21 10:19:50.740' AS DateTime), 30)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (29, N'1', N'1', 1, 2, 1, CAST(N'2017-07-21 10:19:50.803' AS DateTime), 30)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (30, N'1', N'1', 1, 3, 1, CAST(N'2017-07-21 10:19:50.820' AS DateTime), 30)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (31, N'1', N'1', 2, 1, 1, CAST(N'2017-07-21 10:39:17.557' AS DateTime), 31)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (32, N'1', N'1', 2, 3, 1, CAST(N'2017-07-21 10:39:17.573' AS DateTime), 31)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (33, N'1', N'1', 2, 4, 1, CAST(N'2017-07-21 10:39:17.587' AS DateTime), 31)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (34, N'1', N'2', 1, 1, 1, CAST(N'2017-07-22 14:00:03.517' AS DateTime), 32)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (35, N'1', N'2', 1, 2, 1, CAST(N'2017-07-22 14:00:03.533' AS DateTime), 32)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (36, N'1', N'2', 1, 3, 1, CAST(N'2017-07-22 14:00:03.537' AS DateTime), 32)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (37, N'2', N'1', 1, 2, 1, CAST(N'2017-07-22 16:19:43.160' AS DateTime), 33)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (38, N'2', N'1', 1, 3, 1, CAST(N'2017-07-22 16:19:43.207' AS DateTime), 33)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (39, N'1', N'2', 1, 1, 1, CAST(N'2017-07-23 10:27:52.820' AS DateTime), 34)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (40, N'1', N'2', 1, 2, 1, CAST(N'2017-07-23 10:27:52.890' AS DateTime), 34)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (41, N'2', N'1', 1, 1, 1, CAST(N'2017-07-25 09:26:37.997' AS DateTime), 35)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (42, N'2', N'1', 1, 2, 1, CAST(N'2017-07-25 09:26:38.090' AS DateTime), 35)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (43, N'2', N'1', 1, 3, 1, CAST(N'2017-07-25 09:26:38.097' AS DateTime), 35)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (44, N'1', N'1', 1, 1, 1, CAST(N'2017-09-03 14:27:57.493' AS DateTime), 36)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (45, N'1', N'1', 1, 2, 1, CAST(N'2017-09-03 14:27:57.510' AS DateTime), 36)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (46, N'1', N'1', 1, 1, 1, CAST(N'2017-10-15 18:57:16.343' AS DateTime), 37)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (47, N'1', N'1', 1, 2, 1, CAST(N'2017-10-15 18:57:16.367' AS DateTime), 37)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (48, N'1', N'1', 1, 4, 1, CAST(N'2017-10-15 18:57:16.377' AS DateTime), 37)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (49, N'1', N'1', 1, 1, 1, CAST(N'2019-06-13 14:59:54.987' AS DateTime), 38)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (50, N'1', N'1', 1, 2, 1, CAST(N'2019-06-13 14:59:55.323' AS DateTime), 38)
GO
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (51, N'1', N'1', 1, 3, 1, CAST(N'2019-06-13 14:59:55.400' AS DateTime), 38)
GO
SET IDENTITY_INSERT [dbo].[BookingFood] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingLight] ON 

GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (1, N'1', 1, 1, 1, CAST(N'2016-05-10 09:52:17.343' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (2, N'1', 1, 24, 1, CAST(N'2017-07-19 09:50:15.410' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (3, N'1', 1, 1, 1, CAST(N'2017-07-21 10:10:51.507' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (4, N'1', 1, 30, 1, CAST(N'2017-07-21 10:19:59.743' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (5, N'1', 1, 31, 1, CAST(N'2017-07-21 10:39:23.447' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (6, N'1', 1, 32, 1, CAST(N'2017-07-22 14:00:09.803' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (7, N'1', 2, 32, 1, CAST(N'2017-07-22 14:00:09.967' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (8, N'2', 1, 33, 1, CAST(N'2017-07-22 16:19:51.680' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (9, N'2', 1, 34, 1, CAST(N'2017-07-23 10:27:58.413' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (10, N'2', 1, 35, 1, CAST(N'2017-07-25 09:26:43.507' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (11, N'2', 2, 35, 1, CAST(N'2017-07-25 09:26:43.573' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (12, N'1', 1, 36, 1, CAST(N'2017-09-03 14:28:33.827' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (13, N'2', 1, 37, 1, CAST(N'2017-10-15 19:07:09.107' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (14, N'2', 2, 37, 1, CAST(N'2017-10-15 19:07:09.147' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (15, N'1', 1, 38, 1, CAST(N'2019-06-13 15:00:02.200' AS DateTime))
GO
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (16, N'1', 2, 38, 1, CAST(N'2019-06-13 15:00:02.260' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[BookingLight] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingVenue] ON 

GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, 500, 1, CAST(N'2016-05-10 09:52:00.510' AS DateTime), 1)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 1, 1, 500, 1, CAST(N'2017-07-18 23:00:25.263' AS DateTime), 24)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 1, 2, 500, 1, CAST(N'2017-07-19 09:07:16.247' AS DateTime), 25)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 1, 50, 1, CAST(N'2017-07-21 10:01:37.337' AS DateTime), 26)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 1, 1, 50, 1, CAST(N'2017-07-21 10:05:12.310' AS DateTime), 27)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 1, 1, 55, 1, CAST(N'2017-07-21 10:07:07.040' AS DateTime), 28)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 3, 2, 658, 1, CAST(N'2017-07-21 10:10:34.117' AS DateTime), 29)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 1, 1, 500, 1, CAST(N'2017-07-21 10:19:35.667' AS DateTime), 30)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 2, 1, 4547, 1, CAST(N'2017-07-21 10:39:06.753' AS DateTime), 31)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 1, 2, 5000, 1, CAST(N'2017-07-22 13:59:09.923' AS DateTime), 32)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 2, 6, 5000, 1, CAST(N'2017-07-22 16:19:23.930' AS DateTime), 33)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (34, 1, 1, 500, 1, CAST(N'2017-07-23 10:27:40.650' AS DateTime), 34)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (35, 1, 1, 600, 1, CAST(N'2017-07-25 09:26:24.473' AS DateTime), 35)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (36, 1, 1, 200, 1, CAST(N'2017-09-03 14:25:30.893' AS DateTime), 36)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (37, 1, 3, 200, 1, CAST(N'2017-10-15 18:50:16.627' AS DateTime), 37)
GO
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (38, 3, 6, 2, 1, CAST(N'2019-06-13 14:59:31.673' AS DateTime), 38)
GO
SET IDENTITY_INSERT [dbo].[BookingVenue] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (1, N'Hyderabad', 1)
GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (2, N'Visakhapatnam', 1)
GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (3, N'Vijayawada', 1)
GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (4, N'Warangal', 1)
GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (5, N'Mumbai', 2)
GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (6, N'Pune', 2)
GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (7, N'Nagpur', 2)
GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (8, N'Thane', 2)
GO
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (9, N'Nashik', 2)
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

GO
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (1, N'India')
GO
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (2, N'China')
GO
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (3, N'USA')
GO
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (4, N'UK')
GO
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (5, N'Germany')
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Dishtypes] ON 

GO
INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (1, N'Deluxe')
GO
INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (2, N'Regular')
GO
SET IDENTITY_INSERT [dbo].[Dishtypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

GO
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (1, N'DJ', N'2011-10-15 - Wedding - Brito-Lopez - Flip''s Setup - 640x512x256.jpg', N'EquipmentImages/c1bf21d9-361e-400b-b706-eb2067bd6576.jpg', 2, CAST(N'2017-07-14 00:00:41.177' AS DateTime), 5000)
GO
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (2, N'Speakers and Mike', N'speaker.png', N'EquipmentImages/6671822f-4a69-4aa5-a75f-a279328cf334.png', 2, CAST(N'2017-07-14 00:00:41.177' AS DateTime), 2000)
GO
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON 

GO
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (1, N'Marriage', N'1')
GO
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (2, N'FamilyFunction', N'2')
GO
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (3, N'Birthday Party', N'3')
GO
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (4, N'anniversary', N'4')
GO
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (5, N'FareWell Party', N'5')
GO
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (6, N'College Event', N'6')
GO
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
SET IDENTITY_INSERT [dbo].[Flower] ON 

GO
INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (1, N'Orchids', N'Orchid.jpg', N'FlowerImages/70f41879-909d-45a8-a6d9-dba7bb33f0d6.jpg', 2, CAST(N'2017-07-14 00:00:41.177' AS DateTime), 3000)
GO
INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (2, N'red wedding flower-bouquets', N'red-wedding-flower-bouquets-collection.jpg', N'FlowerImages/cbd90318-99e7-45c2-bddb-3a3e2089208f.jpg', 2, CAST(N'2017-07-14 00:00:41.177' AS DateTime), 3000)
GO
INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (3, N'Admin', N'5a9fe433-d594-4b0e-adaf-5848034c306b.png', N'FlowerImages/5a9fe433-d594-4b0e-adaf-5848034c306b.png', 2, CAST(N'2019-06-13 13:18:20.193' AS DateTime), 123)
GO
SET IDENTITY_INSERT [dbo].[Flower] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

GO
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (1, N'1', N'1', 1, N'South India thali', N'south_indian_thali.jpg', N'FoodImages/411ea912-758d-4f02-b9e0-ea9ca9e95816.jpg', 2, CAST(N'2017-07-14 10:42:00.063' AS DateTime), 250)
GO
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (2, N'1', N'2', 2, N'North Indian Thali', N'maxim-s-cafe.jpg', N'FoodImages/6406e92b-9002-4c58-98ed-1be4e6c6d8fd.jpg', 2, CAST(N'2017-07-14 10:42:00.063' AS DateTime), 250)
GO
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (3, N'2', N'1', 1, N'Punjab Thali', N'o.jpg', N'FoodImages/e0f91736-4988-4569-b6b5-749c19b9fd14.jpg', 2, CAST(N'2017-07-14 10:42:00.063' AS DateTime), 300)
GO
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (4, N'2', N'2', 1, N'Maharashtrian thali', N'a-thali-plate.jpg', N'FoodImages/f482caad-1826-444c-8d72-a2bacd6f496b.jpg', 2, CAST(N'2017-07-14 10:42:00.063' AS DateTime), 300)
GO
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[Light] ON 

GO
INSERT [dbo].[Light] ([LightID], [LightType], [LightName], [LightFilename], [LightFilePath], [Createdby], [Createdate], [LightCost]) VALUES (1, N'1', N'String Lights', N'string-lights-wedding.jpg', N'LightImages/0dfa03d5-2f9d-44f0-87ad-f07e0f0b7224.jpg', 2, CAST(N'2017-07-15 10:03:20.923' AS DateTime), 3000)
GO
INSERT [dbo].[Light] ([LightID], [LightType], [LightName], [LightFilename], [LightFilePath], [Createdby], [Createdate], [LightCost]) VALUES (2, N'2', N'Acqualina outdoor Lights', N'Acqualina-outdoor-wedding-lighting-12.jpg', N'LightImages/84a52172-2dae-43d3-ba8b-e6126ef7d248.jpg', 2, CAST(N'2017-07-15 10:03:20.923' AS DateTime), 5000)
GO
SET IDENTITY_INSERT [dbo].[Light] OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

GO
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (1, N'Customer', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'Customer', N'qrm2xp/AQInS88JJaNM5Og==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1990-11-11 00:00:00.000' AS DateTime), 2, CAST(N'2017-07-23 11:02:48.250' AS DateTime))
GO
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (2, N'Admin', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'Admin', N'qrm2xp/AQInS88JJaNM5Og==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1990-11-11 00:00:00.000' AS DateTime), 1, CAST(N'2017-07-23 11:02:48.250' AS DateTime))
GO
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (3, N'SuperAdmin', N'Bandra', 5, 2, 1, N'9999999999', N'saihacksoft@gmail.com', N'SuperAdmin', N'qrm2xp/AQInS88JJaNM5Og==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1990-11-11 00:00:00.000' AS DateTime), 3, CAST(N'2017-07-23 11:02:48.250' AS DateTime))
GO
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (4, N'Newadmin', N'Bandra', 2, 1, 1, N'9999999999', N'Newadmin@gmail.com', N'Newadmin', N'qrm2xp/AQInS88JJaNM5Og==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1988-05-09 00:00:00.000' AS DateTime), 1, CAST(N'2017-07-23 11:02:48.250' AS DateTime))
GO
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (8, N'Sai', N'sdfsdf', 5, 2, 1, N'9999999999', N'sdfsdf@gg.cin', N'Saineshwar', N'qrm2xp/AQInS88JJaNM5Og==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1990-07-09 00:00:00.000' AS DateTime), 2, CAST(N'2017-07-23 11:02:48.250' AS DateTime))
GO
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (9, N'sairock', N'pp', 1, 1, 1, N'9999999999', N'dd@gg.com', N'sairocks', N'qrm2xp/AQInS88JJaNM5Og==', N'EcMeUuVrv6U89Ul/imhLmw==', N'M', CAST(N'1973-07-03 00:00:00.000' AS DateTime), 2, CAST(N'2017-07-23 11:02:48.250' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Registration] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

GO
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (1, N'Admin')
GO
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (2, N'Users')
GO
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (3, N'SuperAdmin')
GO
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (4, N'Anonymous ')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 

GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (1, N'Andhra Pradesh', 1)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (2, N'Maharashtra', 1)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (3, N'Shanghai', 2)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (4, N'Beijing', 2)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (5, N'New Jersey', 3)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (6, N'Texas', 3)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (7, N'Sunderland', 4)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (8, N'Newport', 4)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (9, N'Berlin', 5)
GO
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (10, N'Hamburg', 5)
GO
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET IDENTITY_INSERT [dbo].[Venue] ON 

GO
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (1, N'BeachVenue', N'The-Wedding-Co.weddingplz1.jpg', N'VenueImages/d0894394-1dce-4b3b-87a6-1f97a05417a2.jpg', 2, CAST(N'2017-07-11 11:14:54.250' AS DateTime), 50000)
GO
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (2, N'Garden Venue', N'SR-Event-Planners4.weddingplz.jpg', N'VenueImages/3b2b3b1c-643b-42b6-b815-1bebbd27d3f6.jpg', 2, CAST(N'2017-07-11 11:14:54.250' AS DateTime), 20000)
GO
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (3, N'BeachVenue1', N'4cc281ec-7ed9-4232-b983-4c29ac1d707a.jpg', N'VenueImages/03ab9cbf-2da4-4a18-be0e-8a1a3a7c8331.jpg', 1, CAST(N'2017-07-11 11:14:54.250' AS DateTime), 500)
GO
SET IDENTITY_INSERT [dbo].[Venue] OFF
GO
USE [master]
GO
ALTER DATABASE [EventDB] SET  READ_WRITE 
GO
