USE [master]
GO
/****** Object:  Database [MvcDemoDb]    Script Date: 8.12.2022 21:09:35 ******/
CREATE DATABASE [MvcDemoDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MvcDemoDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BURAKYASIN\MSSQL\DATA\MvcDemoDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MvcDemoDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.BURAKYASIN\MSSQL\DATA\MvcDemoDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MvcDemoDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MvcDemoDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MvcDemoDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MvcDemoDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MvcDemoDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MvcDemoDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MvcDemoDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [MvcDemoDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MvcDemoDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MvcDemoDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MvcDemoDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MvcDemoDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MvcDemoDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MvcDemoDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MvcDemoDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MvcDemoDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MvcDemoDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MvcDemoDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MvcDemoDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MvcDemoDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MvcDemoDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MvcDemoDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MvcDemoDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MvcDemoDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MvcDemoDb] SET RECOVERY FULL 
GO
ALTER DATABASE [MvcDemoDb] SET  MULTI_USER 
GO
ALTER DATABASE [MvcDemoDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MvcDemoDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MvcDemoDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MvcDemoDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MvcDemoDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MvcDemoDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MvcDemoDb', N'ON'
GO
ALTER DATABASE [MvcDemoDb] SET QUERY_STORE = OFF
GO
USE [MvcDemoDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8.12.2022 21:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 8.12.2022 21:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[AdSoyad] [nvarchar](max) NOT NULL,
	[Bolum] [nvarchar](max) NOT NULL,
	[OgrenciNo] [int] NOT NULL,
	[KayitTarih] [datetime2](7) NOT NULL,
	[DTarih] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221208153206_Initial Migration', N'7.0.0')
GO
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'75b56a70-d456-4583-8be2-04c408a31b52', N'METEHAN TARKAN', N'Bilgisayar Programcılığı', 7, CAST(N'2022-01-31T00:00:00.0000000' AS DateTime2), CAST(N'2001-03-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'65988e1b-65e0-4552-877b-081ff5e4f97e', N'ALİRIZA KULDUK', N'Bilgisayar Programcılığı', 10, CAST(N'2011-03-03T00:00:00.0000000' AS DateTime2), CAST(N'1981-02-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'09f0bbc8-3f36-4432-8177-16ee4a33649e', N'ZÜRBİYE GÜL', N'Bilgisayar Programcılığı', 9, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2000-06-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'a6cd192d-4ee9-4e5a-a3ac-2647a65350d8', N'MELTEM HALE KEMİKSİZ', N'Bilgisayar Programcılığı', 8, CAST(N'2022-01-03T00:00:00.0000000' AS DateTime2), CAST(N'2000-03-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'fb7ac31a-0d17-4f8a-8230-720f18dfe49c', N'YUSUF KENAN GÜNDÜZ', N'Bilgisayar Programcılığı', 3, CAST(N'2022-12-08T00:00:00.0000000' AS DateTime2), CAST(N'2000-12-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'54b9a3d1-ccfd-484f-aec1-733efda86218', N'HANDAN YEŞİLOVA', N'Bilgisayar Programcılığı', 2, CAST(N'2022-12-08T00:00:00.0000000' AS DateTime2), CAST(N'2000-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'1dc3611c-7df7-4349-a45d-a5fc6a280b5d', N'TEVFİK FİKRET', N'Edebiyat', 1, CAST(N'1887-11-11T00:00:00.0000000' AS DateTime2), CAST(N'1867-12-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'7276f0e5-b799-4079-b76e-e2337844a132', N'KAZIM ŞERBETÇİ', N'Ekonometri', 4, CAST(N'2022-12-08T00:00:00.0000000' AS DateTime2), CAST(N'2000-11-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'14f5274d-acb2-40d1-963b-e4ffc5346e82', N'MÜRSELİN AKÇAY', N'Bilgisayar Programcılığı', 5, CAST(N'2004-05-04T00:00:00.0000000' AS DateTime2), CAST(N'1979-02-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Employees] ([Id], [AdSoyad], [Bolum], [OgrenciNo], [KayitTarih], [DTarih]) VALUES (N'2bbd93b4-fae6-4007-8011-e6a0f7ac55cc', N'MEHMET FATİH YEŞİLDAĞ', N'Bilgisayar Programcılığı', 2, CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2000-07-05T00:00:00.0000000' AS DateTime2))
GO
USE [master]
GO
ALTER DATABASE [MvcDemoDb] SET  READ_WRITE 
GO
