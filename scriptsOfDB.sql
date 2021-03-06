USE [master]
GO
/****** Object:  Database [LawOfficeDB]    Script Date: 9.01.2017 12:29:46 ******/
CREATE DATABASE [LawOfficeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LawOfficeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LawOfficeDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LawOfficeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LawOfficeDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LawOfficeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LawOfficeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LawOfficeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LawOfficeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LawOfficeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LawOfficeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LawOfficeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LawOfficeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LawOfficeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LawOfficeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LawOfficeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LawOfficeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LawOfficeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LawOfficeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LawOfficeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LawOfficeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LawOfficeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LawOfficeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LawOfficeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LawOfficeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LawOfficeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LawOfficeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LawOfficeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LawOfficeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LawOfficeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LawOfficeDB] SET  MULTI_USER 
GO
ALTER DATABASE [LawOfficeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LawOfficeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LawOfficeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LawOfficeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LawOfficeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LawOfficeDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[username] [nvarchar](10) NOT NULL,
	[password] [int] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[tc_no] [int] NOT NULL,
	[name] [nvarchar](15) NOT NULL,
	[surname] [nchar](20) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[phone] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[tc_no] [int] NOT NULL,
	[name] [nvarchar](15) NOT NULL,
	[surname] [nvarchar](20) NOT NULL,
	[type] [nvarchar](10) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[phone] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Files]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[file_no] [int] NOT NULL,
	[court_name] [nvarchar](60) NOT NULL,
	[plaintiff_id] [int] NOT NULL,
	[defendant_id] [int] NOT NULL,
	[lawyer_id] [int] NOT NULL,
	[dateOfTrial] [date] NOT NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[file_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lawyer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lawyer](
	[baro_no] [int] NOT NULL,
	[name] [nvarchar](15) NOT NULL,
	[surname] [nvarchar](20) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[phone] [int] NOT NULL,
	[password] [int] NOT NULL,
 CONSTRAINT [PK_Lawyer] PRIMARY KEY CLUSTERED 
(
	[baro_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partnership]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partnership](
	[tax_no] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[officer_name] [nvarchar](20) NOT NULL,
	[officer_surname] [nvarchar](20) NOT NULL,
	[officer_phone] [int] NOT NULL,
 CONSTRAINT [PK_Partnership] PRIMARY KEY CLUSTERED 
(
	[tax_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relational_File]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relational_File](
	[r_id] [int] NOT NULL,
	[file_no] [int] NOT NULL,
	[court_name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Relational_File] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[MyFilesView]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MyFilesView]
AS
SELECT        dbo.Files.file_no, dbo.Files.court_name, dbo.Lawyer.baro_no, dbo.Files.dateOfTrial
FROM            dbo.Files INNER JOIN
                         dbo.Lawyer ON dbo.Files.lawyer_id = dbo.Lawyer.baro_no

GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_File_Client] FOREIGN KEY([plaintiff_id])
REFERENCES [dbo].[Client] ([tc_no])
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_File_Client]
GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_File_Client1] FOREIGN KEY([defendant_id])
REFERENCES [dbo].[Client] ([tc_no])
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_File_Client1]
GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_File_Lawyer] FOREIGN KEY([lawyer_id])
REFERENCES [dbo].[Lawyer] ([baro_no])
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_File_Lawyer]
GO
ALTER TABLE [dbo].[Relational_File]  WITH CHECK ADD  CONSTRAINT [FK_Relational_File_Files] FOREIGN KEY([file_no])
REFERENCES [dbo].[Files] ([file_no])
GO
ALTER TABLE [dbo].[Relational_File] CHECK CONSTRAINT [FK_Relational_File_Files]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteClient]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteClient]
(
@tc_no int
)
AS
BEGIN
   DELETE FROM Client
   where tc_no=@tc_no
END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteEmployee]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteEmployee]
(
@tc_no int
)
AS
BEGIN
   delete from Employee
   where tc_no=@tc_no
END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteFile]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteFile]
(
@file_no int
)
AS
BEGIN
   DELETE FROM Files
   where file_no=@file_no
   DELETE FROM Relational_File
   where r_id=@file_no
END

