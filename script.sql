USE [master]
GO
/****** Object:  Database [TutionManagement]    Script Date: 1/2/2021 9:06:20 PM ******/
CREATE DATABASE [TutionManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TutionManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TutionManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TutionManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TutionManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TutionManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TutionManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TutionManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TutionManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TutionManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TutionManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TutionManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [TutionManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TutionManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TutionManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TutionManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TutionManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TutionManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TutionManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TutionManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TutionManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TutionManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TutionManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TutionManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TutionManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TutionManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TutionManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TutionManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TutionManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TutionManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TutionManagement] SET  MULTI_USER 
GO
ALTER DATABASE [TutionManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TutionManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TutionManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TutionManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TutionManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TutionManagement] SET QUERY_STORE = OFF
GO
USE [TutionManagement]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 1/2/2021 9:06:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseName] [nchar](100) NOT NULL,
	[CourseId] [nchar](100) NOT NULL,
	[TeacherId] [nchar](100) NULL,
	[CourseFee] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/2/2021 9:06:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [nchar](100) NOT NULL,
	[Position] [nchar](100) NOT NULL,
	[Qualification] [nchar](100) NOT NULL,
	[Experience] [nchar](100) NOT NULL,
	[Username] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 1/2/2021 9:06:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [nchar](100) NOT NULL,
	[Class] [nchar](100) NOT NULL,
	[Group] [nchar](100) NOT NULL,
	[Medium] [nchar](100) NOT NULL,
	[Username] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 1/2/2021 9:06:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [nchar](100) NOT NULL,
	[Subject] [nchar](100) NOT NULL,
	[Medium] [nchar](100) NOT NULL,
	[Qualification] [nchar](100) NOT NULL,
	[Username] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/2/2021 9:06:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Name] [nchar](100) NOT NULL,
	[Username] [nchar](100) NOT NULL,
	[Password] [nchar](100) NOT NULL,
	[DateOfBirth] [nchar](100) NOT NULL,
	[UserType] [nchar](100) NOT NULL,
	[Email] [nchar](100) NOT NULL,
	[Phone] [nchar](100) NOT NULL,
	[Approval] [nchar](100) NOT NULL,
	[Id] [nchar](100) NOT NULL,
	[Address] [nchar](100) NOT NULL,
	[Gender] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Users]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Users]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_Users]
GO
USE [master]
GO
ALTER DATABASE [TutionManagement] SET  READ_WRITE 
GO
