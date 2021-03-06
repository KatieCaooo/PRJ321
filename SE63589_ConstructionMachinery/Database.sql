USE [master]
GO
/****** Object:  Database [ConstructionMachinery]    Script Date: 25/08/18 03:05:57 PM ******/
CREATE DATABASE [ConstructionMachinery]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ConstructionMachinery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ConstructionMachinery.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ConstructionMachinery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ConstructionMachinery_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ConstructionMachinery] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ConstructionMachinery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ConstructionMachinery] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET ARITHABORT OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ConstructionMachinery] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ConstructionMachinery] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ConstructionMachinery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ConstructionMachinery] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ConstructionMachinery] SET  MULTI_USER 
GO
ALTER DATABASE [ConstructionMachinery] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ConstructionMachinery] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ConstructionMachinery] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ConstructionMachinery] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ConstructionMachinery] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ConstructionMachinery]
GO
/****** Object:  Table [dbo].[tblAccount]    Script Date: 25/08/18 03:05:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccount](
	[accountID] [nvarchar](15) NOT NULL,
	[password] [nvarchar](36) NOT NULL,
	[accountName] [nvarchar](50) NOT NULL,
	[numberPhone] [nvarchar](11) NULL,
	[address] [nvarchar](350) NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_tblAccount] PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblContact]    Script Date: 25/08/18 03:05:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContact](
	[name] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[request] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_tblContact] PRIMARY KEY CLUSTERED 
(
	[mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMachine]    Script Date: 25/08/18 03:05:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMachine](
	[machineID] [nvarchar](10) NOT NULL,
	[machineName] [nvarchar](100) NOT NULL,
	[picture] [nvarchar](250) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[price] [int] NOT NULL,
	[sale] [bit] NOT NULL,
	[date] [date] NOT NULL,
	[unavailable] [bit] NOT NULL,
 CONSTRAINT [PK_tblMachine] PRIMARY KEY CLUSTERED 
(
	[machineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblAccount] ([accountID], [password], [accountName], [numberPhone], [address], [role]) VALUES (N'a', N'123456789', N'Hihi', N'1234567890', N'vvvvv', 2)
INSERT [dbo].[tblAccount] ([accountID], [password], [accountName], [numberPhone], [address], [role]) VALUES (N'admin', N'123456', N'Adminstrator', NULL, NULL, 1)
INSERT [dbo].[tblAccount] ([accountID], [password], [accountName], [numberPhone], [address], [role]) VALUES (N'b', N'12345678', N'adsfasdf', N'1234567890', N'asdfasdf', 2)
INSERT [dbo].[tblAccount] ([accountID], [password], [accountName], [numberPhone], [address], [role]) VALUES (N'banned', N'123123', N'Banned', N'0986524965', N'BH', 3)
INSERT [dbo].[tblAccount] ([accountID], [password], [accountName], [numberPhone], [address], [role]) VALUES (N'C', N'12345678', N'CAO', N'', N'', 2)
INSERT [dbo].[tblAccount] ([accountID], [password], [accountName], [numberPhone], [address], [role]) VALUES (N'd', N'321654', N'adsf', N'1234567890', N'', 2)
INSERT [dbo].[tblAccount] ([accountID], [password], [accountName], [numberPhone], [address], [role]) VALUES (N'user', N'123456', N'User', N'0988388736', N'HCM', 2)
INSERT [dbo].[tblContact] ([name], [mail], [request]) VALUES (N'a', N'a', N'a')
INSERT [dbo].[tblContact] ([name], [mail], [request]) VALUES (N'b', N'b', N'b')
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'1T', N'1T-1 SITE DUMPER', N'./images/1T.jpg', N'Even though it’s the smallest of our site dumper range, the JCB 1T-1 packs a big punch.', 3000, 1, CAST(N'2009-06-05' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'210T', N'210T', N'./images/210T.jpg', N'The new small platform 210T is a radial lift machine with a 55kW JCB Diesel by Kohler engine and a rated operating capacity of 841kg.', 5000, 1, CAST(N'2013-05-02' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'3CX', N'3CX Compact', N'./images/3CX.jpg', N'The JCB 3CX Compact backhoe is a highly versatile, manoeuvrable machine that specialises in a wide variety of duties in urban and limited-space environments.', 5000, 0, CAST(N'2010-12-20' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'3TS', N'TELESKID 3TS-8W', N'./images/3TS.jpg', N'The new JCB Teleskid is the first skid steer with a telescopic boom, making it the most versatile machine you’ve ever seen. 
It can reach higher, further and deeper than any other skid steer on the market and can access areas you wouldn’t have thought 
possible.', 8000, 0, CAST(N'2015-03-02' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'457', N'457 WHEEL LOADERS', N'./images/457.jpg', N'The all-new JCB 457 gives you, epic style, visibility, power, speed, strength, efficiency and quality.', 3000, 1, CAST(N'2015-08-05' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'533', N'533-105 TELEHANDLER', N'./images/533.jpg', N'The all-new EcoMAX-powered JCB 533-105 3-stage telescopic handler has a huge reach and a class-leading payload 
for superb productivity and cycle times.', 6000, 0, CAST(N'2017-05-02' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'8008', N'8008 CTS', N'./images/8008.jpg', N'The JCB 8008 CTS micro excavator is smallest addition to the range, weighing in at 875kg. 
It boasts a class-leading 9kW engine and an extending undercarriage.', 4000, 1, CAST(N'2014-09-06' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'930', N'930 RTFL', N'./images/930.jpg', N'The 6340 kg JCB 930 RTFL is powered by our highly efficient 55kW EcoMAX engine and has a 3000 kg lift capacity. 
When you’re on-site, productivity.', 3000, 1, CAST(N'2017-05-12' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'B40', N'B40 BATTERY BOX', N'./images/B40.jpg', N'The Battery Box provides an alternative power storage solution that can be positioned 
with any generator to significantly improve generator efficiency.', 7000, 0, CAST(N'2017-06-23' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'JS131', N'JS131 tracked excavators', N'./images/JS131.jpg', N'A tracked excavator that’s tailor-made for the rental industry, JCB’s new JS131 offers an 
unbeatable mixture of durability and unparalleled ease of maintenance.', 3000, 1, CAST(N'2016-07-26' AS Date), 1)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'JS145W', N'JS145W WHEELED EXCAVATORS', N'./images/JS145W.jpg', N'The JS145W wheeled excavator is the 14.5 tonne model in our range. 
Advanced hydraulics and a EcoMAX engine provide power, fuel savings, and productivity.', 4500, 1, CAST(N'2018-08-20' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'LT9', N'LT9 LIGHTING TOWERS', N'./images/LT9.jpg', N'With our LED light tower, there’s no warm-up time so you get instant light for fast and easy deployment. 
The tower is equipped with 6 x 240W LED bulbs, producing 180,000 lumens.', 4000, 1, CAST(N'2015-08-02' AS Date), 1)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'S2632E', N'S2632E', N'./images/S2632E.jpg', N'The S2632E, as with all of the JCB electric scissor range, 
has easily collapsible guard rails further increasing machine versatility.', 3000, 0, CAST(N'2017-09-25' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'TLT', N'TLT 25', N'./images/TLT.jpg', N'Save time and money with the JCB TLT25 industrial forklift. 
A heavy lift option and the choice of an LPG engine make it a highly versatile compact forklift.', 6500, 0, CAST(N'2018-01-01' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'TM320', N'TM320 TWL', N'./images/TM320.jpg', N'The powerful and efficient JCB TM320 is designed to be as productive as possible. 
A powerful engine, permanent 4WD, servo controls and numerous other benefits are built in.', 2000, 0, CAST(N'2017-11-30' AS Date), 0)
INSERT [dbo].[tblMachine] ([machineID], [machineName], [picture], [description], [price], [sale], [date], [unavailable]) VALUES (N'VM117', N'VM117 D/PD', N'./images/VM117.jpg', N'The JCB VM117 is all-new and supremely productive. Boasting the kind of innovation and design expertise you’d expect 
from JCB Compaction, the VM117 and VM137 soil compactors offer a host of performance, comfort, safety and efficiency features.', 3000, 1, CAST(N'2017-12-06' AS Date), 1)
USE [master]
GO
ALTER DATABASE [ConstructionMachinery] SET  READ_WRITE 
GO