GO
/****** Object:  StoredProcedure [dbo].[spDeleteLawyer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteLawyer]
(
@baro_no int
)
AS
BEGIN
   delete from Lawyer
   where baro_no=@baro_no
END


GO
/****** Object:  StoredProcedure [dbo].[spDeletePartnership]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeletePartnership]
(
@tax_no int
)
AS
BEGIN
   delete from Partnership
   where tax_no=@tax_no
END


GO
/****** Object:  StoredProcedure [dbo].[spDeleteRelational_File]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteRelational_File]
(
@r_id int
)
AS
BEGIN
   delete from Relational_File
   where r_id=@r_id
END


GO
/****** Object:  StoredProcedure [dbo].[spGetAdmin]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetAdmin]
(
@username nvarchar(10),
@password int
) 

AS
BEGIN
   select * from Admin
   where username=@username and password=@password
END

GO
/****** Object:  StoredProcedure [dbo].[spGetClient]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetClient]
(
@tc_no int
)
AS
BEGIN
   select * from Client
   where tc_no=@tc_no
END


GO
/****** Object:  StoredProcedure [dbo].[spGetCustomer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetCustomer]
AS
BEGIN
   select * from Client
   where status=1
END


GO
/****** Object:  StoredProcedure [dbo].[spGetDateOfTrialByLawyerName]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetDateOfTrialByLawyerName]
(
@name nvarchar(15)
)
AS
BEGIN
   select dateOfTrial from Files
   where lawyer_id=(select baro_no from Lawyer
   where name=@name)
END

GO
/****** Object:  StoredProcedure [dbo].[spGetEmployee]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetEmployee]
(
@tc_no int
)
AS
BEGIN
   select * from Employee
   where tc_no=@tc_no
END

GO
/****** Object:  StoredProcedure [dbo].[spGetFile]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetFile]
(
@file_no int
)
AS
BEGIN
   select * from Files
   where file_no=@file_no
END

GO
/****** Object:  StoredProcedure [dbo].[spGetFileByCustomerTc]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetFileByCustomerTc]
(
@tc_no int
)
AS
BEGIN
   select * from Files
   where plaintiff_id=@tc_no OR defendant_id=@tc_no
END

GO
/****** Object:  StoredProcedure [dbo].[spGetFileByLawyer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetFileByLawyer]
(
@baro_no int
)
AS
BEGIN
SELECT * FROM MyFilesView where baro_no = @baro_no
END
GO
/****** Object:  StoredProcedure [dbo].[spGetFileByLawyerName]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetFileByLawyerName]
(
@name nvarchar(15)
)
AS
BEGIN
   select * from Files
   where lawyer_id=(select baro_no from Lawyer
   where name=@name)
END


GO
/****** Object:  StoredProcedure [dbo].[spGetLawyer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetLawyer]
(
@baro_no int
)
AS
BEGIN
   select * from Lawyer
   where baro_no=@baro_no
END


GO
/****** Object:  StoredProcedure [dbo].[spGetLawyerByName]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetLawyerByName]
(
@name nvarchar(15)
)
AS
BEGIN
   select * from Lawyer
   where name=@name
END


GO
/****** Object:  StoredProcedure [dbo].[spGetLawyerBySurname]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetLawyerBySurname]
(
@surname nvarchar(20)
)
AS
BEGIN
   select * from Lawyer
   where surname=@surname
END


GO
/****** Object:  StoredProcedure [dbo].[spGetNonCustomer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetNonCustomer]

AS
BEGIN
   select * from Client
   where status=0
END


GO
/****** Object:  StoredProcedure [dbo].[spGetPartnership]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetPartnership]
(
@tax_no int
)
AS
BEGIN
   select * from Partnership
   where tax_no=@tax_no
END

GO
/****** Object:  StoredProcedure [dbo].[spGetRelational_File]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetRelational_File]
(
@file_no int
)
AS 
BEGIN
SELECT * From
Relational_File INNER JOIN Files 
ON Relational_File.file_no=Files.file_no
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertClient]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertClient]
(
@tc_no int,
@name nvarchar(15),
@surname nvarchar(20),
@address nvarchar(100),
@phone int,
@status int
)
AS
BEGIN
   Insert into Client(tc_no,name,surname,address,phone,status)values(@tc_no,@name,@surname,@address,@phone,@status)
END


GO
/****** Object:  StoredProcedure [dbo].[spInsertEmployee]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertEmployee]
(
@tc_no int,
@name nvarchar(15),
@surname nvarchar(20),
@type nvarchar(10),
@address nvarchar(100),
@phone int
)
AS
BEGIN
   Insert into Employee(tc_no,name,surname,type,address,phone)values(@tc_no,@name,@surname,@type,@address,@phone)
END


GO
/****** Object:  StoredProcedure [dbo].[spInsertFile]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertFile]
(
@file_no int,
@court_name nvarchar(60),
@plaintiff_id int,
@defendant_id int,
@lawyer_id int,
@dateOfTrial date
)
AS
BEGIN
   Insert into Files(file_no,court_name,plaintiff_id,defendant_id,lawyer_id,dateOfTrial)values(@file_no,@court_name,@plaintiff_id,@defendant_id,@lawyer_id,@dateOfTrial)
END


GO
/****** Object:  StoredProcedure [dbo].[spInsertLawyer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertLawyer]
(
@baro_no int,
@name nvarchar(15),
@surname nvarchar(20),
@address nvarchar(100),
@phone int,
@password int
)
AS
BEGIN
   Insert into Lawyer(baro_no,name,surname,address,phone,password)values(@baro_no,@name,@surname,@address,@phone,@password)
END


GO
/****** Object:  StoredProcedure [dbo].[spInsertPartnership]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertPartnership]
(
@tax_no int,
@name nvarchar(50),
@officer_name nvarchar(20),
@officer_surname nvarchar(20),
@officer_phone int
)
AS
BEGIN
   Insert into Partnership(tax_no,name,officer_name,officer_surname,officer_phone)values(@tax_no,@name,@officer_name,@officer_surname,@officer_phone)
END


GO
/****** Object:  StoredProcedure [dbo].[spInsertRelational_File]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertRelational_File]
(
@r_id int,
@file_no int,
@court_name nvarchar(30)
)
AS
BEGIN
   Insert into Relational_File(r_id,file_no,court_name)values(@r_id,@file_no,@court_name)
END


GO
/****** Object:  StoredProcedure [dbo].[spSelectClient]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectClient]
AS
BEGIN
   select * from Client
END


GO
/****** Object:  StoredProcedure [dbo].[spSelectEmployee]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectEmployee]
AS
BEGIN
   select * from Employee
END


GO
/****** Object:  StoredProcedure [dbo].[spSelectFile]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectFile]
AS
BEGIN
   select * from Files
END


GO
/****** Object:  StoredProcedure [dbo].[spSelectLawyer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spSelectLawyer]
AS
BEGIN
	SELECT * FROM Lawyer
END


GO
/****** Object:  StoredProcedure [dbo].[spSelectPartnership]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectPartnership]
AS
BEGIN
   select * from Partnership
END


GO
/****** Object:  StoredProcedure [dbo].[spSelectRelational_File]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectRelational_File]
AS
BEGIN
   select * from Relational_File
END


GO
/****** Object:  StoredProcedure [dbo].[spUpdateAdmin]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateAdmin]
(

@username nvarchar(10),
@password int
)
AS
BEGIN
	update Admin
	set username=@username,password=@password
	where username=@username
END

GO
/****** Object:  StoredProcedure [dbo].[spUpdateClient]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateClient]
(
@tc_no int,
@name nvarchar(15),
@surname nvarchar(20),
@address nvarchar(100),
@phone int,
@status int
)
AS
BEGIN
	update Client
	set tc_no=@tc_no,name=@name,surname=@surname,address=@address,phone=@phone,status=@status
	where tc_no=@tc_no
END

GO
/****** Object:  StoredProcedure [dbo].[spUpdateEmployee]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateEmployee]
(
@tc_no int,
@name nvarchar(15),
@surname nvarchar(20),
@type nvarchar(10),
@address nvarchar(100),
@phone int
)
AS
BEGIN
	update Employee
	set tc_no=@tc_no,name=@name,surname=@surname,type=@type,address=@address,phone=@phone
	where tc_no=@tc_no
END


GO
/****** Object:  StoredProcedure [dbo].[spUpdateFile]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateFile]
(
@file_no int,
@court_name nvarchar(60),
@plaintiff_id int,
@defendant_id int,
@lawyer_id int,
@dateOfTrial date
)
AS
BEGIN
	update Files
	set file_no=@file_no,court_name=@court_name,plaintiff_id=@plaintiff_id,defendant_id=@defendant_id,lawyer_id=@lawyer_id,dateOfTrial=@dateOfTrial
	where file_no=@file_no
END


GO
/****** Object:  StoredProcedure [dbo].[spUpdateLawyer]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateLawyer]
(
@baro_no int,
@name nvarchar(15),
@surname nvarchar(20),
@address nvarchar(100),
@phone int,
@password int
)
AS
BEGIN
	update Lawyer
	set baro_no=@baro_no,name=@name,surname=@Surname,address=@address,phone=@phone,password=@password
	where baro_no=@baro_no
END


GO
/****** Object:  StoredProcedure [dbo].[spUpdatePartnership]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdatePartnership]
(
@tax_no int,
@name nvarchar(50),
@officer_name nvarchar(20),
@officer_surname nvarchar(20),
@officer_phone int
)
AS
BEGIN
	update Partnership
	set tax_no=@tax_no,name=@name,officer_name=@officer_name,officer_surname=@officer_surname,officer_phone=@officer_phone
	where tax_no=@tax_no
END


GO
/****** Object:  StoredProcedure [dbo].[spUpdateRelational_File]    Script Date: 9.01.2017 12:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateRelational_File]
(
@r_id int,

@file_no int,
@court_name nvarchar(30)
)
AS
BEGIN
	update Relational_File
	set r_id=@r_id,file_no=@file_no,court_name=@court_name
	where r_id=@r_id
END


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Files"
            Begin Extent = 
               Top = 16
               Left = 56
               Bottom = 146
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Lawyer"
            Begin Extent = 
               Top = 10
               Left = 315
               Bottom = 140
               Right = 485
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MyFilesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MyFilesView'
GO
USE [master]
GO
ALTER DATABASE [LawOfficeDB] SET  READ_WRITE 
GO
