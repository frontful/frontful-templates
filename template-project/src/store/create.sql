USE [master]
GO
/****** Object:  Database [template-project]    Script Date: 13.01.2019 21:26:15 ******/
CREATE DATABASE [template-project]
 CONTAINMENT = NONE
 ON  PRIMARY
( NAME = N'template-project', FILENAME = N'/var/opt/mssql/data/template-project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON
( NAME = N'template-project_log', FILENAME = N'/var/opt/mssql/data/template-project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [template-project] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [template-project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [template-project] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [template-project] SET ANSI_NULLS OFF
GO
ALTER DATABASE [template-project] SET ANSI_PADDING OFF
GO
ALTER DATABASE [template-project] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [template-project] SET ARITHABORT OFF
GO
ALTER DATABASE [template-project] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [template-project] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [template-project] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [template-project] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [template-project] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [template-project] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [template-project] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [template-project] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [template-project] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [template-project] SET  DISABLE_BROKER
GO
ALTER DATABASE [template-project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [template-project] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [template-project] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [template-project] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [template-project] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [template-project] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [template-project] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [template-project] SET RECOVERY FULL
GO
ALTER DATABASE [template-project] SET  MULTI_USER
GO
ALTER DATABASE [template-project] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [template-project] SET DB_CHAINING OFF
GO
ALTER DATABASE [template-project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [template-project] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO
ALTER DATABASE [template-project] SET DELAYED_DURABILITY = DISABLED
GO
EXEC sys.sp_db_vardecimal_storage_format N'template-project', N'ON'
GO
ALTER DATABASE [template-project] SET QUERY_STORE = OFF
GO
USE [template-project]
GO
/****** Object:  Table [dbo].[list]    Script Date: 13.01.2019 21:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[list](
	[id] [uniqueidentifier] NOT NULL,
	[key] [varchar](50) NULL,
	[value] [nvarchar](250) NULL,
 CONSTRAINT [PK_data] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[list] ADD  CONSTRAINT [DF_data_id]  DEFAULT (newid()) FOR [id]
GO
USE [master]
GO
ALTER DATABASE [template-project] SET  READ_WRITE
GO
