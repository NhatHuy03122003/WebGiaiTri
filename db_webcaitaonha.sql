USE [master]
GO
/****** Object:  Database [db_caitaonha]    Script Date: 10/12/2024 8:19:15 CH ******/
CREATE DATABASE [db_caitaonha]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_caitaonha', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_caitaonha.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_caitaonha_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_caitaonha_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [db_caitaonha] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_caitaonha].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_caitaonha] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_caitaonha] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_caitaonha] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_caitaonha] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_caitaonha] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_caitaonha] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_caitaonha] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_caitaonha] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_caitaonha] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_caitaonha] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_caitaonha] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_caitaonha] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_caitaonha] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_caitaonha] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_caitaonha] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_caitaonha] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_caitaonha] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_caitaonha] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_caitaonha] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_caitaonha] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_caitaonha] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_caitaonha] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_caitaonha] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_caitaonha] SET  MULTI_USER 
GO
ALTER DATABASE [db_caitaonha] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_caitaonha] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_caitaonha] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_caitaonha] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_caitaonha] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_caitaonha] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_caitaonha] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_caitaonha] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [db_caitaonha]
GO
/****** Object:  Table [dbo].[inforContact]    Script Date: 10/12/2024 8:19:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inforContact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contact_name] [nvarchar](255) NULL,
	[content] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone_number] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 10/12/2024 8:19:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[image_url] [nvarchar](255) NULL,
	[describe] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projectImage]    Script Date: 10/12/2024 8:19:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projectImage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_project] [int] NOT NULL,
	[image_url] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service]    Script Date: 10/12/2024 8:19:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[image_url] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[serviceDirectory]    Script Date: 10/12/2024 8:19:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serviceDirectory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_service] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[image_url] [nvarchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[service] ON 

INSERT [dbo].[service] ([id], [name], [image_url]) VALUES (1, N'Thi công tháo dỡ và cải tạo cơ bản', N'https://i.imgur.com/OLlIaii.jpeg')
INSERT [dbo].[service] ([id], [name], [image_url]) VALUES (2, N'Thi công xây dựng và hoàn thiện', N'https://i.imgur.com/uUG49Xk.jpg')
INSERT [dbo].[service] ([id], [name], [image_url]) VALUES (3, N'Thi công nội thất', N'https://i.imgur.com/wdt0D88.jpg')
SET IDENTITY_INSERT [dbo].[service] OFF
GO
SET IDENTITY_INSERT [dbo].[serviceDirectory] ON 

INSERT [dbo].[serviceDirectory] ([id], [id_service], [name], [image_url], [status]) VALUES (1, 1, N'Thi công tháo d? nhà cu', N'https://i.imgur.com/v6SyFxW.jpeg', 1)
INSERT [dbo].[serviceDirectory] ([id], [id_service], [name], [image_url], [status]) VALUES (2, 1, N'Thi công c?i t?o ph?n móng nhà', N'https://i.imgur.com/rTmZakB.jpeg', 1)
SET IDENTITY_INSERT [dbo].[serviceDirectory] OFF
GO
ALTER TABLE [dbo].[serviceDirectory] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[projectImage]  WITH CHECK ADD FOREIGN KEY([id_project])
REFERENCES [dbo].[project] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[serviceDirectory]  WITH CHECK ADD FOREIGN KEY([id_service])
REFERENCES [dbo].[service] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[inforContact]  WITH CHECK ADD  CONSTRAINT [CK_Email_Valid] CHECK  (([email] like '%@%.%'))
GO
ALTER TABLE [dbo].[inforContact] CHECK CONSTRAINT [CK_Email_Valid]
GO
ALTER TABLE [dbo].[inforContact]  WITH CHECK ADD  CONSTRAINT [CK_PhoneNumber_Valid] CHECK  (([phone_number] like '[0-9%]'))
GO
ALTER TABLE [dbo].[inforContact] CHECK CONSTRAINT [CK_PhoneNumber_Valid]
GO
USE [master]
GO
ALTER DATABASE [db_caitaonha] SET  READ_WRITE 
GO
