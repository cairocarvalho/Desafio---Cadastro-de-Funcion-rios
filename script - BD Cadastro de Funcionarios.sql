USE [master]
GO
/****** Object:  Database [DB_SistemaContatos]    Script Date: 04/07/2022 05:54:42 ******/
CREATE DATABASE [DB_SistemaContatos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_SistemaContatos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DB_SistemaContatos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_SistemaContatos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DB_SistemaContatos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_SistemaContatos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_SistemaContatos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_SistemaContatos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_SistemaContatos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_SistemaContatos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_SistemaContatos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_SistemaContatos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_SistemaContatos] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DB_SistemaContatos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_SistemaContatos] SET  MULTI_USER 
GO
ALTER DATABASE [DB_SistemaContatos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_SistemaContatos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_SistemaContatos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_SistemaContatos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_SistemaContatos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_SistemaContatos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_SistemaContatos] SET QUERY_STORE = OFF
GO
USE [DB_SistemaContatos]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04/07/2022 05:54:43 ******/
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
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 04/07/2022 05:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[CPF] [nvarchar](max) NOT NULL,
	[PIS] [nvarchar](max) NOT NULL,
	[Sexo] [nvarchar](max) NOT NULL,
	[Salario] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Funcionarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220704052724_CriandoTabelaFuncionarios', N'6.0.6')
GO
SET IDENTITY_INSERT [dbo].[Funcionarios] ON 

INSERT [dbo].[Funcionarios] ([Id], [Nome], [CPF], [PIS], [Sexo], [Salario], [email], [data]) VALUES (2, N'Amanda Rodrigues', N'20210030011', N'12031023010', N'Feminino', N'2130', N'amandar@gmail.com', N'11-05-2022')
INSERT [dbo].[Funcionarios] ([Id], [Nome], [CPF], [PIS], [Sexo], [Salario], [email], [data]) VALUES (3, N'Cairo Carvalho', N'43201427802', N'123012301', N'Masc', N'1000', N'cairo_liima@hotmail.com', N'05-08-2022')
INSERT [dbo].[Funcionarios] ([Id], [Nome], [CPF], [PIS], [Sexo], [Salario], [email], [data]) VALUES (4, N'Beatriz Ferreira', N'46423300895', N'1231231231', N'Feminino', N'3000', N'beatriz@gmail.com', N'10-02-2022')
INSERT [dbo].[Funcionarios] ([Id], [Nome], [CPF], [PIS], [Sexo], [Salario], [email], [data]) VALUES (5, N'Marco Stefanini', N'20030040011', N'2020202020', N'Masculino', N'50000', N'marco@gmail.com', N'01-01-1999')
SET IDENTITY_INSERT [dbo].[Funcionarios] OFF
GO
USE [master]
GO
ALTER DATABASE [DB_SistemaContatos] SET  READ_WRITE 
GO
