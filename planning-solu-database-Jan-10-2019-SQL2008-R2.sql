USE [master]
GO
/****** Object:  Database [SOLU_DUDH_KUNDA_PLANNING]    Script Date: 2019-01-10 4:16:12 PM ******/
CREATE DATABASE [SOLU_DUDH_KUNDA_PLANNING] ON  PRIMARY 
( NAME = N'SOLU_DUDH_KUNDA_PLANNING', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SOLU_DUDH_KUNDA_PLANNING.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SOLU_DUDH_KUNDA_PLANNING_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SOLU_DUDH_KUNDA_PLANNING_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SOLU_DUDH_KUNDA_PLANNING].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET ARITHABORT OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET  MULTI_USER 
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET DB_CHAINING OFF 
GO
USE [SOLU_DUDH_KUNDA_PLANNING]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aayojana_Maintainance]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aayojana_Maintainance](
	[Aayojana_Maintainance_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Responsible_Org] [nvarchar](500) NULL,
	[Janashram] [nvarchar](50) NULL,
	[SewaSulka] [nvarchar](50) NULL,
	[Dastur_Chanda] [nvarchar](50) NULL,
	[Lagat_Anudan] [nvarchar](50) NULL,
	[Interest_Saving] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Aayojana__179F3F17471B7D37] PRIMARY KEY CLUSTERED 
(
	[Aayojana_Maintainance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi1]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi1](
	[AnuSuchi1_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Upabhokta_Samiti_Name] [nvarchar](500) NULL,
	[Adakshya] [nvarchar](250) NULL,
	[Upadakshya] [nvarchar](250) NULL,
	[Sachib] [nvarchar](250) NULL,
	[Koshadakshya] [nvarchar](250) NULL,
	[Establish_Date] [datetime] NULL,
	[Bank_Name] [nvarchar](250) NULL,
	[Account_Number] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi10]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi10](
	[AnuSuchi10_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Adakshya] [nvarchar](500) NULL,
	[Adakshya_Gender] [nvarchar](50) NULL,
	[Adakshya_MobileNo] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi10_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi10_Discussion_Conclusions]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi10_Discussion_Conclusions](
	[AnuSuchi10_Discussion_Conclusions_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi10_Id] [int] NULL,
	[Conclusions] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi10_Discussion_Conclusions_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi10_Discussion_Subjects]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi10_Discussion_Subjects](
	[AnuSuchi10_Discussion_Subjects_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi10_Id] [int] NULL,
	[Subjects] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi10_Discussion_Subjects_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi10_Meeting]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi10_Meeting](
	[AnuSuchi10_Meeting_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi10_Id] [int] NULL,
	[Baithak_No] [nvarchar](50) NULL,
	[Baithak_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi10_Meeting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi10_Members]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi10_Members](
	[AnuSuchi10_Members_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi10_Id] [int] NULL,
	[Members] [nvarchar](500) NULL,
	[Members_Gender] [nvarchar](50) NULL,
	[Members_Pad] [nvarchar](50) NULL,
	[Members_MobileNo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi10_Members_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi11]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi11](
	[AnuSuchi11_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Name] [nvarchar](500) NULL,
	[Position] [nvarchar](250) NULL,
	[Date] [datetime] NULL,
	[Suggestion] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__AnuSuchi__192A6B82680A1891] PRIMARY KEY CLUSTERED 
(
	[AnuSuchi11_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi3]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi3](
	[AnuSuchi3_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planing_Samjhauta_Id] [int] NULL,
	[Project_Name] [nvarchar](500) NULL,
	[Project_Place] [nvarchar](500) NULL,
	[Estimated_Amount] [nvarchar](50) NULL,
	[Project_Start_Date] [datetime] NULL,
	[Project_End_Date] [datetime] NULL,
	[Upabhokta_Samiti_Name] [nvarchar](500) NULL,
	[Adakshya_Name] [nvarchar](500) NULL,
	[Total_Members] [nvarchar](50) NULL,
	[Male_No] [nvarchar](50) NULL,
	[Female_No] [nvarchar](50) NULL,
	[Total_Benificial_No] [nvarchar](50) NULL,
	[Rohabar_Name] [nvarchar](500) NULL,
	[Rohabar_Position] [nvarchar](500) NULL,
	[Rohabar_Date] [datetime] NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__AnuSuchi__37C3821C2775A716] PRIMARY KEY CLUSTERED 
(
	[AnuSuchi3_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi3_Bhuktani]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi3_Bhuktani](
	[AnuSuchi3_Bhuktani_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi3_Id] [int] NULL,
	[Bhuktani_Details] [nvarchar](max) NULL,
	[Bhuktani_Amount] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi3_Bhuktani_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi3_Expenses]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi3_Expenses](
	[AnuSuchi3_Expenses_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi3_Id] [int] NULL,
	[Expenses_Details] [nvarchar](max) NULL,
	[Expenses_Rate] [nvarchar](50) NULL,
	[Expenses_Quantity] [nvarchar](50) NULL,
	[Expenses_Total] [nvarchar](50) NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi3_Expenses_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi3_Income]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi3_Income](
	[AnuSuchi3_Income_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi3_Id] [int] NULL,
	[Income_Source] [nvarchar](max) NULL,
	[Amount_Quantity] [nvarchar](50) NULL,
	[Income_Remarks] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi3_Income_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi3_Maujat]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi3_Maujat](
	[AnuSuchi3_Maujat_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi3_Id] [int] NULL,
	[Maujat_Details] [nvarchar](max) NULL,
	[Maujat_Amount] [nvarchar](50) NULL,
	[Maujat_Remarks] [nvarchar](max) NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi3_Maujat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi3_Project_Work_Detail]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi3_Project_Work_Detail](
	[AnuSuchi3_Project_Work_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi3_Id] [int] NULL,
	[Work_Details] [nvarchar](max) NULL,
	[Work_Plan] [nvarchar](max) NULL,
	[Work_Progress] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi3_Project_Work_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi3_Work_Division]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi3_Work_Division](
	[AnuSuchi3_Work_Division_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi3_Id] [int] NULL,
	[Members] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi3_Work_Division_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi4]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi4](
	[AnuSuchi4_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Project_Name] [nvarchar](500) NULL,
	[Project_Place] [nvarchar](500) NULL,
	[Project_Estimated_Amount] [nvarchar](250) NULL,
	[Fiscal_Year] [nvarchar](250) NULL,
	[Project_Approval_Date] [datetime] NULL,
	[Project_To_Finish_Date] [datetime] NULL,
	[Project_Ended_Date] [datetime] NULL,
	[Samiti_Expenses_Approval_Date] [datetime] NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi4_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Anusuchi4_Expenses]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anusuchi4_Expenses](
	[Anusuchi4_Expenses_Id] [int] IDENTITY(1,1) NOT NULL,
	[Anusuchi4_Id] [int] NULL,
	[Jyalla] [nvarchar](250) NULL,
	[Nirman_Samagri_Kharid] [nvarchar](250) NULL,
	[Dhuwani] [nvarchar](250) NULL,
	[Bhada] [nvarchar](250) NULL,
	[Bawestapan_Kharcha] [nvarchar](250) NULL,
 CONSTRAINT [PK__Anusuchi__54EBE9328A54DC5E] PRIMARY KEY CLUSTERED 
(
	[Anusuchi4_Expenses_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Anusuchi4_Income]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anusuchi4_Income](
	[Anusuchi4_Income_Id] [int] IDENTITY(1,1) NOT NULL,
	[Anusuchi4_Id] [int] NULL,
	[First_Kista] [nvarchar](250) NULL,
	[Second_Kista] [nvarchar](250) NULL,
	[Third_Kista] [nvarchar](250) NULL,
	[Janashram] [nvarchar](250) NULL,
	[Bastugat_Sahayata] [nvarchar](250) NULL,
	[Lagat_Sahabhagita] [nvarchar](250) NULL,
 CONSTRAINT [PK__Anusuchi__3C77DC03FBD23EDE] PRIMARY KEY CLUSTERED 
(
	[Anusuchi4_Income_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi5]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi5](
	[AnuSuchi5_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Project_Name] [nvarchar](500) NULL,
	[Project_Run_Org] [nvarchar](500) NULL,
	[Upabhokta_Samiti_Adakshya] [nvarchar](500) NULL,
	[Project_Estimate_Amount] [nvarchar](50) NULL,
	[Municipality_Amount] [nvarchar](50) NULL,
	[Jana_Sahabhagita_Amount] [nvarchar](50) NULL,
	[Other_Org_Source_Amount] [nvarchar](50) NULL,
	[Project_Contract_Date] [datetime] NULL,
	[Project_End_Date] [datetime] NULL,
	[Total_Project_Beneficiaries] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__AnuSuchi__ED69D5AABCB9E0A1] PRIMARY KEY CLUSTERED 
(
	[AnuSuchi5_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Anusuchi6]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anusuchi6](
	[Anusuchi6_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Project_Name] [nvarchar](500) NULL,
	[Ward_No] [nvarchar](50) NULL,
	[Street_Name] [nvarchar](500) NULL,
	[Upabhokta_Samiti_Name] [nvarchar](500) NULL,
	[Adakshya] [nvarchar](500) NULL,
	[Sachib] [nvarchar](500) NULL,
	[Anudan_Rakam] [nvarchar](250) NULL,
	[Chanda_Rakam] [nvarchar](250) NULL,
	[Jana_Sahabhagita_Rakam] [nvarchar](250) NULL,
	[Total_Amount] [nvarchar](250) NULL,
	[Total_Expenses_TillNow] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Anusuchi6_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Anusuchi6_Janasahabhagita]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anusuchi6_Janasahabhagita](
	[Anusuchi6_Janasahabhagita_Id] [int] IDENTITY(1,1) NOT NULL,
	[Anusuchi6_Id] [int] NULL,
	[Janasahabhagita_Amount] [nvarchar](250) NULL,
	[Sharam_Amount] [nvarchar](250) NULL,
	[Jinsi_Amount] [nvarchar](250) NULL,
	[Technical_Review_Amount] [nvarchar](250) NULL,
	[Upabhikta_Decision_Amount] [nvarchar](250) NULL,
	[Kista_Rakam_Demand] [nvarchar](250) NULL,
	[Field_Supervise_Decision] [nvarchar](max) NULL,
	[Main_Expenses] [nvarchar](max) NULL,
 CONSTRAINT [PK__Anusuchi__068DD329EA2E958A] PRIMARY KEY CLUSTERED 
(
	[Anusuchi6_Janasahabhagita_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Anusuchi6_Karyalaya]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anusuchi6_Karyalaya](
	[Anusuchi6_Karyalaya_Id] [int] IDENTITY(1,1) NOT NULL,
	[Anusuchi6_Id] [int] NULL,
	[Karyalaya_Amount] [nvarchar](250) NULL,
	[Nirman_Samagri_Amount] [nvarchar](250) NULL,
	[Dashya_Amount] [nvarchar](250) NULL,
	[Adashya_Amount] [nvarchar](250) NULL,
	[Others_Amount] [nvarchar](250) NULL,
	[Travel_Expenses_Amount] [nvarchar](250) NULL,
	[Technical_Supervise_Amount] [nvarchar](250) NULL,
	[Masalanda_Amount] [nvarchar](250) NULL,
 CONSTRAINT [PK__Anusuchi__07A4F6D7404688B4] PRIMARY KEY CLUSTERED 
(
	[Anusuchi6_Karyalaya_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Anusuchi6_Solutions]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anusuchi6_Solutions](
	[Anusuchi6_Solutions_Id] [int] IDENTITY(1,1) NOT NULL,
	[Anusuchi6_Id] [int] NULL,
	[Solutions] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Anusuchi6_Solutions_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi7]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi7](
	[AnuSuchi7_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Samiti_Estd_Date] [datetime] NULL,
	[Samiti_Address] [nvarchar](500) NULL,
	[Established_Type] [nvarchar](250) NULL,
	[Adakshyata] [nvarchar](250) NULL,
	[Total_Present_No] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi7_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi7_Anugaman_Samiti]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi7_Anugaman_Samiti](
	[AnuSuchi7_Anugaman_Samiti_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi7_Id] [int] NULL,
	[Position] [nvarchar](50) NULL,
	[Member_Name] [nvarchar](500) NULL,
	[Gender] [nvarchar](50) NULL,
	[Father_Husband_Name] [nvarchar](500) NULL,
	[GrandFather_Name] [nvarchar](500) NULL,
	[Mobile_No] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi7_Anugaman_Samiti_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi7_Upabhokta_Samiti]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi7_Upabhokta_Samiti](
	[AnuSuchi7_Upabhokta_Samiti_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi7_Id] [int] NULL,
	[Position] [nvarchar](50) NULL,
	[Member_Name] [nvarchar](500) NULL,
	[Gender] [nvarchar](50) NULL,
	[Father_Husband_Name] [nvarchar](500) NULL,
	[GrandFather_Name] [nvarchar](500) NULL,
	[Mobile_No] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi7_Upabhokta_Samiti_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi9]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi9](
	[AnuSuchi9_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Adakshya] [nvarchar](500) NULL,
	[Adakshya_Address] [nvarchar](500) NULL,
	[Sachib] [nvarchar](500) NULL,
	[Sachib_Address] [nvarchar](500) NULL,
	[Koshadakshya] [nvarchar](500) NULL,
	[Koshadakshya_Address] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__AnuSuchi__4ADE024FB5B5DFA4] PRIMARY KEY CLUSTERED 
(
	[AnuSuchi9_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi9_Discussion_Conclusions]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi9_Discussion_Conclusions](
	[AnuSuchi9_Discussion_Conclusions_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi9_Id] [int] NULL,
	[Conclusions] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi9_Discussion_Conclusions_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi9_Discussion_Subjects]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi9_Discussion_Subjects](
	[AnuSuchi9_Discussion_Subjects_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi9_Id] [int] NULL,
	[Subjects] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi9_Discussion_Subjects_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi9_Meeting]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi9_Meeting](
	[AnuSuchi9_Meeting_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi9_Id] [int] NULL,
	[Baithak_No] [nvarchar](50) NULL,
	[Baithak_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi9_Meeting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi9_Members]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi9_Members](
	[AnuSuchi9_Members_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi9_Id] [int] NULL,
	[Members] [nvarchar](500) NULL,
	[Members_Address] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnuSuchi9_Members_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Beneficiaries_Group]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beneficiaries_Group](
	[Beneficiaries_Group_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Total_House] [nvarchar](50) NULL,
	[Total_Male] [nvarchar](50) NULL,
	[Total_Female] [nvarchar](50) NULL,
	[Community] [nvarchar](500) NULL,
	[Other] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Benefici__F2999A2C78B49A0D] PRIMARY KEY CLUSTERED 
(
	[Beneficiaries_Group_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Budget_Source]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Budget_Source](
	[Budget_Source_Id] [int] IDENTITY(1,1) NOT NULL,
	[Source_Name] [nvarchar](500) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Budget_Source_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Class_A_Bank_List]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_A_Bank_List](
	[Class_A_Bank_List_Id] [int] IDENTITY(1,1) NOT NULL,
	[Bank_Name_Nepali] [nvarchar](500) NULL,
	[Bank_Name_English] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Class_A_Bank_List_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Darkhasta_Form]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Darkhasta_Form](
	[Darkhasta_Form_Id] [int] IDENTITY(1,1) NOT NULL,
	[Bank_Name] [nvarchar](300) NULL,
	[Ward_No] [int] NULL,
	[Samiti_Name] [nvarchar](500) NULL,
	[Adakshya_Name] [nvarchar](300) NULL,
	[Koshadakshya_Name] [nvarchar](300) NULL,
	[Sachib_Name] [nvarchar](300) NULL,
	[Chalani_Number] [nvarchar](250) NULL,
	[Other_Bank_Name] [nvarchar](300) NULL,
	[CreatedBy] [int] NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
	[Fiscal_Year_Record] [nvarchar](50) NULL,
 CONSTRAINT [PK__Darkhast__88CE78F7F49E4BA4] PRIMARY KEY CLUSTERED 
(
	[Darkhasta_Form_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DateConversion_TblNepaliCalender]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateConversion_TblNepaliCalender](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[YearID] [nvarchar](50) NULL,
	[MonthID] [nvarchar](50) NULL,
	[E_Start_Date] [datetime] NULL,
	[E_End_Date] [datetime] NULL,
 CONSTRAINT [PK_DateConversion_TblNepaliCalender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fiscal_Year_Record]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fiscal_Year_Record](
	[Fiscal_Year_Record_Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Fiscal_Year_Record_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kar_Katti]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kar_Katti](
	[Kar_Katti_Id] [int] IDENTITY(1,1) NOT NULL,
	[Contigency] [nvarchar](50) NULL,
	[MarmatSambhar] [nvarchar](50) NULL,
	[SamajikSurekchya] [nvarchar](50) NULL,
	[BahalKar] [nvarchar](50) NULL,
	[AgrimShulka] [nvarchar](50) NULL,
	[Parishramik] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Kar_Katt__6BDCA05E429F9C8E] PRIMARY KEY CLUSTERED 
(
	[Kar_Katti_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Municipality_Samiti_Manjuri_Patra]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipality_Samiti_Manjuri_Patra](
	[Municipality_Samiti_Manjuri_Patra_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Municipality_Rep_Name] [nvarchar](500) NULL,
	[Municipality_Rep_Post] [nvarchar](500) NULL,
	[Municipality_Rep_Sign] [nvarchar](500) NULL,
	[Municipality_Manjuri_Date] [datetime] NULL,
	[Samiti_Adakshya_Name] [nvarchar](500) NULL,
	[Samiti_Adakshya_Sign] [nvarchar](500) NULL,
	[Samiti_Sachib_Name] [nvarchar](500) NULL,
	[Samiti_Sachib_Sign] [nvarchar](500) NULL,
	[Samiti_Rohabar_Name] [nvarchar](500) NULL,
	[Samiti_Rohabar_Sign] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Municipality_Samiti_Manjuri_Patra_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NpCalDb]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NpCalDb](
	[NCAL_YEAR] [nvarchar](4) NULL,
	[STRT_DATE] [datetime] NULL,
	[STOP_DATE] [datetime] NULL,
	[MONTH_1] [smallint] NULL,
	[MONTH_2] [smallint] NULL,
	[MONTH_3] [smallint] NULL,
	[MONTH_4] [smallint] NULL,
	[MONTH_5] [smallint] NULL,
	[MONTH_6] [smallint] NULL,
	[MONTH_7] [smallint] NULL,
	[MONTH_8] [smallint] NULL,
	[MONTH_9] [smallint] NULL,
	[MONTH_10] [smallint] NULL,
	[MONTH_11] [smallint] NULL,
	[MONTH_12] [smallint] NULL,
	[BranchId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Organization_Representative]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization_Representative](
	[Organization_Representative_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Representative_Name] [nvarchar](250) NULL,
	[Representative_Designition] [nvarchar](250) NULL,
	[Representative_Address] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Organization_Representative_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Organization_Setup]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization_Setup](
	[Organization_Setup_Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization_Name] [nvarchar](500) NULL,
	[Organization_Type] [nvarchar](500) NULL,
	[District_Name] [nvarchar](500) NULL,
	[State_Country] [nvarchar](500) NULL,
	[Image_Path] [nvarchar](500) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK__Organiza__8E6985AF55F56C08] PRIMARY KEY CLUSTERED 
(
	[Organization_Setup_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment_Records]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Records](
	[Payment_Records_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Kista_Kram] [nvarchar](250) NULL,
	[Payment_Date] [datetime] NULL,
	[Kista_Rakam] [nvarchar](50) NULL,
	[Nirmarn_Samagri] [nvarchar](500) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Payment___087936FF502F9216] PRIMARY KEY CLUSTERED 
(
	[Payment_Records_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planning_Bhuktani]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planning_Bhuktani](
	[Planning_Bhuktani_Id] [int] IDENTITY(1,1) NOT NULL,
	[Fiscal_Year_Record] [nvarchar](250) NULL,
	[Budget_Title] [nvarchar](250) NULL,
	[Budget_Title_Number] [nvarchar](250) NULL,
	[Nirman_Upabhokta] [nvarchar](250) NULL,
	[Aayojana_Karyakram] [nvarchar](250) NULL,
	[Kul_La_Ie] [nvarchar](50) NULL,
	[NaPa_Binayajit] [nvarchar](50) NULL,
	[Otheers] [nvarchar](50) NULL,
	[Jana_Sahabagita] [nvarchar](50) NULL,
	[Peski] [nvarchar](50) NULL,
	[Technical_Amount] [nvarchar](50) NULL,
	[Kantigenci] [nvarchar](50) NULL,
	[Remaining_Bhuktani_Amount] [nvarchar](50) NULL,
	[Agrim_Shulka] [nvarchar](50) NULL,
	[Bahal_Kar] [nvarchar](50) NULL,
	[Katti_Rakam] [nvarchar](50) NULL,
	[Aanya_Raaya] [nvarchar](50) NULL,
	[AdakshyaName] [nvarchar](50) NULL,
	[SamjhautaDate] [datetime] NULL,
	[Farchot_Amount] [nvarchar](50) NULL,
	[Running_Bhuktani] [nvarchar](50) NULL,
	[Samajik_Surekchya] [nvarchar](50) NULL,
	[Parishramik] [nvarchar](50) NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Bhuktani_Type] [int] NULL,
	[IsBhuktaniApproval] [bit] NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Planning__81E52ABB811B7410] PRIMARY KEY CLUSTERED 
(
	[Planning_Bhuktani_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planning_Documents]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planning_Documents](
	[Planning_Documents_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Fiscal_Year] [nvarchar](50) NULL,
	[Project_Name] [nvarchar](500) NULL,
	[Upabhokta_Gathan] [nvarchar](250) NULL,
	[Nirnaya] [nvarchar](500) NULL,
	[Samjhauta] [nvarchar](500) NULL,
	[Anuman] [nvarchar](500) NULL,
	[Mapan] [nvarchar](500) NULL,
	[Pramanikaran] [nvarchar](500) NULL,
	[Karya_Sampanna] [nvarchar](500) NULL,
	[Bhuktani_Nibedan] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Planning__32C2B97A04F2F7A6] PRIMARY KEY CLUSTERED 
(
	[Planning_Documents_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planning_Entry]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planning_Entry](
	[Planning_Entry_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[FiscalYear] [nvarchar](50) NULL,
	[Planning_Name] [nvarchar](500) NULL,
	[Planning_Start_Date] [datetime] NULL,
	[Planning_End_Date] [datetime] NULL,
	[Work_Details] [nvarchar](max) NULL,
	[Amount_Estimate] [nvarchar](50) NULL,
	[Work_Type] [int] NULL,
	[Ward_No] [int] NULL,
	[Work_Area] [int] NULL,
	[Budget_Source] [int] NULL,
	[Planning_Type] [nvarchar](50) NULL,
	[UpaBhoktaSamiti_HeadName] [nvarchar](500) NULL,
	[Contractor_Name] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Planning__BDB8EAA4A760649D] PRIMARY KEY CLUSTERED 
(
	[Planning_Entry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planning_Entry_Anudan]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planning_Entry_Anudan](
	[Planning_Entry_Anudan_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Entry_Id] [int] NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Nagarpalika_Amt] [nvarchar](50) NULL,
	[UpaBhoktaSamiti_Amt] [nvarchar](50) NULL,
	[Other_Amt] [nvarchar](50) NULL,
	[JanaSahaBhagita_Amt] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Planning__3CC015DE3E90F8E0] PRIMARY KEY CLUSTERED 
(
	[Planning_Entry_Anudan_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planning_Entry_Kista_Detail]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planning_Entry_Kista_Detail](
	[Planning_Entry_Kista_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Entry_Id] [int] NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Kista_Kram] [nvarchar](250) NULL,
	[Kista_Rakam] [nvarchar](50) NULL,
	[Payment_Date] [datetime] NULL,
	[Peski_Bhuktani] [nvarchar](50) NULL,
	[Sarta] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Planning__A29B1F1D9B084518] PRIMARY KEY CLUSTERED 
(
	[Planning_Entry_Kista_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planning_Samjhauta]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planning_Samjhauta](
	[Planning_Samjhauta_Id] [int] IDENTITY(1,1) NOT NULL,
	[Fiscal_Year_Record] [nvarchar](250) NULL,
	[Samjhauta_Org_Name] [nvarchar](500) NULL,
	[Contegency_Amount] [nvarchar](50) NULL,
	[MarmatSambhar_Amount] [nvarchar](50) NULL,
	[Total_Amount] [nvarchar](50) NULL,
	[Samjhauta_Acceptance] [bit] NULL,
	[Contegency_Percentage] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Planning__86F139ACC6C6AF39] PRIMARY KEY CLUSTERED 
(
	[Planning_Samjhauta_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project_Entry_Detail]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Entry_Detail](
	[Project_Entry_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Project_Name] [nvarchar](250) NULL,
	[Project_Place] [nvarchar](250) NULL,
	[Project_Objective] [nvarchar](max) NULL,
	[Project_Acceptance_By] [nvarchar](250) NULL,
	[Project_Start_Date] [datetime] NULL,
	[Project_End_Date] [datetime] NULL,
	[Project_estimated_Amount] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Project___2BCE334DAB6C1F6D] PRIMARY KEY CLUSTERED 
(
	[Project_Entry_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project_Other_Source]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Other_Source](
	[Project_Other_Source_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Source_Name] [nvarchar](250) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Material_Details] [nvarchar](max) NULL,
	[Unit] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Project___4D51B218B240E5D4] PRIMARY KEY CLUSTERED 
(
	[Project_Other_Source_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project_Source_Detail]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Source_Detail](
	[Project_Source_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Project_estimated_Amount] [nvarchar](50) NULL,
	[Nepal_Government] [nvarchar](50) NULL,
	[Municipality] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[NGO_INGO] [nvarchar](50) NULL,
	[Community_Org] [nvarchar](50) NULL,
	[Foreign_Org] [nvarchar](50) NULL,
	[Public_Community] [nvarchar](50) NULL,
	[Loan_Grant] [nvarchar](50) NULL,
	[Other_Source] [nvarchar](50) NULL,
	[Total_Amount] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Project___0E569C2F4B2653EE] PRIMARY KEY CLUSTERED 
(
	[Project_Source_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Samiti_Detail]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Samiti_Detail](
	[Samiti_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Samiti_Estd_Date] [datetime] NULL,
	[Adakshya] [nvarchar](250) NULL,
	[Sachib] [nvarchar](250) NULL,
	[Koshadakshya] [nvarchar](250) NULL,
	[Sadashya] [nvarchar](max) NULL,
	[Beneficiaries_Attendance] [nvarchar](50) NULL,
	[Beneficiaries_Absent] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Samiti_D__DD497096BB476FA5] PRIMARY KEY CLUSTERED 
(
	[Samiti_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sarta_Setup]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sarta_Setup](
	[Sarta_Setup_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sarta_Setup_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UpaBhokta_Samiti_Members_Details]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpaBhokta_Samiti_Members_Details](
	[UpaBhokta_Samiti_Members_Details_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[MemberName] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UpaBhokta_Samiti_Members_Details_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Upload_File]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Upload_File](
	[Upload_File_Id] [int] IDENTITY(1,1) NOT NULL,
	[File_Name] [nvarchar](500) NULL,
	[File_Path] [nvarchar](500) NULL,
	[FiscalYear] [nchar](250) NULL,
	[WardNo] [nvarchar](250) NULL,
	[File_Id] [int] NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Upload_F__D897E6326D224498] PRIMARY KEY CLUSTERED 
(
	[Upload_File_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Work_Area]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Area](
	[Work_Area_Id] [int] IDENTITY(1,1) NOT NULL,
	[Work_Area_Name] [nvarchar](500) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Work_Area_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Work_Type]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Type](
	[Work_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[Work_Type_Name] [nvarchar](500) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Work_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201810040504119_InitialCreate', N'Planning.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FDB36147E1FB0FF20E8691B522B97B5E802BB45EA245BB0E6823A2DF656D012ED0895284DA2D204C37ED91EF693F617762851375E74B115DB29060CB578F8F1F0F02379787898FFFEF977FCF6C1F78C7B1CC56E4026E6C168DF3430B103C725CB8999D0C58BD7E6DB37DF7F373E73FC07E3532E77C4E4A0268927E61DA5E1B165C5F61DF6513CF25D3B0AE260414776E05BC809ACC3FDFD5FAC83030B038409588631FE9010EAFA38FD013FA701B1714813E45D060EF662FE1D4A6629AA71857C1C87C8C613F3C643848076A34CD4344E3C17811A33EC2D4C03CA028A282879FC31C6331A0564390BE103F26E1F430C720BE4C5982B7F5C8A77EDC7FE21EB875556CCA1EC24A681DF13F0E0881BC612ABAF645EB3301C98EE0C4C4C1F59AF53F34DCC0B07A79F3E041E18406CF078EA454C78625E164D9CC4E115A6A3BCE228833C8F00EE6B107D195511F78CCEF5F60A221D8EF6D97F7BC634F16812E109C1098D90B767DC2473CFB57FC78FB7C1174C264707F3C5D1EB97AF9073F4EA677CF4B2DA53E82BC8D53EC0A79B28087104BAE145D17FD3B0EAF52CB16251AD5227B30A700958671A97E8E13D264B7A07B3E5F0B5699CBB0FD8C9BF70727D242E4C21A844A3047E5E259E87E61E2ECAADC636D9FF1B5A3D7CF96A9056AFD0BDBB4C875E681F264E04F3EA03F6D2D2F8CE0DB3E9551BEFCF5CEC3C0A7CF6BBCEAFACF4F32C48229B7526D08ADCA26889695DBBB15592B713A519D4F0B4CE51779FDA4C5399DE4A51D6A1556642DEC4A66743AEEFD3B6DB99712761088397528B59A48970C24E3512AA0211B840499A83AEA421D0996F790D3CF391EB0DB0087668059C8F851BF9B8E8E5BB002887486F9D6F501CC31AE0FC86E2BB06D5E19F03A83EC3761201356714F9E193B7767317107C95F873C6F8CDB535D8D0DC7E0DCE914D83E88CB05A6BE3BD0FEC2F4142CF88738A28FE48ED1C90FDBC75FDEE0083A87362DB388ECF81CCD89906E05BE78017841E1DF68663ABD3B69D90A9875C5FED8508EBE8E75CB4F444D4129237A2115379244DAABE0F962EE9A66A2EAA5735936855958BF555958175D3944BEA154D055AF5CCA406F3F1D2111ADEC94B6177DFCB5B6FF3D6AD051533CE6085C4BF62822358C69C1B44298E4839025DD68D6D380BE9F0B1469F7C6F4A5BFA84BC64E8A6569A0DE92230FC6C4861777F36A46AC2E77BD7615E4987A34F2E0CF09DE4D5A7AAF6392768B6E9E950EBE6A61BDFCC1AA09B2E27711CD86E3A0B14412F1EB2A8EB0F3E9CD11EBFC87A23C640A0634074976D79F005FA668AA4BA26A7D8C3141B277616149CA2D8468E6C46E890D343B17C47552856C642EACAFD24B5094CC711AB84D821288699EA122A4F0B97D86E88BC562B09353B6E61ACEF451B62C9290E31610DB65AA24BE3EAD00753A068471894360B8DAD0AE39A89A8F15A7563DEE6C296E32E452436C2C916DF59C34BEEBF3D09319B2DB60172369BA48B02DA30DE3608CACF2A5D09201E5C768DA0C289494350EE526D84A0758B6D81A075933C3B826647D4AEE32F9C57778D9EF583F2E6B7F546736D819B357BEC183533DF13EA50A88123999EA77356881FA8E270067AF2F359CC5D5D91220C7C86693D6453FABB4A3FD46A061149D4045812AD05945F004A40D284EAA15C1ECB6BD48E7B113D60F3B85B232C5FFB05D80A0764ECEA456845507F5D2A92B3D3E9A3E859C10689E49D0E0B151C0521C4C5ABDEF10E46D1C56565C374F185FB78C3958EF1C16830508BE7AA3152DE99C1AD9453B3DD4A2A87AC8F4BB6969504F74963A5BC33835B8973B4DD480AA7A0875BB09689EA5BF840932D8F7414BB4D5136B6B2E428FE616C69B2A8C697280C5DB2AC6455F12FC62C4BA99ABE98F54F37F2330CCB8E15594785B6454B3488D0120BA5D034687AEE46313D4514CD118BF34C1D5F1253EEAD9AE53F6FB2BA7DCA8398EF03B934FB370F9F09D7F6B58D56F64438C03974CF67EE4C1A43570CBEBABAC152DC90872245D87E1A78894FF4DE95BE76767957AD9F7D9111C696A0BFE43D49A6927CDCBADD3B8D8A3C238618A1C273597D94F4103A5BE77E67D5DA3A5F548F9287A6AA28BA70D5D6464DE7C2741F29D135EC3F50AD084F33A3783E4A15807FEA8951496990C02A65DD51EB592755CC7A49774421B5A40A2914F5D0B29A405253B25AB0129EC6A26A89EE2DC829235574B9B43BB22279A40AAD285E015BA1B358D61D55915F5205561477C72E934DC4157487F72CED8165B54D2B3BD0AEB76B69309E66391C66D3ABDCDB57812A9F7B62F19B79098C7FDF492A694F75AB51290B62AC47250D867ECDA95D77D7979CC63B7A3D66ED0EBBB6AC37DDE1EBF1FA11F64969219DE84491A2F5E264279CE0C6FC34D5FE58463A5E6522A6919B11B6F4C798627FC40446B33FBDA9E762B680E7029788B80B1CD32C6FC33CDC3F38149EDCECCEF3172B8E1D4F711AD5BD81A98FD90652B0C83D8AEC3B14C909116B3C112941A558F30571F0C3C4FC2BAD759C862DD8BFD2CF7BC645FC91B87F2650701B25D8F85B4EF01C2665BEF96CB5A30F1CBA5BF5E28FCF59D53DE33A8219736CEC0BB65C6584EBCF1E7A6993555D439B951F433CDF09557B6FA0441526C4EACF0BE62E1DE46941AEE50F3E7AF8B1AF6ACAE7036B212A9E080C85378809754F0056C1D2A6FF3BF093A6E9FFFD3AAB7E0EB08A6ADAA7002EE90F263E04E8BE0CE535B7B8D5280E449B5892523BB72652AF9555B9EDBD49CAB75E6BA2CB39D53DE0D6C89B5E8119CF2CE578B0DD5191513C18F636A9FDE469C4BB92395CE6746C3761789339C20DB741DF546AF00E24B3299273B69F00BC69AEE982B83B9E45D92FCD77C7C8C653B6B69FCCBB69B2E9C2BC3B4EB65E29BB3BC6B56DED9F5B665AE72D74EB09B8722E91E63246150B6E4BB0CD02E770C29F074082CCA3CCDE45AA33BA9AB2515B1A2C45F48DEA53C9C486A58923B52B493437DBAFAF7CC36FEC2C97696E569380D9D4365FFF1BDBE632CD6D6BD21AB7911AAC4C2C54A56BB7AC634DB94FCF2915B8D69396CCF3369FB5F166FD3965FE0E6294DAECD1DC113F9F44DF414C32E4D4E991D82B5FF7C2DE59F90B8AB07FC7EEB284607F4F9160BBB66B1632176411E49BB7A0512E2244682E31450E6CA927117517C8A650CC62CCE9C3EE346EC76E3AE6D8B920D7090D130A5DC6FEDCAB05BC9813D0D47E9ABD5CD7797C1DA67FA364882E809A2E8BCD5F937789EB3985DEE78A9890068279173CA2CBC692B2C8EEF2B140BA0A4847206EBEC229BAC57EE801587C4D66E81EAFA21BD0EF3D5E22FBB18C00EA40DA07A26EF6F1A98B9611F2638E51D6879FC061C77F78F33FCDEA509B48540000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Aayojana_Maintainance] ON 

INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 9, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-17 22:29:29.923' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:04:58.973' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.237' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-22 16:10:41.240' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (14, 13, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:11.897' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (15, 14, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.207' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (23, 21, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.207' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (27, 22, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.393' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (28, 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:09:24.347' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (29, 23, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.140' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (30, 24, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-02 11:46:56.753' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (32, 25, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-09 16:33:34.653' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (33, 26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:06:11.180' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Aayojana_Maintainance] ([Aayojana_Maintainance_Id], [Planning_Samjhauta_Id], [Responsible_Org], [Janashram], [SewaSulka], [Dastur_Chanda], [Lagat_Anudan], [Interest_Saving], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (34, 27, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.127' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Aayojana_Maintainance] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi10] ON 

INSERT [dbo].[AnuSuchi10] ([AnuSuchi10_Id], [Planning_Samjhauta_Id], [Adakshya], [Adakshya_Gender], [Adakshya_MobileNo], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, 10, N'मोहन', N'पुरुष', N'९८४५६५४३२१', 1, NULL, CAST(N'2018-12-25 15:32:39.583' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi10] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi10_Discussion_Conclusions] ON 

INSERT [dbo].[AnuSuchi10_Discussion_Conclusions] ([AnuSuchi10_Discussion_Conclusions_Id], [AnuSuchi10_Id], [Conclusions]) VALUES (1, 1, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi10_Discussion_Conclusions] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi10_Discussion_Subjects] ON 

INSERT [dbo].[AnuSuchi10_Discussion_Subjects] ([AnuSuchi10_Discussion_Subjects_Id], [AnuSuchi10_Id], [Subjects]) VALUES (1, 1, N'कामलाई दैनिकि रुपमा अनुगमन गर्ने')
SET IDENTITY_INSERT [dbo].[AnuSuchi10_Discussion_Subjects] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi10_Meeting] ON 

INSERT [dbo].[AnuSuchi10_Meeting] ([AnuSuchi10_Meeting_Id], [AnuSuchi10_Id], [Baithak_No], [Baithak_Date]) VALUES (1, 1, N'१', CAST(N'2072-06-02 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[AnuSuchi10_Meeting] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi10_Members] ON 

INSERT [dbo].[AnuSuchi10_Members] ([AnuSuchi10_Members_Id], [AnuSuchi10_Id], [Members], [Members_Gender], [Members_Pad], [Members_MobileNo]) VALUES (1, 1, N'सिता', N'महिला', N'सचिव', N'९८४५६५४३६७')
INSERT [dbo].[AnuSuchi10_Members] ([AnuSuchi10_Members_Id], [AnuSuchi10_Id], [Members], [Members_Gender], [Members_Pad], [Members_MobileNo]) VALUES (2, 1, N'राम', N'पुरुष', N'उपाध्यक्ष', NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi10_Members] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi11] ON 

INSERT [dbo].[AnuSuchi11] ([AnuSuchi11_Id], [Planning_Samjhauta_Id], [Name], [Position], [Date], [Suggestion], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, 10, N'रोशन सिवाकोटि', N'अध्यक्ष', CAST(N'2072-06-08 00:00:00.000' AS DateTime), N'सबै पुरा गर्ने', 1, NULL, NULL, NULL, CAST(N'2018-12-27 12:20:29.677' AS DateTime), NULL, NULL)
INSERT [dbo].[AnuSuchi11] ([AnuSuchi11_Id], [Planning_Samjhauta_Id], [Name], [Position], [Date], [Suggestion], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 10, N'मेहर महरजन', N'सचिव', CAST(N'2072-06-08 00:00:00.000' AS DateTime), N'सबै पुरा गर्ने', 1, NULL, NULL, NULL, CAST(N'2018-12-27 12:20:29.690' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi11] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi3] ON 

INSERT [dbo].[AnuSuchi3] ([AnuSuchi3_Id], [Planing_Samjhauta_Id], [Project_Name], [Project_Place], [Estimated_Amount], [Project_Start_Date], [Project_End_Date], [Upabhokta_Samiti_Name], [Adakshya_Name], [Total_Members], [Male_No], [Female_No], [Total_Benificial_No], [Rohabar_Name], [Rohabar_Position], [Rohabar_Date], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, NULL, N'ढल निर्माण', N'लाजिम्पाट', N'३०००००', CAST(N'2073-07-08 00:00:00.000' AS DateTime), CAST(N'2074-02-10 00:00:00.000' AS DateTime), N'राम्रो', N'अशोक राई', N'२२', N'१२', N'१०', N'३०', N'बिपिन ढकाल', N'कार्यकारी', CAST(N'2075-09-04 00:00:00.000' AS DateTime), 1, NULL, CAST(N'2018-12-19 15:52:55.937' AS DateTime), NULL, CAST(N'2018-12-20 12:41:20.987' AS DateTime), NULL, NULL)
INSERT [dbo].[AnuSuchi3] ([AnuSuchi3_Id], [Planing_Samjhauta_Id], [Project_Name], [Project_Place], [Estimated_Amount], [Project_Start_Date], [Project_End_Date], [Upabhokta_Samiti_Name], [Adakshya_Name], [Total_Members], [Male_No], [Female_No], [Total_Benificial_No], [Rohabar_Name], [Rohabar_Position], [Rohabar_Date], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 10, N'सम्मान कार्यक्रम', N'बालाजु', N'५०००००', CAST(N'2072-06-06 00:00:00.000' AS DateTime), CAST(N'2073-02-06 00:00:00.000' AS DateTime), N'कार्यशिध्धि', N'मोहन', NULL, N'४५', N'६०', N'२०', N'गोपाल', N'कार्यकारी', CAST(N'2075-09-04 00:00:00.000' AS DateTime), 1, NULL, CAST(N'2018-12-24 15:12:16.593' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi3] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Bhuktani] ON 

INSERT [dbo].[AnuSuchi3_Bhuktani] ([AnuSuchi3_Bhuktani_Id], [AnuSuchi3_Id], [Bhuktani_Details], [Bhuktani_Amount]) VALUES (5, 1, N'अब दिन बाँकी रकम', N'८००००')
INSERT [dbo].[AnuSuchi3_Bhuktani] ([AnuSuchi3_Bhuktani_Id], [AnuSuchi3_Id], [Bhuktani_Details], [Bhuktani_Amount]) VALUES (6, 2, N'बाँकि रकम', N'७००००')
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Bhuktani] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Expenses] ON 

INSERT [dbo].[AnuSuchi3_Expenses] ([AnuSuchi3_Expenses_Id], [AnuSuchi3_Id], [Expenses_Details], [Expenses_Rate], [Expenses_Quantity], [Expenses_Total], [Type]) VALUES (5, 1, N'हेम पाईप, सिमेन्ट', N'५००', N'१०', N'५०००', 1)
INSERT [dbo].[AnuSuchi3_Expenses] ([AnuSuchi3_Expenses_Id], [AnuSuchi3_Id], [Expenses_Details], [Expenses_Rate], [Expenses_Quantity], [Expenses_Total], [Type]) VALUES (6, 1, N'कामदार', N'१०००', N'१०', N'१००००', 2)
INSERT [dbo].[AnuSuchi3_Expenses] ([AnuSuchi3_Expenses_Id], [AnuSuchi3_Id], [Expenses_Details], [Expenses_Rate], [Expenses_Quantity], [Expenses_Total], [Type]) VALUES (7, 1, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[AnuSuchi3_Expenses] ([AnuSuchi3_Expenses_Id], [AnuSuchi3_Id], [Expenses_Details], [Expenses_Rate], [Expenses_Quantity], [Expenses_Total], [Type]) VALUES (8, 1, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[AnuSuchi3_Expenses] ([AnuSuchi3_Expenses_Id], [AnuSuchi3_Id], [Expenses_Details], [Expenses_Rate], [Expenses_Quantity], [Expenses_Total], [Type]) VALUES (9, 2, N'रोडा', N'१०००', N'२', N'२०००', 1)
INSERT [dbo].[AnuSuchi3_Expenses] ([AnuSuchi3_Expenses_Id], [AnuSuchi3_Id], [Expenses_Details], [Expenses_Rate], [Expenses_Quantity], [Expenses_Total], [Type]) VALUES (10, 2, N'कामदार', N'५००', N'१०', N'५०००', 2)
INSERT [dbo].[AnuSuchi3_Expenses] ([AnuSuchi3_Expenses_Id], [AnuSuchi3_Id], [Expenses_Details], [Expenses_Rate], [Expenses_Quantity], [Expenses_Total], [Type]) VALUES (11, 2, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[AnuSuchi3_Expenses] ([AnuSuchi3_Expenses_Id], [AnuSuchi3_Id], [Expenses_Details], [Expenses_Rate], [Expenses_Quantity], [Expenses_Total], [Type]) VALUES (12, 2, NULL, NULL, NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Expenses] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Income] ON 

INSERT [dbo].[AnuSuchi3_Income] ([AnuSuchi3_Income_Id], [AnuSuchi3_Id], [Income_Source], [Amount_Quantity], [Income_Remarks]) VALUES (5, 1, N'नगरपालिका, जनसहभागिता', N'३०००००', NULL)
INSERT [dbo].[AnuSuchi3_Income] ([AnuSuchi3_Income_Id], [AnuSuchi3_Id], [Income_Source], [Amount_Quantity], [Income_Remarks]) VALUES (6, 2, N'नगरपालिका  , अनुदान ', N'१२००००', NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Income] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Maujat] ON 

INSERT [dbo].[AnuSuchi3_Maujat] ([AnuSuchi3_Maujat_Id], [AnuSuchi3_Id], [Maujat_Details], [Maujat_Amount], [Maujat_Remarks], [Type]) VALUES (5, 1, N'नगद', N'१०००००', NULL, 1)
INSERT [dbo].[AnuSuchi3_Maujat] ([AnuSuchi3_Maujat_Id], [AnuSuchi3_Id], [Maujat_Details], [Maujat_Amount], [Maujat_Remarks], [Type]) VALUES (6, 1, N'बैंक', N'५००००', NULL, 2)
INSERT [dbo].[AnuSuchi3_Maujat] ([AnuSuchi3_Maujat_Id], [AnuSuchi3_Id], [Maujat_Details], [Maujat_Amount], [Maujat_Remarks], [Type]) VALUES (7, 1, N'व्यक्तिको जिम्मा', NULL, NULL, 3)
INSERT [dbo].[AnuSuchi3_Maujat] ([AnuSuchi3_Maujat_Id], [AnuSuchi3_Id], [Maujat_Details], [Maujat_Amount], [Maujat_Remarks], [Type]) VALUES (8, 1, N'सामाग्रीहरु', N'३००००', NULL, 4)
INSERT [dbo].[AnuSuchi3_Maujat] ([AnuSuchi3_Maujat_Id], [AnuSuchi3_Id], [Maujat_Details], [Maujat_Amount], [Maujat_Remarks], [Type]) VALUES (9, 2, N'नगद', N'३००००', NULL, 1)
INSERT [dbo].[AnuSuchi3_Maujat] ([AnuSuchi3_Maujat_Id], [AnuSuchi3_Id], [Maujat_Details], [Maujat_Amount], [Maujat_Remarks], [Type]) VALUES (10, 2, N'बैंक', N'५००००', NULL, 2)
INSERT [dbo].[AnuSuchi3_Maujat] ([AnuSuchi3_Maujat_Id], [AnuSuchi3_Id], [Maujat_Details], [Maujat_Amount], [Maujat_Remarks], [Type]) VALUES (11, 2, N'व्यक्तिको जिम्मा', NULL, NULL, 3)
INSERT [dbo].[AnuSuchi3_Maujat] ([AnuSuchi3_Maujat_Id], [AnuSuchi3_Id], [Maujat_Details], [Maujat_Amount], [Maujat_Remarks], [Type]) VALUES (12, 2, N'सामाग्रीहरु', NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Maujat] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Project_Work_Detail] ON 

INSERT [dbo].[AnuSuchi3_Project_Work_Detail] ([AnuSuchi3_Project_Work_Detail_Id], [AnuSuchi3_Id], [Work_Details], [Work_Plan], [Work_Progress]) VALUES (5, 1, N'अहिले सम्म ६० प्रतिसत काम सकिएको', N'अब १ महिना भीत्र बाकि काम सकने', NULL)
INSERT [dbo].[AnuSuchi3_Project_Work_Detail] ([AnuSuchi3_Project_Work_Detail_Id], [AnuSuchi3_Id], [Work_Details], [Work_Plan], [Work_Progress]) VALUES (6, 2, N'सम्पन्न नभएको', N'१ महिनामा सक्ने', N'चालु')
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Project_Work_Detail] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Work_Division] ON 

INSERT [dbo].[AnuSuchi3_Work_Division] ([AnuSuchi3_Work_Division_Id], [AnuSuchi3_Id], [Members]) VALUES (9, 1, N'राम, लेखापाल')
INSERT [dbo].[AnuSuchi3_Work_Division] ([AnuSuchi3_Work_Division_Id], [AnuSuchi3_Id], [Members]) VALUES (10, 1, N'हरि, अनुगमन')
INSERT [dbo].[AnuSuchi3_Work_Division] ([AnuSuchi3_Work_Division_Id], [AnuSuchi3_Id], [Members]) VALUES (11, 2, N'मोहन लेखापाल')
INSERT [dbo].[AnuSuchi3_Work_Division] ([AnuSuchi3_Work_Division_Id], [AnuSuchi3_Id], [Members]) VALUES (12, 2, N'रमा बजार प्रवनधक')
SET IDENTITY_INSERT [dbo].[AnuSuchi3_Work_Division] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi4] ON 

INSERT [dbo].[AnuSuchi4] ([AnuSuchi4_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Estimated_Amount], [Fiscal_Year], [Project_Approval_Date], [Project_To_Finish_Date], [Project_Ended_Date], [Samiti_Expenses_Approval_Date], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, NULL, N'ढल निर्माण', N'लाजिम्पाट', N'३०००००', N'०७३/०७४', CAST(N'2074-07-13 00:00:00.000' AS DateTime), CAST(N'2074-02-10 00:00:00.000' AS DateTime), CAST(N'2074-02-15 00:00:00.000' AS DateTime), CAST(N'2074-02-20 00:00:00.000' AS DateTime), 1, NULL, CAST(N'2018-12-16 13:51:59.313' AS DateTime), NULL, CAST(N'2018-12-16 16:44:34.750' AS DateTime), NULL, NULL)
INSERT [dbo].[AnuSuchi4] ([AnuSuchi4_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Estimated_Amount], [Fiscal_Year], [Project_Approval_Date], [Project_To_Finish_Date], [Project_Ended_Date], [Samiti_Expenses_Approval_Date], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 10, N'सम्मान कार्यक्रम', N'बालाजु', N'५०००००', N'072/073', CAST(N'2072-09-04 00:00:00.000' AS DateTime), CAST(N'2073-02-06 00:00:00.000' AS DateTime), CAST(N'2073-02-07 00:00:00.000' AS DateTime), CAST(N'2073-02-11 00:00:00.000' AS DateTime), 1, NULL, CAST(N'2018-12-23 10:10:50.977' AS DateTime), NULL, CAST(N'2018-12-23 13:10:05.003' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi4] OFF
SET IDENTITY_INSERT [dbo].[Anusuchi4_Expenses] ON 

INSERT [dbo].[Anusuchi4_Expenses] ([Anusuchi4_Expenses_Id], [Anusuchi4_Id], [Jyalla], [Nirman_Samagri_Kharid], [Dhuwani], [Bhada], [Bawestapan_Kharcha]) VALUES (3, 1, N'१०००००', N'८००००', N'३००००', N'१००००', N'१००००')
INSERT [dbo].[Anusuchi4_Expenses] ([Anusuchi4_Expenses_Id], [Anusuchi4_Id], [Jyalla], [Nirman_Samagri_Kharid], [Dhuwani], [Bhada], [Bawestapan_Kharcha]) VALUES (5, 2, N'१०००००', N'१५००००', N'३००००', N'१००००', NULL)
SET IDENTITY_INSERT [dbo].[Anusuchi4_Expenses] OFF
SET IDENTITY_INSERT [dbo].[Anusuchi4_Income] ON 

INSERT [dbo].[Anusuchi4_Income] ([Anusuchi4_Income_Id], [Anusuchi4_Id], [First_Kista], [Second_Kista], [Third_Kista], [Janashram], [Bastugat_Sahayata], [Lagat_Sahabhagita]) VALUES (3, 1, N'१०००००', N'६००००', N'४००००', N'१०००००', NULL, NULL)
INSERT [dbo].[Anusuchi4_Income] ([Anusuchi4_Income_Id], [Anusuchi4_Id], [First_Kista], [Second_Kista], [Third_Kista], [Janashram], [Bastugat_Sahayata], [Lagat_Sahabhagita]) VALUES (5, 2, N'२५००००', N'१५००००', N'५००००', N'५००००', N'१०००', NULL)
SET IDENTITY_INSERT [dbo].[Anusuchi4_Income] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi5] ON 

INSERT [dbo].[AnuSuchi5] ([AnuSuchi5_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Run_Org], [Upabhokta_Samiti_Adakshya], [Project_Estimate_Amount], [Municipality_Amount], [Jana_Sahabhagita_Amount], [Other_Org_Source_Amount], [Project_Contract_Date], [Project_End_Date], [Total_Project_Beneficiaries], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, 10, N'सम्मान कार्यक्रम', N'कार्यशिध्धि', N'मोहन', N'५०००००', N'४५००००', NULL, NULL, CAST(N'2072-06-05 00:00:00.000' AS DateTime), CAST(N'2073-02-06 00:00:00.000' AS DateTime), N'१०५', 1, NULL, CAST(N'2018-12-21 11:13:32.923' AS DateTime), NULL, CAST(N'2018-12-21 11:56:43.497' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi5] OFF
SET IDENTITY_INSERT [dbo].[Anusuchi6] ON 

INSERT [dbo].[Anusuchi6] ([Anusuchi6_Id], [Planning_Samjhauta_Id], [Project_Name], [Ward_No], [Street_Name], [Upabhokta_Samiti_Name], [Adakshya], [Sachib], [Anudan_Rakam], [Chanda_Rakam], [Jana_Sahabhagita_Rakam], [Total_Amount], [Total_Expenses_TillNow], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, NULL, N'सरसफाइ', N'१०', NULL, N'हाम्रो', N'हरि', N'सिता', N'५००००', NULL, N'२०००००', N'२५००००', N'१५००००', 1, NULL, CAST(N'2018-12-17 13:51:08.570' AS DateTime), NULL, CAST(N'2018-12-17 13:54:13.650' AS DateTime), NULL, NULL)
INSERT [dbo].[Anusuchi6] ([Anusuchi6_Id], [Planning_Samjhauta_Id], [Project_Name], [Ward_No], [Street_Name], [Upabhokta_Samiti_Name], [Adakshya], [Sachib], [Anudan_Rakam], [Chanda_Rakam], [Jana_Sahabhagita_Rakam], [Total_Amount], [Total_Expenses_TillNow], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 10, N'सम्मान कार्यक्रम', N'२', NULL, N'कार्यशिध्धि', N'मोहन', N'सिता', N'२००००', NULL, NULL, N'५०००००', N'२०००००', 1, NULL, CAST(N'2018-12-23 11:55:19.043' AS DateTime), NULL, CAST(N'2018-12-23 13:05:52.103' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Anusuchi6] OFF
SET IDENTITY_INSERT [dbo].[Anusuchi6_Janasahabhagita] ON 

INSERT [dbo].[Anusuchi6_Janasahabhagita] ([Anusuchi6_Janasahabhagita_Id], [Anusuchi6_Id], [Janasahabhagita_Amount], [Sharam_Amount], [Jinsi_Amount], [Technical_Review_Amount], [Upabhikta_Decision_Amount], [Kista_Rakam_Demand], [Field_Supervise_Decision], [Main_Expenses]) VALUES (2, 1, N'२०००००', NULL, N'२५०००', N'१००००', NULL, N'८००००', NULL, NULL)
INSERT [dbo].[Anusuchi6_Janasahabhagita] ([Anusuchi6_Janasahabhagita_Id], [Anusuchi6_Id], [Janasahabhagita_Amount], [Sharam_Amount], [Jinsi_Amount], [Technical_Review_Amount], [Upabhikta_Decision_Amount], [Kista_Rakam_Demand], [Field_Supervise_Decision], [Main_Expenses]) VALUES (6, 3, N'५००००', NULL, NULL, N'४८००००', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Anusuchi6_Janasahabhagita] OFF
SET IDENTITY_INSERT [dbo].[Anusuchi6_Karyalaya] ON 

INSERT [dbo].[Anusuchi6_Karyalaya] ([Anusuchi6_Karyalaya_Id], [Anusuchi6_Id], [Karyalaya_Amount], [Nirman_Samagri_Amount], [Dashya_Amount], [Adashya_Amount], [Others_Amount], [Travel_Expenses_Amount], [Technical_Supervise_Amount], [Masalanda_Amount]) VALUES (2, 1, N'५०००००', N'२००००', NULL, NULL, N'१००००', NULL, N'६०००', N'१२०००')
INSERT [dbo].[Anusuchi6_Karyalaya] ([Anusuchi6_Karyalaya_Id], [Anusuchi6_Id], [Karyalaya_Amount], [Nirman_Samagri_Amount], [Dashya_Amount], [Adashya_Amount], [Others_Amount], [Travel_Expenses_Amount], [Technical_Supervise_Amount], [Masalanda_Amount]) VALUES (6, 3, N'४५००००', N'२५०००', NULL, NULL, NULL, NULL, N'२००००', NULL)
SET IDENTITY_INSERT [dbo].[Anusuchi6_Karyalaya] OFF
SET IDENTITY_INSERT [dbo].[Anusuchi6_Solutions] ON 

INSERT [dbo].[Anusuchi6_Solutions] ([Anusuchi6_Solutions_Id], [Anusuchi6_Id], [Solutions]) VALUES (3, 1, N'राम्रो सँग कामलाई अगाडि बडाउने')
INSERT [dbo].[Anusuchi6_Solutions] ([Anusuchi6_Solutions_Id], [Anusuchi6_Id], [Solutions]) VALUES (4, 1, N'सबै सामानहरुको हेरचाहा गर्ने')
INSERT [dbo].[Anusuchi6_Solutions] ([Anusuchi6_Solutions_Id], [Anusuchi6_Id], [Solutions]) VALUES (5, 1, N'वातावर्ण संरछयन गर्ने')
INSERT [dbo].[Anusuchi6_Solutions] ([Anusuchi6_Solutions_Id], [Anusuchi6_Id], [Solutions]) VALUES (12, 3, N'खाजा खर्च सबैलाई प्रदान गर्ने')
INSERT [dbo].[Anusuchi6_Solutions] ([Anusuchi6_Solutions_Id], [Anusuchi6_Id], [Solutions]) VALUES (13, 3, N'दैनिक कामको विवरण पेश गर्ने')
SET IDENTITY_INSERT [dbo].[Anusuchi6_Solutions] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi7] ON 

INSERT [dbo].[AnuSuchi7] ([AnuSuchi7_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Samiti_Address], [Established_Type], [Adakshyata], [Total_Present_No], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, 10, CAST(N'2065-10-09 00:00:00.000' AS DateTime), N'अनामनगर', N'सर्वसम्मत', N'रोहित', N'७', 1, NULL, CAST(N'2018-12-28 10:51:39.600' AS DateTime), NULL, CAST(N'2018-12-28 11:36:18.037' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi7] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi7_Anugaman_Samiti] ON 

INSERT [dbo].[AnuSuchi7_Anugaman_Samiti] ([AnuSuchi7_Anugaman_Samiti_Id], [AnuSuchi7_Id], [Position], [Member_Name], [Gender], [Father_Husband_Name], [GrandFather_Name], [Mobile_No]) VALUES (7, 1, N'अध्यक्ष', N'राम', N'पुरुष', NULL, NULL, N'९८७६७६५४९०')
INSERT [dbo].[AnuSuchi7_Anugaman_Samiti] ([AnuSuchi7_Anugaman_Samiti_Id], [AnuSuchi7_Id], [Position], [Member_Name], [Gender], [Father_Husband_Name], [GrandFather_Name], [Mobile_No]) VALUES (8, 1, N'उपाध्यक्ष', N'हरि', N'पुरुष', NULL, NULL, NULL)
INSERT [dbo].[AnuSuchi7_Anugaman_Samiti] ([AnuSuchi7_Anugaman_Samiti_Id], [AnuSuchi7_Id], [Position], [Member_Name], [Gender], [Father_Husband_Name], [GrandFather_Name], [Mobile_No]) VALUES (9, 1, N'सदस्य', N'गोपाल', N'पुरुष', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi7_Anugaman_Samiti] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi7_Upabhokta_Samiti] ON 

INSERT [dbo].[AnuSuchi7_Upabhokta_Samiti] ([AnuSuchi7_Upabhokta_Samiti_Id], [AnuSuchi7_Id], [Position], [Member_Name], [Gender], [Father_Husband_Name], [GrandFather_Name], [Mobile_No]) VALUES (5, 1, N'अध्यक्ष', N'राम', N'पुरुष', NULL, NULL, NULL)
INSERT [dbo].[AnuSuchi7_Upabhokta_Samiti] ([AnuSuchi7_Upabhokta_Samiti_Id], [AnuSuchi7_Id], [Position], [Member_Name], [Gender], [Father_Husband_Name], [GrandFather_Name], [Mobile_No]) VALUES (6, 1, N'उपाध्यक्ष', N'हरि', N'पुरुष', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi7_Upabhokta_Samiti] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi9] ON 

INSERT [dbo].[AnuSuchi9] ([AnuSuchi9_Id], [Planning_Samjhauta_Id], [Adakshya], [Adakshya_Address], [Sachib], [Sachib_Address], [Koshadakshya], [Koshadakshya_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 10, N'मोहन', N'बालाजु', N'सिता', N'बालाजु', NULL, NULL, 1, NULL, CAST(N'2018-12-25 12:34:49.427' AS DateTime), NULL, CAST(N'2018-12-25 13:09:47.117' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi9] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi9_Discussion_Conclusions] ON 

INSERT [dbo].[AnuSuchi9_Discussion_Conclusions] ([AnuSuchi9_Discussion_Conclusions_Id], [AnuSuchi9_Id], [Conclusions]) VALUES (2, 2, NULL)
SET IDENTITY_INSERT [dbo].[AnuSuchi9_Discussion_Conclusions] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi9_Discussion_Subjects] ON 

INSERT [dbo].[AnuSuchi9_Discussion_Subjects] ([AnuSuchi9_Discussion_Subjects_Id], [AnuSuchi9_Id], [Subjects]) VALUES (2, 2, N'सबौ पुरा गर्ने')
SET IDENTITY_INSERT [dbo].[AnuSuchi9_Discussion_Subjects] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi9_Meeting] ON 

INSERT [dbo].[AnuSuchi9_Meeting] ([AnuSuchi9_Meeting_Id], [AnuSuchi9_Id], [Baithak_No], [Baithak_Date]) VALUES (1, 2, N'१', CAST(N'2072-06-03 00:00:00.000' AS DateTime))
INSERT [dbo].[AnuSuchi9_Meeting] ([AnuSuchi9_Meeting_Id], [AnuSuchi9_Id], [Baithak_No], [Baithak_Date]) VALUES (2, 2, N'२', CAST(N'2072-06-15 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[AnuSuchi9_Meeting] OFF
SET IDENTITY_INSERT [dbo].[AnuSuchi9_Members] ON 

INSERT [dbo].[AnuSuchi9_Members] ([AnuSuchi9_Members_Id], [AnuSuchi9_Id], [Members], [Members_Address]) VALUES (3, 2, N'रमन', N'वनस्थली')
INSERT [dbo].[AnuSuchi9_Members] ([AnuSuchi9_Members_Id], [AnuSuchi9_Id], [Members], [Members_Address]) VALUES (4, 2, N'श्याम', N'बालाजु')
SET IDENTITY_INSERT [dbo].[AnuSuchi9_Members] OFF
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'80d1935f-6593-4231-9d0a-0bd8d902d834', N'planning@gmail.com', 0, N'AFi7cxRnfZgJJIRaR02rMakR35/4sAylvLhwprjYHhw2xGKVIhHlUfaf0WzdoMSWkw==', N'ceb489a4-8234-4c88-bcbb-86d9304e3191', NULL, 0, 0, NULL, 1, 0, N'planning@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'95e4bde3-d0df-4cbb-8a86-dc53e76d5b16', N'bipindhakal05@gmail.com', 0, N'ADKE5gjCdk8OSlnwa2va6wUgyJ+HM2jCRh/+rUrO5cEVsR8Q6vvdpvJ0ePY05z/FOw==', N'c5c8170a-484c-4df7-b421-310521c96d70', NULL, 0, 0, NULL, 1, 0, N'bipindhakal05@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a47391df-8cb8-434b-90fb-ce6446a6061b', N'kirishna@gmail.com', 0, N'ALF0lbHjFz7bvqdv7Uxtsh36l88CHXmFu/Z8lG1Zm3Dj0DNCeyUZ9zNi7XkxR6qLkA==', N'22c780fb-dbcd-415c-a256-8631c6875c91', NULL, 0, 0, NULL, 1, 0, N'kirishna@gmail.com')
SET IDENTITY_INSERT [dbo].[Beneficiaries_Group] ON 

INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 9, N'60', N'45', N'60', N'सबेे', NULL, 1, NULL, CAST(N'2018-11-17 22:28:47.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 10, N'४०', N'४५', N'६०', N'सबेे', NULL, 1, NULL, CAST(N'2018-11-19 12:04:43.697' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, 12, N'४०', N'४५', N'६०', N'सबेे', NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.230' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 11, N'३०', N'४५', N'६०', N'सबेे', NULL, 1, NULL, CAST(N'2018-11-22 16:10:40.587' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (15, 13, N'५०', N'६०', N'६५', N'सबेे', NULL, 1, NULL, CAST(N'2018-11-23 10:31:11.387' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (16, 14, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.200' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (24, 21, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:42.477' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (28, 22, N'३०', N'६५', N'५५', N'शेर्पा, तामाङ्ग', NULL, 1, NULL, CAST(N'2018-11-30 10:12:39.830' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (29, 8, N'30', N'20', N'30', N'सबेे', NULL, 1, NULL, CAST(N'2018-12-07 13:09:23.420' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (30, 23, N'५०', N'६०', NULL, N'सबेे', NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.130' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (31, 24, N'५०', N'५५', N'६०', N'सबै', NULL, 1, NULL, CAST(N'2019-01-02 11:46:36.967' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (33, 25, N'१००', N'१३०', N'१४०', N'विभिन्न', NULL, 1, NULL, CAST(N'2019-01-09 16:33:34.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (34, 26, N'२००', N'२५०', N'२८०', N'विभिन्न', NULL, 1, NULL, CAST(N'2019-01-10 11:05:25.020' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Beneficiaries_Group] ([Beneficiaries_Group_Id], [Planning_Samjhauta_Id], [Total_House], [Total_Male], [Total_Female], [Community], [Other], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (35, 27, N'४०', N'६०', N'५५', N'शबै', NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.117' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Beneficiaries_Group] OFF
SET IDENTITY_INSERT [dbo].[Budget_Source] ON 

INSERT [dbo].[Budget_Source] ([Budget_Source_Id], [Source_Name], [Status]) VALUES (1, N'वितिय समानिकरण', 1)
INSERT [dbo].[Budget_Source] ([Budget_Source_Id], [Source_Name], [Status]) VALUES (2, N'प्रदेश सरकार', 1)
INSERT [dbo].[Budget_Source] ([Budget_Source_Id], [Source_Name], [Status]) VALUES (3, N'आन्तरिक श्रोत', 1)
SET IDENTITY_INSERT [dbo].[Budget_Source] OFF
SET IDENTITY_INSERT [dbo].[Class_A_Bank_List] ON 

INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (1, N'नेपाल बैङ्क लिमिटेड', N'Nepal Bank')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (2, N'राष्ट्रीय वाणिज्य बैङ्क लिमिटेड', N'Rastriya Banijya Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (3, N'कृषि विकास बैङ्क लिमिटेड', N'Agriculture Development Bank Limited ')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (4, N'सिद्धार्थ बैङ्क लिमिटेड', N'Siddhartha Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (5, N'कुमारी बैङ्क लिमिटेड', N'Kumari Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (6, N'नबिल बैङ्क लिमिटेड', N'Nabil Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (7, N'नेपाल इन्भेस्टमेन्ट बैङ्क लिमिटेड', N'Nepal Investment Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (8, N'स्ट्याण्डर्ड चार्टर्ड बैङ्क नेपाल लिमिटेड', N'Standard Chartered Bank Nepal Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (9, N'हिमालयन बैङ्क लिमिटेड', N'Himalayan Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (10, N'नेपाल एस.बी.आई. बैङ्क लिमिटेड', N'Nepal SBI Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (11, N'नेपाल बङ्ग्लादेश बैङ्क लिमिटेड', N'Nepal Bangladesh Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (12, N'एभरेस्ट बैङ्क लिमिटेड', N'Everest Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (13, N'प्रभू बैङ्क लिमिटेड', N'Prabhu Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (14, N'बैङ्क अफ काठमाण्डौ लिमिटेड', N'Bank of Kathmandu Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (15, N'नेपाल क्रेडिट ऍण्ड कमर्स बैँक लिमिटेड', N'Nepal Credit and Commerce Bank Limited ')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (16, N'ग्लोबल आईएमई बैङ्क लिमिटेड', N'Global IME Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (17, N'सिटीजन्स् बैङ्क इन्टर्नेशनल लिमिटेड', N'Citizens Bank International Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (18, N'प्राइम कॉमर्शिअल बैङ्क लिमिटेड', N'Prime Commercial Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (19, N'सनराइज बैङ्क लिमिटेड', N'Sunrise Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (20, N'एनएमबी बैङ्क लिमिटेड', N'NMB Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (21, N'एन.आई.सि. एशिया बैङ्क लिमिटेड', N'NIC Asia Bank Limited ')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (22, N'माछापुच्छ्रे बैङ्क लिमिटेड', N'Machhapuchhre Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (23, N'सिभिल बैङ्क लिमिटेड', N'Civil Bank Limited ')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (24, N'सेञ्चुरी बैङ्क लिमिटेड', N'Century Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (25, N'सानिमा बैङ्क लिमिटेड', N'Sanima Bank Limited ')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (26, N'लक्ष्मी बैङ्क लिमिटेड', N'Laxmi Bank Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (27, N'जनता बैङ्क नेपाल लिमिटेड', N'Janata Bank Nepal Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (28, N'मेगा बैङ्क नेपाल लिमिटेड', N'Mega Bank Nepal Limited')
INSERT [dbo].[Class_A_Bank_List] ([Class_A_Bank_List_Id], [Bank_Name_Nepali], [Bank_Name_English]) VALUES (29, N'अन्य', N'Other')
SET IDENTITY_INSERT [dbo].[Class_A_Bank_List] OFF
SET IDENTITY_INSERT [dbo].[Darkhasta_Form] ON 

INSERT [dbo].[Darkhasta_Form] ([Darkhasta_Form_Id], [Bank_Name], [Ward_No], [Samiti_Name], [Adakshya_Name], [Koshadakshya_Name], [Sachib_Name], [Chalani_Number], [Other_Bank_Name], [CreatedBy], [Status], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate], [Fiscal_Year_Record]) VALUES (1, N'माछापुच्छ्रे बैङ्क लिमिटेड', 17, N'मदरसा भवन निर्माण', N'मोहमद हनिफ मियाँ', N'नबुजा खाहुन', N'मो.इरफान', N'३९७५', NULL, NULL, 1, CAST(N'2018-12-05 13:57:05.323' AS DateTime), NULL, CAST(N'2018-12-06 11:52:42.530' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Darkhasta_Form] ([Darkhasta_Form_Id], [Bank_Name], [Ward_No], [Samiti_Name], [Adakshya_Name], [Koshadakshya_Name], [Sachib_Name], [Chalani_Number], [Other_Bank_Name], [CreatedBy], [Status], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate], [Fiscal_Year_Record]) VALUES (2, N'अन्य', 5, N'राम्रो', N'राम बहादुर', N'हरि', N'मोहन', N'२३४५५', N'समाजिक बैंक', NULL, 1, CAST(N'2018-12-06 10:29:39.237' AS DateTime), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Darkhasta_Form] OFF
SET IDENTITY_INSERT [dbo].[DateConversion_TblNepaliCalender] ON 

INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (1, N'2070', N'2', CAST(N'2013-05-15 00:00:00.000' AS DateTime), CAST(N'2013-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (2, N'2070', N'3', CAST(N'2013-06-15 00:00:00.000' AS DateTime), CAST(N'2013-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (3, N'2070', N'4', CAST(N'2013-07-16 00:00:00.000' AS DateTime), CAST(N'2013-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (4, N'2070', N'5', CAST(N'2013-08-17 00:00:00.000' AS DateTime), CAST(N'2013-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (5, N'2070', N'6', CAST(N'2013-09-17 00:00:00.000' AS DateTime), CAST(N'2013-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (6, N'2070', N'7', CAST(N'2013-10-18 00:00:00.000' AS DateTime), CAST(N'2013-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (7, N'2070', N'8', CAST(N'2013-11-16 00:00:00.000' AS DateTime), CAST(N'2013-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (8, N'2070', N'9', CAST(N'2013-12-16 00:00:00.000' AS DateTime), CAST(N'2014-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (9, N'2070', N'10', CAST(N'2014-01-15 00:00:00.000' AS DateTime), CAST(N'2014-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (10, N'2070', N'11', CAST(N'2014-02-13 00:00:00.000' AS DateTime), CAST(N'2014-03-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (11, N'2070', N'12', CAST(N'2014-03-15 00:00:00.000' AS DateTime), CAST(N'2014-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (12, N'2065', N'2', CAST(N'2008-05-14 00:00:00.000' AS DateTime), CAST(N'2008-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (13, N'2064', N'4', CAST(N'2007-07-17 00:00:00.000' AS DateTime), CAST(N'2007-08-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (14, N'2065', N'5', CAST(N'2008-08-17 00:00:00.000' AS DateTime), CAST(N'2008-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (15, N'2065', N'6', CAST(N'2008-09-17 00:00:00.000' AS DateTime), CAST(N'2008-10-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (16, N'2065', N'7', CAST(N'2008-10-17 00:00:00.000' AS DateTime), CAST(N'2008-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (17, N'2065', N'8', CAST(N'2008-11-16 00:00:00.000' AS DateTime), CAST(N'2008-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (18, N'2065', N'9', CAST(N'2008-12-16 00:00:00.000' AS DateTime), CAST(N'2009-01-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (19, N'2065', N'10', CAST(N'2009-01-14 00:00:00.000' AS DateTime), CAST(N'2009-02-11 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (20, N'2065', N'11', CAST(N'2009-02-12 00:00:00.000' AS DateTime), CAST(N'2009-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (21, N'2065', N'12', CAST(N'2009-03-14 00:00:00.000' AS DateTime), CAST(N'2009-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (22, N'2065', N'1', CAST(N'2008-04-13 00:00:00.000' AS DateTime), CAST(N'2008-05-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (23, N'2065', N'3', CAST(N'2008-06-15 00:00:00.000' AS DateTime), CAST(N'2008-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (24, N'2065', N'4', CAST(N'2008-07-16 00:00:00.000' AS DateTime), CAST(N'2008-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (25, N'2066', N'4', CAST(N'2009-07-17 00:00:00.000' AS DateTime), CAST(N'2009-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (26, N'2067', N'4', CAST(N'2010-07-16 00:00:00.000' AS DateTime), CAST(N'2010-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (27, N'2064', N'1', CAST(N'2007-04-14 00:00:00.000' AS DateTime), CAST(N'2007-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (28, N'2064', N'2', CAST(N'2007-05-15 00:00:00.000' AS DateTime), CAST(N'2007-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (29, N'2064', N'3', CAST(N'2007-06-15 00:00:00.000' AS DateTime), CAST(N'2007-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (30, N'2064', N'5', CAST(N'2007-08-18 00:00:00.000' AS DateTime), CAST(N'2007-09-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (31, N'2064', N'6', CAST(N'2007-09-18 00:00:00.000' AS DateTime), CAST(N'2007-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (32, N'2064', N'7', CAST(N'2007-10-18 00:00:00.000' AS DateTime), CAST(N'2007-11-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (33, N'2064', N'8', CAST(N'2007-11-18 00:00:00.000' AS DateTime), CAST(N'2007-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (34, N'2064', N'9', CAST(N'2007-12-16 00:00:00.000' AS DateTime), CAST(N'2008-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (35, N'2064', N'10', CAST(N'2008-01-15 00:00:00.000' AS DateTime), CAST(N'2008-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (36, N'2064', N'11', CAST(N'2008-02-13 00:00:00.000' AS DateTime), CAST(N'2008-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (37, N'2064', N'12', CAST(N'2008-03-14 00:00:00.000' AS DateTime), CAST(N'2008-04-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (38, N'2066', N'1', CAST(N'2009-04-14 00:00:00.000' AS DateTime), CAST(N'2009-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (39, N'2066', N'2', CAST(N'2009-05-15 00:00:00.000' AS DateTime), CAST(N'2009-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (40, N'2066', N'3', CAST(N'2009-06-15 00:00:00.000' AS DateTime), CAST(N'2009-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (41, N'2069', N'1', CAST(N'2012-04-13 00:00:00.000' AS DateTime), CAST(N'2012-05-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (42, N'2069', N'2', CAST(N'2012-05-14 00:00:00.000' AS DateTime), CAST(N'2012-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (43, N'2069', N'3', CAST(N'2012-06-15 00:00:00.000' AS DateTime), CAST(N'2012-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (44, N'2069', N'4', CAST(N'2012-07-16 00:00:00.000' AS DateTime), CAST(N'2012-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (45, N'2069', N'5', CAST(N'2012-08-17 00:00:00.000' AS DateTime), CAST(N'2012-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (46, N'2069', N'6', CAST(N'2012-09-17 00:00:00.000' AS DateTime), CAST(N'2012-10-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (47, N'2069', N'7', CAST(N'2012-10-17 00:00:00.000' AS DateTime), CAST(N'2012-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (48, N'2069', N'8', CAST(N'2012-11-16 00:00:00.000' AS DateTime), CAST(N'2012-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (49, N'2069', N'9', CAST(N'2012-12-16 00:00:00.000' AS DateTime), CAST(N'2013-01-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (50, N'2069', N'10', CAST(N'2013-01-14 00:00:00.000' AS DateTime), CAST(N'2013-02-11 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (51, N'2069', N'11', CAST(N'2013-02-12 00:00:00.000' AS DateTime), CAST(N'2013-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (52, N'2069', N'12', CAST(N'2013-03-14 00:00:00.000' AS DateTime), CAST(N'2013-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (53, N'2070', N'1', CAST(N'2013-04-14 00:00:00.000' AS DateTime), CAST(N'2013-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (54, N'2044', N'8', CAST(N'1987-11-17 00:00:00.000' AS DateTime), CAST(N'1987-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (56, N'2071', N'1', CAST(N'2014-04-14 00:00:00.000' AS DateTime), CAST(N'2014-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (57, N'2071', N'2', CAST(N'2014-05-15 00:00:00.000' AS DateTime), CAST(N'2014-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (58, N'2071', N'3', CAST(N'2014-06-15 00:00:00.000' AS DateTime), CAST(N'2014-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (59, N'2071', N'4', CAST(N'2014-07-17 00:00:00.000' AS DateTime), CAST(N'2014-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (60, N'2071', N'5', CAST(N'2014-08-17 00:00:00.000' AS DateTime), CAST(N'2014-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (61, N'2071', N'6', CAST(N'2014-09-17 00:00:00.000' AS DateTime), CAST(N'2014-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (62, N'2071', N'7', CAST(N'2014-10-18 00:00:00.000' AS DateTime), CAST(N'2014-11-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (63, N'2071', N'8', CAST(N'2014-11-17 00:00:00.000' AS DateTime), CAST(N'2014-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (64, N'2071', N'9', CAST(N'2014-12-16 00:00:00.000' AS DateTime), CAST(N'2015-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (65, N'2071', N'10', CAST(N'2015-01-15 00:00:00.000' AS DateTime), CAST(N'2015-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (66, N'2071', N'11', CAST(N'2015-02-13 00:00:00.000' AS DateTime), CAST(N'2015-03-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (67, N'2071', N'12', CAST(N'2015-03-15 00:00:00.000' AS DateTime), CAST(N'2015-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (68, N'2072', N'1', CAST(N'2015-04-14 00:00:00.000' AS DateTime), CAST(N'2015-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (69, N'2072', N'2', CAST(N'2015-05-15 00:00:00.000' AS DateTime), CAST(N'2015-06-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (70, N'2072', N'3', CAST(N'2015-06-16 00:00:00.000' AS DateTime), CAST(N'2015-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (71, N'2072', N'4', CAST(N'2015-07-17 00:00:00.000' AS DateTime), CAST(N'2015-08-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (72, N'2072', N'5', CAST(N'2015-08-18 00:00:00.000' AS DateTime), CAST(N'2015-09-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (73, N'2072', N'6', CAST(N'2015-09-18 00:00:00.000' AS DateTime), CAST(N'2015-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (74, N'2072', N'7', CAST(N'2015-10-18 00:00:00.000' AS DateTime), CAST(N'2015-11-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (75, N'2072', N'8', CAST(N'2015-11-17 00:00:00.000' AS DateTime), CAST(N'2015-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (76, N'2072', N'9', CAST(N'2015-12-16 00:00:00.000' AS DateTime), CAST(N'2016-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (77, N'2072', N'10', CAST(N'2016-01-15 00:00:00.000' AS DateTime), CAST(N'2016-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (78, N'2072', N'11', CAST(N'2016-02-13 00:00:00.000' AS DateTime), CAST(N'2016-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (79, N'2072', N'12', CAST(N'2016-03-14 00:00:00.000' AS DateTime), CAST(N'2016-04-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (80, N'2073', N'1', CAST(N'2016-04-13 00:00:00.000' AS DateTime), CAST(N'2016-05-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (81, N'2073', N'2', CAST(N'2016-05-14 00:00:00.000' AS DateTime), CAST(N'2016-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (82, N'2073', N'3', CAST(N'2016-06-15 00:00:00.000' AS DateTime), CAST(N'2016-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (83, N'2073', N'4', CAST(N'2016-07-16 00:00:00.000' AS DateTime), CAST(N'2016-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (84, N'2073', N'5', CAST(N'2016-08-17 00:00:00.000' AS DateTime), CAST(N'2016-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (85, N'2073', N'6', CAST(N'2016-09-17 00:00:00.000' AS DateTime), CAST(N'2016-10-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (86, N'2073', N'7', CAST(N'2016-10-17 00:00:00.000' AS DateTime), CAST(N'2016-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (87, N'2073', N'8', CAST(N'2016-11-16 00:00:00.000' AS DateTime), CAST(N'2016-12-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (88, N'2073', N'9', CAST(N'2016-12-16 00:00:00.000' AS DateTime), CAST(N'2017-01-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (89, N'2073', N'10', CAST(N'2017-01-14 00:00:00.000' AS DateTime), CAST(N'2017-02-11 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (90, N'2073', N'11', CAST(N'2017-02-12 00:00:00.000' AS DateTime), CAST(N'2017-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (91, N'2073', N'12', CAST(N'2017-03-14 00:00:00.000' AS DateTime), CAST(N'2017-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (92, N'2074', N'1', CAST(N'2017-04-14 00:00:00.000' AS DateTime), CAST(N'2017-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (93, N'2074', N'2', CAST(N'2017-05-15 00:00:00.000' AS DateTime), CAST(N'2017-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (94, N'2074', N'3', CAST(N'2017-06-15 00:00:00.000' AS DateTime), CAST(N'2017-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (95, N'2074', N'4', CAST(N'2017-07-16 00:00:00.000' AS DateTime), CAST(N'2017-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (96, N'2074', N'5', CAST(N'2017-08-17 00:00:00.000' AS DateTime), CAST(N'2017-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (97, N'2074', N'6', CAST(N'2017-09-17 00:00:00.000' AS DateTime), CAST(N'2017-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (98, N'2074', N'7', CAST(N'2017-10-18 00:00:00.000' AS DateTime), CAST(N'2017-11-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (99, N'2074', N'8', CAST(N'2017-11-17 00:00:00.000' AS DateTime), CAST(N'2017-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (100, N'2074', N'9', CAST(N'2017-12-16 00:00:00.000' AS DateTime), CAST(N'2018-01-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (101, N'2074', N'10', CAST(N'2018-01-15 00:00:00.000' AS DateTime), CAST(N'2018-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (102, N'2074', N'11', CAST(N'2018-02-13 00:00:00.000' AS DateTime), CAST(N'2018-03-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (103, N'2074', N'12', CAST(N'2018-03-15 00:00:00.000' AS DateTime), CAST(N'2018-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (104, N'2075', N'1', CAST(N'2018-04-14 00:00:00.000' AS DateTime), CAST(N'2018-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (105, N'2075', N'2', CAST(N'2018-05-15 00:00:00.000' AS DateTime), CAST(N'2018-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (106, N'2075', N'3', CAST(N'2018-06-15 00:00:00.000' AS DateTime), CAST(N'2018-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (107, N'2075', N'4', CAST(N'2018-07-17 00:00:00.000' AS DateTime), CAST(N'2018-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (108, N'2075', N'5', CAST(N'2018-08-17 00:00:00.000' AS DateTime), CAST(N'2018-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (109, N'2075', N'6', CAST(N'2018-09-17 00:00:00.000' AS DateTime), CAST(N'2018-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (110, N'2075', N'7', CAST(N'2018-10-18 00:00:00.000' AS DateTime), CAST(N'2018-11-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (111, N'2075', N'8', CAST(N'2018-11-17 00:00:00.000' AS DateTime), CAST(N'2018-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (112, N'2075', N'9', CAST(N'2018-12-16 00:00:00.000' AS DateTime), CAST(N'2019-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (113, N'2075', N'10', CAST(N'2019-01-15 00:00:00.000' AS DateTime), CAST(N'2019-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (114, N'2075', N'11', CAST(N'2019-02-13 00:00:00.000' AS DateTime), CAST(N'2019-03-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (115, N'2075', N'12', CAST(N'2019-03-15 00:00:00.000' AS DateTime), CAST(N'2019-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (116, N'2076', N'1', CAST(N'2019-04-14 00:00:00.000' AS DateTime), CAST(N'2019-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (117, N'2076', N'2', CAST(N'2019-05-15 00:00:00.000' AS DateTime), CAST(N'2019-06-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (118, N'2076', N'3', CAST(N'2019-06-16 00:00:00.000' AS DateTime), CAST(N'2019-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (119, N'2076', N'4', CAST(N'2019-07-17 00:00:00.000' AS DateTime), CAST(N'2019-08-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (120, N'2076', N'5', CAST(N'2019-08-18 00:00:00.000' AS DateTime), CAST(N'2019-09-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (121, N'2076', N'6', CAST(N'2019-09-18 00:00:00.000' AS DateTime), CAST(N'2019-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (122, N'2076', N'7', CAST(N'2019-10-18 00:00:00.000' AS DateTime), CAST(N'2019-11-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (123, N'2076', N'8', CAST(N'2019-11-17 00:00:00.000' AS DateTime), CAST(N'2019-12-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (124, N'2076', N'9', CAST(N'2019-12-17 00:00:00.000' AS DateTime), CAST(N'2020-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (125, N'2076', N'10', CAST(N'2020-01-15 00:00:00.000' AS DateTime), CAST(N'2020-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (126, N'2076', N'11', CAST(N'2020-02-13 00:00:00.000' AS DateTime), CAST(N'2020-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (127, N'2076', N'12', CAST(N'2020-03-14 00:00:00.000' AS DateTime), CAST(N'2020-04-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (128, N'2077', N'1', CAST(N'2020-04-13 00:00:00.000' AS DateTime), CAST(N'2020-05-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (129, N'2077', N'2', CAST(N'2020-05-14 00:00:00.000' AS DateTime), CAST(N'2020-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (130, N'2077', N'3', CAST(N'2020-06-15 00:00:00.000' AS DateTime), CAST(N'2020-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (131, N'2077', N'4', CAST(N'2020-07-16 00:00:00.000' AS DateTime), CAST(N'2020-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (132, N'2077', N'5', CAST(N'2020-08-17 00:00:00.000' AS DateTime), CAST(N'2020-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (133, N'2077', N'6', CAST(N'2020-09-17 00:00:00.000' AS DateTime), CAST(N'2020-10-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (134, N'2077', N'7', CAST(N'2020-10-17 00:00:00.000' AS DateTime), CAST(N'2020-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (135, N'2077', N'8', CAST(N'2020-11-16 00:00:00.000' AS DateTime), CAST(N'2020-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (136, N'2077', N'9', CAST(N'2020-12-16 00:00:00.000' AS DateTime), CAST(N'2021-01-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (137, N'2077', N'10', CAST(N'2021-01-14 00:00:00.000' AS DateTime), CAST(N'2021-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (138, N'2077', N'11', CAST(N'2021-02-13 00:00:00.000' AS DateTime), CAST(N'2021-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (139, N'2077', N'12', CAST(N'2021-03-14 00:00:00.000' AS DateTime), CAST(N'2021-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (140, N'2078', N'1', CAST(N'2021-04-14 00:00:00.000' AS DateTime), CAST(N'2021-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (141, N'2078', N'2', CAST(N'2021-05-15 00:00:00.000' AS DateTime), CAST(N'2021-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (142, N'2078', N'3', CAST(N'2021-06-15 00:00:00.000' AS DateTime), CAST(N'2021-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (143, N'2078', N'4', CAST(N'2021-07-16 00:00:00.000' AS DateTime), CAST(N'2021-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (144, N'2078', N'5', CAST(N'2021-08-17 00:00:00.000' AS DateTime), CAST(N'2021-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (145, N'2078', N'6', CAST(N'2021-09-17 00:00:00.000' AS DateTime), CAST(N'2021-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (146, N'2078', N'7', CAST(N'2021-10-18 00:00:00.000' AS DateTime), CAST(N'2021-11-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (147, N'2078', N'8', CAST(N'2021-11-17 00:00:00.000' AS DateTime), CAST(N'2021-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (148, N'2078', N'9', CAST(N'2021-12-16 00:00:00.000' AS DateTime), CAST(N'2022-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (149, N'2078', N'10', CAST(N'2022-01-15 00:00:00.000' AS DateTime), CAST(N'2022-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (150, N'2078', N'11', CAST(N'2022-02-13 00:00:00.000' AS DateTime), CAST(N'2022-03-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (151, N'2078', N'12', CAST(N'2022-03-15 00:00:00.000' AS DateTime), CAST(N'2022-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (152, N'2079', N'1', CAST(N'2022-04-14 00:00:00.000' AS DateTime), CAST(N'2022-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (153, N'2079', N'2', CAST(N'2022-05-15 00:00:00.000' AS DateTime), CAST(N'2022-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (154, N'2079', N'3', CAST(N'2022-06-15 00:00:00.000' AS DateTime), CAST(N'2022-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (155, N'2079', N'4', CAST(N'2022-07-17 00:00:00.000' AS DateTime), CAST(N'2022-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (156, N'2079', N'5', CAST(N'2022-08-17 00:00:00.000' AS DateTime), CAST(N'2022-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (157, N'2079', N'6', CAST(N'2022-09-17 00:00:00.000' AS DateTime), CAST(N'2022-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (158, N'2079', N'7', CAST(N'2022-10-18 00:00:00.000' AS DateTime), CAST(N'2022-11-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (159, N'2079', N'8', CAST(N'2022-11-17 00:00:00.000' AS DateTime), CAST(N'2022-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (160, N'2079', N'9', CAST(N'2022-12-16 00:00:00.000' AS DateTime), CAST(N'2023-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (161, N'2079', N'10', CAST(N'2023-01-15 00:00:00.000' AS DateTime), CAST(N'2023-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (162, N'2079', N'11', CAST(N'2023-02-13 00:00:00.000' AS DateTime), CAST(N'2023-03-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (163, N'2079', N'12', CAST(N'2023-03-15 00:00:00.000' AS DateTime), CAST(N'2023-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (164, N'2080', N'1', CAST(N'2023-04-14 00:00:00.000' AS DateTime), CAST(N'2023-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (165, N'2080', N'2', CAST(N'2023-05-15 00:00:00.000' AS DateTime), CAST(N'2023-06-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (166, N'2080', N'3', CAST(N'2023-06-16 00:00:00.000' AS DateTime), CAST(N'2023-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (167, N'2080', N'4', CAST(N'2023-07-17 00:00:00.000' AS DateTime), CAST(N'2023-08-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (168, N'2080', N'5', CAST(N'2023-08-18 00:00:00.000' AS DateTime), CAST(N'2023-09-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (169, N'2080', N'6', CAST(N'2023-09-18 00:00:00.000' AS DateTime), CAST(N'2023-10-17 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (170, N'2080', N'7', CAST(N'2023-10-18 00:00:00.000' AS DateTime), CAST(N'2023-11-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (171, N'2080', N'8', CAST(N'2023-11-17 00:00:00.000' AS DateTime), CAST(N'2023-12-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (172, N'2080', N'9', CAST(N'2023-12-17 00:00:00.000' AS DateTime), CAST(N'2024-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (173, N'2080', N'10', CAST(N'2024-01-15 00:00:00.000' AS DateTime), CAST(N'2024-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (174, N'2080', N'11', CAST(N'2024-02-13 00:00:00.000' AS DateTime), CAST(N'2024-03-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (175, N'2080', N'12', CAST(N'2024-03-14 00:00:00.000' AS DateTime), CAST(N'2024-04-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (176, N'2081', N'1', CAST(N'2024-04-13 00:00:00.000' AS DateTime), CAST(N'2024-05-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (177, N'2081', N'2', CAST(N'2024-05-14 00:00:00.000' AS DateTime), CAST(N'2024-06-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (178, N'2081', N'3', CAST(N'2024-06-14 00:00:00.000' AS DateTime), CAST(N'2024-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (179, N'2081', N'4', CAST(N'2024-07-16 00:00:00.000' AS DateTime), CAST(N'2024-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (180, N'2081', N'5', CAST(N'2024-08-17 00:00:00.000' AS DateTime), CAST(N'2024-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (181, N'2081', N'6', CAST(N'2024-09-17 00:00:00.000' AS DateTime), CAST(N'2024-10-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (182, N'2081', N'7', CAST(N'2024-10-17 00:00:00.000' AS DateTime), CAST(N'2024-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (183, N'2081', N'8', CAST(N'2024-11-16 00:00:00.000' AS DateTime), CAST(N'2024-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (184, N'2081', N'9', CAST(N'2024-12-16 00:00:00.000' AS DateTime), CAST(N'2025-01-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (185, N'2081', N'10', CAST(N'2025-01-14 00:00:00.000' AS DateTime), CAST(N'2025-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (186, N'2081', N'11', CAST(N'2025-02-13 00:00:00.000' AS DateTime), CAST(N'2025-03-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (187, N'2081', N'12', CAST(N'2025-03-15 00:00:00.000' AS DateTime), CAST(N'2025-04-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (188, N'2082', N'1', CAST(N'2025-04-14 00:00:00.000' AS DateTime), CAST(N'2025-05-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (189, N'2082', N'2', CAST(N'2025-05-14 00:00:00.000' AS DateTime), CAST(N'2025-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (190, N'2082', N'3', CAST(N'2025-06-15 00:00:00.000' AS DateTime), CAST(N'2025-07-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (191, N'2082', N'4', CAST(N'2025-07-16 00:00:00.000' AS DateTime), CAST(N'2025-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (192, N'2082', N'5', CAST(N'2025-08-17 00:00:00.000' AS DateTime), CAST(N'2025-09-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (193, N'2082', N'6', CAST(N'2025-09-17 00:00:00.000' AS DateTime), CAST(N'2025-10-16 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (194, N'2082', N'7', CAST(N'2025-10-17 00:00:00.000' AS DateTime), CAST(N'2025-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (195, N'2082', N'8', CAST(N'2025-11-16 00:00:00.000' AS DateTime), CAST(N'2025-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (196, N'2082', N'9', CAST(N'2025-12-16 00:00:00.000' AS DateTime), CAST(N'2026-01-13 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (197, N'2082', N'10', CAST(N'2026-01-14 00:00:00.000' AS DateTime), CAST(N'2026-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (198, N'2082', N'11', CAST(N'2026-02-13 00:00:00.000' AS DateTime), CAST(N'2026-03-14 00:00:00.000' AS DateTime))
INSERT [dbo].[DateConversion_TblNepaliCalender] ([ID], [YearID], [MonthID], [E_Start_Date], [E_End_Date]) VALUES (199, N'2082', N'12', CAST(N'2026-03-15 00:00:00.000' AS DateTime), CAST(N'2026-04-13 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DateConversion_TblNepaliCalender] OFF
GO
SET IDENTITY_INSERT [dbo].[Fiscal_Year_Record] ON 

INSERT [dbo].[Fiscal_Year_Record] ([Fiscal_Year_Record_Id], [Title], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'०७३/०७४', 0, NULL, CAST(N'2019-01-09 11:57:29.117' AS DateTime), NULL, NULL)
INSERT [dbo].[Fiscal_Year_Record] ([Fiscal_Year_Record_Id], [Title], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'०७४/०७५', 0, NULL, CAST(N'2019-01-09 11:58:51.867' AS DateTime), NULL, NULL)
INSERT [dbo].[Fiscal_Year_Record] ([Fiscal_Year_Record_Id], [Title], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'०७५/०७६', 1, NULL, CAST(N'2019-01-09 12:00:03.573' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Fiscal_Year_Record] OFF
SET IDENTITY_INSERT [dbo].[Kar_Katti] ON 

INSERT [dbo].[Kar_Katti] ([Kar_Katti_Id], [Contigency], [MarmatSambhar], [SamajikSurekchya], [BahalKar], [AgrimShulka], [Parishramik], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'५', N'१', N'१', N'१०', N'१.५', N'१५', 1, NULL, CAST(N'2019-01-06 16:03:02.160' AS DateTime), NULL, CAST(N'2019-01-06 16:36:18.120' AS DateTime))
SET IDENTITY_INSERT [dbo].[Kar_Katti] OFF
SET IDENTITY_INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ON 

INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 9, N'राजन भट्ट', N'अध्यक्ष', NULL, NULL, N'निशा थापा', NULL, N'कुशल कुवर', NULL, N'नगरपालिका', NULL, 1, NULL, CAST(N'2018-11-17 22:29:34.313' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 10, N'रमन', N'अध्यक्ष', NULL, NULL, N'मोहन', NULL, N'सिता', NULL, N'नगरपालिका', NULL, 1, NULL, CAST(N'2018-11-19 12:05:00.500' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, 12, N'रमन', N'अध्यक्ष', NULL, CAST(N'2075-08-21 00:00:00.000' AS DateTime), N'मोहन', NULL, N'सिता', NULL, N'नगरपालिका', NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.240' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 11, N'मोहन शर्मा', N'अध्यक्ष', NULL, CAST(N'2074-07-13 00:00:00.000' AS DateTime), N'अशोक राई', NULL, N'मोहन नेपाली', NULL, N'नगरपालिका', NULL, 1, NULL, CAST(N'2018-11-22 16:10:41.367' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (13, 13, N'युवराज', N'अध्यक्ष', NULL, CAST(N'2070-06-02 00:00:00.000' AS DateTime), N'गोविन्द', NULL, N'विकल्प', NULL, N'नगरपालिका', NULL, 1, NULL, CAST(N'2018-11-23 10:31:12.057' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (14, 14, N'रमन', N'अध्यक्ष', NULL, CAST(N'2073-08-08 00:00:00.000' AS DateTime), N'मोहन', NULL, N'सिता', NULL, N'नगरपालिका', NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.210' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (22, 21, NULL, NULL, NULL, CAST(N'2075-08-11 00:00:00.000' AS DateTime), N'रोहित', NULL, N'गोमा', NULL, N'नगरपालिका', NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (26, 22, N'विजयराज सुबेदी ', NULL, NULL, CAST(N'2075-08-13 00:00:00.000' AS DateTime), N'काजी तामांग ', NULL, N'मिङ्गमार डोमा शेर्पा ', NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.553' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (27, 8, N'रमन', N'अध्यक्ष', NULL, CAST(N'2075-08-01 00:00:00.000' AS DateTime), N'मोहन', NULL, N'सिता', NULL, N'नगरपालिका', NULL, 1, NULL, CAST(N'2018-12-07 13:09:24.487' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (28, 23, N'युवराज', N'अध्यक्ष', NULL, CAST(N'2075-08-21 00:00:00.000' AS DateTime), N'मोहन', NULL, N'सिता', NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.143' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (29, 24, N'करण', N'अधिकृत', NULL, CAST(N'2075-09-18 00:00:00.000' AS DateTime), N'गोपाल', NULL, N'रोहन', NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-02 11:46:57.600' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (31, 25, N'गजेनद्रनाथ शर्मा', N'प्रमुख प्रशासकीय (उपसचीव)', NULL, CAST(N'2075-09-23 00:00:00.000' AS DateTime), N'करन', NULL, N'कोमल', NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-09 16:33:34.770' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (32, 26, N'जनारदन ', N'कार्यकारी प्रमुख', NULL, CAST(N'2019-01-10 00:00:00.000' AS DateTime), N'मोहन', NULL, N'मनिष', NULL, N'गोपाल', NULL, 1, NULL, CAST(N'2019-01-10 11:06:13.107' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] ([Municipality_Samiti_Manjuri_Patra_Id], [Planning_Samjhauta_Id], [Municipality_Rep_Name], [Municipality_Rep_Post], [Municipality_Rep_Sign], [Municipality_Manjuri_Date], [Samiti_Adakshya_Name], [Samiti_Adakshya_Sign], [Samiti_Sachib_Name], [Samiti_Sachib_Sign], [Samiti_Rohabar_Name], [Samiti_Rohabar_Sign], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (33, 27, N'जनारदन ', N'कार्यकारी प्रमुख', NULL, CAST(N'2019-01-10 00:00:00.000' AS DateTime), N'राम', NULL, N'हरि', NULL, N'गोपाल', NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.130' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Municipality_Samiti_Manjuri_Patra] OFF
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'1992', CAST(N'1935-04-13 00:00:00.000' AS DateTime), CAST(N'1936-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'1993', CAST(N'1936-04-13 00:00:00.000' AS DateTime), CAST(N'1937-04-12 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'1994', CAST(N'1937-04-13 00:00:00.000' AS DateTime), CAST(N'1938-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'1995', CAST(N'1938-04-13 00:00:00.000' AS DateTime), CAST(N'1939-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'1996', CAST(N'1939-04-13 00:00:00.000' AS DateTime), CAST(N'1940-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'1997', CAST(N'1940-04-13 00:00:00.000' AS DateTime), CAST(N'1941-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'1998', CAST(N'1941-04-13 00:00:00.000' AS DateTime), CAST(N'1942-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'1999', CAST(N'1942-04-13 00:00:00.000' AS DateTime), CAST(N'1943-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2000', CAST(N'1943-04-14 00:00:00.000' AS DateTime), CAST(N'1944-04-12 00:00:00.000' AS DateTime), 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2001', CAST(N'1944-04-13 00:00:00.000' AS DateTime), CAST(N'1945-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2002', CAST(N'1945-04-13 00:00:00.000' AS DateTime), CAST(N'1946-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2003', CAST(N'1946-04-13 00:00:00.000' AS DateTime), CAST(N'1947-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2004', CAST(N'1947-04-14 00:00:00.000' AS DateTime), CAST(N'1948-04-12 00:00:00.000' AS DateTime), 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2005', CAST(N'1948-04-13 00:00:00.000' AS DateTime), CAST(N'1949-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2006', CAST(N'1949-04-13 00:00:00.000' AS DateTime), CAST(N'1950-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2007', CAST(N'1950-04-13 00:00:00.000' AS DateTime), CAST(N'1951-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2008', CAST(N'1951-04-14 00:00:00.000' AS DateTime), CAST(N'1952-04-12 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2009', CAST(N'1952-04-13 00:00:00.000' AS DateTime), CAST(N'1953-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2010', CAST(N'1953-04-13 00:00:00.000' AS DateTime), CAST(N'1954-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2011', CAST(N'1954-04-13 00:00:00.000' AS DateTime), CAST(N'1955-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2012', CAST(N'1955-04-14 00:00:00.000' AS DateTime), CAST(N'1956-04-12 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2013', CAST(N'1956-04-13 00:00:00.000' AS DateTime), CAST(N'1957-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2014', CAST(N'1957-04-13 00:00:00.000' AS DateTime), CAST(N'1958-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2015', CAST(N'1958-04-13 00:00:00.000' AS DateTime), CAST(N'1959-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2016', CAST(N'1959-04-14 00:00:00.000' AS DateTime), CAST(N'1960-04-12 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2017', CAST(N'1960-04-13 00:00:00.000' AS DateTime), CAST(N'1961-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2018', CAST(N'1961-04-13 00:00:00.000' AS DateTime), CAST(N'1962-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2019', CAST(N'1962-04-13 00:00:00.000' AS DateTime), CAST(N'1963-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2020', CAST(N'1963-04-14 00:00:00.000' AS DateTime), CAST(N'1964-04-12 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2021', CAST(N'1964-04-13 00:00:00.000' AS DateTime), CAST(N'1965-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2022', CAST(N'1965-04-13 00:00:00.000' AS DateTime), CAST(N'1966-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2023', CAST(N'1966-04-13 00:00:00.000' AS DateTime), CAST(N'1967-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2024', CAST(N'1967-04-14 00:00:00.000' AS DateTime), CAST(N'1968-04-12 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2025', CAST(N'1968-04-13 00:00:00.000' AS DateTime), CAST(N'1969-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2026', CAST(N'1969-04-13 00:00:00.000' AS DateTime), CAST(N'1970-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2027', CAST(N'1970-04-14 00:00:00.000' AS DateTime), CAST(N'1971-04-13 00:00:00.000' AS DateTime), 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2028', CAST(N'1971-04-14 00:00:00.000' AS DateTime), CAST(N'1972-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2029', CAST(N'1972-04-13 00:00:00.000' AS DateTime), CAST(N'1973-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2030', CAST(N'1973-04-13 00:00:00.000' AS DateTime), CAST(N'1974-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2031', CAST(N'1974-04-14 00:00:00.000' AS DateTime), CAST(N'1975-04-13 00:00:00.000' AS DateTime), 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2032', CAST(N'1975-04-14 00:00:00.000' AS DateTime), CAST(N'1976-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2033', CAST(N'1976-04-13 00:00:00.000' AS DateTime), CAST(N'1977-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2034', CAST(N'1977-04-13 00:00:00.000' AS DateTime), CAST(N'1978-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2035', CAST(N'1978-04-14 00:00:00.000' AS DateTime), CAST(N'1979-04-13 00:00:00.000' AS DateTime), 30, 32, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2036', CAST(N'1979-04-14 00:00:00.000' AS DateTime), CAST(N'1980-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2037', CAST(N'1980-04-13 00:00:00.000' AS DateTime), CAST(N'1981-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2038', CAST(N'1981-04-13 00:00:00.000' AS DateTime), CAST(N'1982-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2039', CAST(N'1982-04-14 00:00:00.000' AS DateTime), CAST(N'1983-04-13 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2040', CAST(N'1983-04-14 00:00:00.000' AS DateTime), CAST(N'1984-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2041', CAST(N'1984-04-13 00:00:00.000' AS DateTime), CAST(N'1985-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2042', CAST(N'1985-04-13 00:00:00.000' AS DateTime), CAST(N'1986-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2043', CAST(N'1986-04-14 00:00:00.000' AS DateTime), CAST(N'1987-04-13 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2044', CAST(N'1987-04-14 00:00:00.000' AS DateTime), CAST(N'1988-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2045', CAST(N'1988-04-13 00:00:00.000' AS DateTime), CAST(N'1989-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2046', CAST(N'1989-04-13 00:00:00.000' AS DateTime), CAST(N'1990-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2047', CAST(N'1990-04-14 00:00:00.000' AS DateTime), CAST(N'1991-04-13 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2048', CAST(N'1991-04-14 00:00:00.000' AS DateTime), CAST(N'1992-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2049', CAST(N'1992-04-13 00:00:00.000' AS DateTime), CAST(N'1993-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2050', CAST(N'1993-04-13 00:00:00.000' AS DateTime), CAST(N'1994-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2051', CAST(N'1994-04-14 00:00:00.000' AS DateTime), CAST(N'1995-04-13 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2052', CAST(N'1995-04-14 00:00:00.000' AS DateTime), CAST(N'1996-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2053', CAST(N'1996-04-13 00:00:00.000' AS DateTime), CAST(N'1997-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2054', CAST(N'1997-04-13 00:00:00.000' AS DateTime), CAST(N'1998-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2055', CAST(N'1998-04-14 00:00:00.000' AS DateTime), CAST(N'1999-04-13 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2056', CAST(N'1999-04-14 00:00:00.000' AS DateTime), CAST(N'2000-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2057', CAST(N'2000-04-13 00:00:00.000' AS DateTime), CAST(N'2001-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2058', CAST(N'2001-04-14 00:00:00.000' AS DateTime), CAST(N'2002-04-13 00:00:00.000' AS DateTime), 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2059', CAST(N'2002-04-14 00:00:00.000' AS DateTime), CAST(N'2003-04-13 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2060', CAST(N'2003-04-14 00:00:00.000' AS DateTime), CAST(N'2004-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2061', CAST(N'2004-04-13 00:00:00.000' AS DateTime), CAST(N'2005-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2062', CAST(N'2005-04-14 00:00:00.000' AS DateTime), CAST(N'2006-04-13 00:00:00.000' AS DateTime), 30, 32, 31, 32, 31, 31, 29, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2063', CAST(N'2006-04-14 00:00:00.000' AS DateTime), CAST(N'2007-04-13 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2064', CAST(N'2007-04-14 00:00:00.000' AS DateTime), CAST(N'2008-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2065', CAST(N'2008-04-13 00:00:00.000' AS DateTime), CAST(N'2009-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2066', CAST(N'2009-04-14 00:00:00.000' AS DateTime), CAST(N'2010-04-13 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2067', CAST(N'2010-04-14 00:00:00.000' AS DateTime), CAST(N'2011-04-13 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2068', CAST(N'2011-04-14 00:00:00.000' AS DateTime), CAST(N'2012-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2069', CAST(N'2012-04-13 00:00:00.000' AS DateTime), CAST(N'2013-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2070', CAST(N'2013-04-14 00:00:00.000' AS DateTime), CAST(N'2014-04-13 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2071', CAST(N'2014-04-14 00:00:00.000' AS DateTime), CAST(N'2015-04-13 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2072', CAST(N'2015-04-14 00:00:00.000' AS DateTime), CAST(N'2016-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2073', CAST(N'2016-04-13 00:00:00.000' AS DateTime), CAST(N'2017-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2074', CAST(N'2017-04-14 00:00:00.000' AS DateTime), CAST(N'2018-04-13 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2075', CAST(N'2018-04-14 00:00:00.000' AS DateTime), CAST(N'2019-04-13 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2076', CAST(N'2019-04-14 00:00:00.000' AS DateTime), CAST(N'2020-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2077', CAST(N'2020-04-13 00:00:00.000' AS DateTime), CAST(N'2021-04-13 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2078', CAST(N'2021-04-14 00:00:00.000' AS DateTime), CAST(N'2022-04-13 00:00:00.000' AS DateTime), 31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2079', CAST(N'2022-04-14 00:00:00.000' AS DateTime), CAST(N'2023-04-13 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2080', CAST(N'2023-04-14 00:00:00.000' AS DateTime), CAST(N'2024-04-12 00:00:00.000' AS DateTime), 31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2081', CAST(N'2023-04-14 00:00:00.000' AS DateTime), CAST(N'2024-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2082', CAST(N'2023-04-14 00:00:00.000' AS DateTime), CAST(N'2024-04-12 00:00:00.000' AS DateTime), 30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2083', CAST(N'2023-04-14 00:00:00.000' AS DateTime), CAST(N'2024-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30, 0)
INSERT [dbo].[NpCalDb] ([NCAL_YEAR], [STRT_DATE], [STOP_DATE], [MONTH_1], [MONTH_2], [MONTH_3], [MONTH_4], [MONTH_5], [MONTH_6], [MONTH_7], [MONTH_8], [MONTH_9], [MONTH_10], [MONTH_11], [MONTH_12], [BranchId]) VALUES (N'2084', CAST(N'2023-04-14 00:00:00.000' AS DateTime), CAST(N'2024-04-12 00:00:00.000' AS DateTime), 31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30, 0)
SET IDENTITY_INSERT [dbo].[Organization_Representative] ON 

INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 9, N'गोविन्द ढकाल', N'अध्यक्ष', N'बानेश्वर', 1, NULL, CAST(N'2018-11-17 22:28:34.453' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 10, N'राम ', N'अध्यक्ष', N'बालाजु', 1, NULL, CAST(N'2018-11-19 12:04:37.990' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (7, 12, N'राम ', N'अध्यक्ष', N'बालाजु', 1, NULL, CAST(N'2018-11-22 16:05:45.443' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (8, 11, N'अनिल शाह', N'अध्यक्ष', N'बालाजु', 1, NULL, CAST(N'2018-11-22 16:10:40.160' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (17, 13, N'मोहन', N'अध्यक्ष', N'सामाखुसि', 1, NULL, CAST(N'2018-11-23 10:31:11.017' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (18, 14, N'राम ', N'अध्यक्ष', N'बालाजु', 1, NULL, CAST(N'2018-11-25 12:08:59.180' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (26, 21, N'कमल लामा', N'अध्यक्ष', N'बालाजु', 1, NULL, CAST(N'2018-11-28 10:42:41.860' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (30, 22, N'काजी तामाङग', N'अध्यक्ष', N'सोलु', 1, NULL, CAST(N'2018-11-30 10:12:39.420' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (31, 8, N'गोपाल नोेपाने', N'अध्यक्ष', N'बालाजु', 1, NULL, CAST(N'2018-12-07 13:09:22.673' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (32, 23, N'राम ', N'अध्यक्ष', N'बालाजु', 1, NULL, CAST(N'2018-12-07 13:59:18.107' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (33, 24, N'गोपाल', N'अध्यक्ष', N'मैतिदेवि', 1, NULL, CAST(N'2019-01-02 11:46:33.427' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (35, 25, N'करन', N'अध्यक्ष', N'का.म.न.पा १६', 1, NULL, CAST(N'2019-01-09 16:33:33.360' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (36, 26, N'मोहन', N'अध्यक्ष', N'सल्लेरी ५', 1, NULL, CAST(N'2019-01-10 11:05:21.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Organization_Representative] ([Organization_Representative_Id], [Planning_Samjhauta_Id], [Representative_Name], [Representative_Designition], [Representative_Address], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (37, 27, N'राम', N'अध्यक्ष', N'सल्लेरी-५', 1, NULL, CAST(N'2019-01-10 11:19:35.080' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Organization_Representative] OFF
SET IDENTITY_INSERT [dbo].[Organization_Setup] ON 

INSERT [dbo].[Organization_Setup] ([Organization_Setup_Id], [Organization_Name], [Organization_Type], [District_Name], [State_Country], [Image_Path], [CreatedBy], [CreatedDate]) VALUES (1, N'सोलुदुधकुण्ड नगरपालिका', N'नगर कार्यपालिकाको कार्यालय', N'सल्लेरी-५, सोलुखुम्बु', N'प्रदेश नं. १ , नेपाल', N'/Documents/nagarpalika_logo.jpg', NULL, CAST(N'2018-11-20 02:32:24.700' AS DateTime))
SET IDENTITY_INSERT [dbo].[Organization_Setup] OFF
SET IDENTITY_INSERT [dbo].[Payment_Records] ON 

INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 9, N'पहिलो', CAST(N'2071-08-15 00:00:00.000' AS DateTime), N'200000.00', NULL, NULL, 1, NULL, CAST(N'2018-11-17 22:29:00.087' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 9, N'दोश्राे', CAST(N'2072-02-20 00:00:00.000' AS DateTime), N'200000.00', NULL, NULL, 1, NULL, CAST(N'2018-11-17 22:29:10.087' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (4, 9, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-17 22:29:17.417' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, 10, N'पहिलो', CAST(N'2072-06-08 00:00:00.000' AS DateTime), N'२०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:04:48.467' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 10, N'दोश्राे', CAST(N'2073-02-20 00:00:00.000' AS DateTime), N'२५००००', NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:04:52.513' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (7, 10, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:04:56.717' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (11, 12, N'पहिलो', CAST(N'2061-12-12 00:00:00.000' AS DateTime), N'६७६५', NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.233' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (12, 12, N'दोश्राे', CAST(N'2061-12-19 00:00:00.000' AS DateTime), N'४५६५', NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.237' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (13, 12, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.237' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (14, 11, N'पहिलो', CAST(N'2073-07-08 00:00:00.000' AS DateTime), N'२०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-22 16:10:40.967' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (15, 11, N'दोश्राे', CAST(N'2074-02-10 00:00:00.000' AS DateTime), N'१०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-22 16:10:40.967' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (16, 11, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-22 16:10:40.967' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (38, 13, N'पहिलो', CAST(N'2070-06-10 00:00:00.000' AS DateTime), N'२०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:11.717' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (39, 13, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:11.720' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (40, 13, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:11.720' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (41, 14, N'पहिलो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.207' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (42, 14, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.207' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (43, 14, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.207' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (65, 21, N'पहिलो', CAST(N'2070-08-20 00:00:00.000' AS DateTime), N'१०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.013' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (66, 21, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.013' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (67, 21, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.013' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (77, 22, N'पहिलो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.247' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (78, 22, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.247' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (79, 22, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.250' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (80, 8, N'पहिलो', NULL, N'२३४५६४', NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:09:24.057' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (81, 8, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:09:24.060' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (82, 8, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:09:24.060' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (83, 23, N'पहिलो', CAST(N'2075-08-24 00:00:00.000' AS DateTime), N'१९३०००', NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.140' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (84, 23, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.140' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (85, 23, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.140' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (86, 24, N'पहिलो', CAST(N'2075-09-25 00:00:00.000' AS DateTime), N'७००००', NULL, NULL, 1, NULL, CAST(N'2019-01-02 11:46:47.450' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (87, 24, N'दोश्राे', CAST(N'2075-11-02 00:00:00.000' AS DateTime), N'२००००', NULL, NULL, 1, NULL, CAST(N'2019-01-02 11:46:49.870' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (88, 24, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-02 11:46:54.457' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (92, 25, N'पहिलो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-09 16:33:34.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (93, 25, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-09 16:33:34.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (94, 25, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-09 16:33:34.507' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (95, 26, N'पहिलो', CAST(N'2019-01-16 00:00:00.000' AS DateTime), N'५००००', NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:05:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (96, 26, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:06:02.167' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (97, 26, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:06:08.320' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (98, 27, N'पहिलो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.123' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (99, 27, N'दोश्राे', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.127' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment_Records] ([Payment_Records_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Payment_Date], [Kista_Rakam], [Nirmarn_Samagri], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (100, 27, N'तेश्रो', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.127' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Payment_Records] OFF
SET IDENTITY_INSERT [dbo].[Planning_Bhuktani] ON 

INSERT [dbo].[Planning_Bhuktani] ([Planning_Bhuktani_Id], [Fiscal_Year_Record], [Budget_Title], [Budget_Title_Number], [Nirman_Upabhokta], [Aayojana_Karyakram], [Kul_La_Ie], [NaPa_Binayajit], [Otheers], [Jana_Sahabagita], [Peski], [Technical_Amount], [Kantigenci], [Remaining_Bhuktani_Amount], [Agrim_Shulka], [Bahal_Kar], [Katti_Rakam], [Aanya_Raaya], [AdakshyaName], [SamjhautaDate], [Farchot_Amount], [Running_Bhuktani], [Samajik_Surekchya], [Parishramik], [Planning_Samjhauta_Id], [Bhuktani_Type], [IsBhuktaniApproval], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, N'०७४/०७५', N'पुर्वाधार', N'1254', N'जोगीदह', N'ग्रामिण विधुत विस्तार', N'२४२५१९', N'२०००००', NULL, N'४८५१९', NULL, N'२४४९०३', N'६०००', N'१८९०५४', N'१८४६', N'३१००', N'१०९४६', NULL, NULL, CAST(N'2074-10-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-17 23:56:18.360' AS DateTime), NULL, CAST(N'2018-12-07 12:34:10.387' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Bhuktani] ([Planning_Bhuktani_Id], [Fiscal_Year_Record], [Budget_Title], [Budget_Title_Number], [Nirman_Upabhokta], [Aayojana_Karyakram], [Kul_La_Ie], [NaPa_Binayajit], [Otheers], [Jana_Sahabagita], [Peski], [Technical_Amount], [Kantigenci], [Remaining_Bhuktani_Amount], [Agrim_Shulka], [Bahal_Kar], [Katti_Rakam], [Aanya_Raaya], [AdakshyaName], [SamjhautaDate], [Farchot_Amount], [Running_Bhuktani], [Samajik_Surekchya], [Parishramik], [Planning_Samjhauta_Id], [Bhuktani_Type], [IsBhuktaniApproval], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, N'०७५/०७६', N'बिकास निर्माण', N'५६७', N'खाने पानि उपभोक्ता समिति', N'खाने पानि', N'२३४५४३', N'२०००००', NULL, N'१००००', N'५००००', N'१८००००', N'६०००', N'११९०००', N'१०००', N'१०००', N'५०००', NULL, N'मोहान', CAST(N'2075-08-08 00:00:00.000' AS DateTime), N'१०००', N'२०००', N'१०००', N'२०००', NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 12:46:20.087' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Bhuktani] ([Planning_Bhuktani_Id], [Fiscal_Year_Record], [Budget_Title], [Budget_Title_Number], [Nirman_Upabhokta], [Aayojana_Karyakram], [Kul_La_Ie], [NaPa_Binayajit], [Otheers], [Jana_Sahabagita], [Peski], [Technical_Amount], [Kantigenci], [Remaining_Bhuktani_Amount], [Agrim_Shulka], [Bahal_Kar], [Katti_Rakam], [Aanya_Raaya], [AdakshyaName], [SamjhautaDate], [Farchot_Amount], [Running_Bhuktani], [Samajik_Surekchya], [Parishramik], [Planning_Samjhauta_Id], [Bhuktani_Type], [IsBhuktaniApproval], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (4, N'072/073', N'१२३४५', N'३४५६', N'कार्यशिध्धि', N'सम्मान कार्यक्रम', N'५०००००', N'४५००००', NULL, N'५००००', NULL, N'५१००००', N'५००००', N'३६९०००', N'२०००', N'४०००', N'४१०००', NULL, N'मोहन', CAST(N'2072-06-14 00:00:00.000' AS DateTime), NULL, NULL, N'३००००', N'५०००', 10, 2, 1, 1, NULL, CAST(N'2019-01-04 13:56:24.200' AS DateTime), NULL, CAST(N'2019-01-04 15:36:07.113' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Bhuktani] ([Planning_Bhuktani_Id], [Fiscal_Year_Record], [Budget_Title], [Budget_Title_Number], [Nirman_Upabhokta], [Aayojana_Karyakram], [Kul_La_Ie], [NaPa_Binayajit], [Otheers], [Jana_Sahabagita], [Peski], [Technical_Amount], [Kantigenci], [Remaining_Bhuktani_Amount], [Agrim_Shulka], [Bahal_Kar], [Katti_Rakam], [Aanya_Raaya], [AdakshyaName], [SamjhautaDate], [Farchot_Amount], [Running_Bhuktani], [Samajik_Surekchya], [Parishramik], [Planning_Samjhauta_Id], [Bhuktani_Type], [IsBhuktaniApproval], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, N'०७३/०७४', N'१२३', N'४५६', N'राम्रो', N'ढल निर्माण', N'३०००००', N'२०००००', NULL, N'१०००००', NULL, N'१९००००', N'२००००', N'१६४०००', N'१०००', N'१०००', N'६०००', NULL, N'अशोक राई', CAST(N'2074-07-13 00:00:00.000' AS DateTime), NULL, NULL, N'२०००', N'२०००', 11, 2, 1, 1, NULL, CAST(N'2019-01-06 12:30:28.657' AS DateTime), NULL, CAST(N'2019-01-06 12:31:17.683' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Bhuktani] ([Planning_Bhuktani_Id], [Fiscal_Year_Record], [Budget_Title], [Budget_Title_Number], [Nirman_Upabhokta], [Aayojana_Karyakram], [Kul_La_Ie], [NaPa_Binayajit], [Otheers], [Jana_Sahabagita], [Peski], [Technical_Amount], [Kantigenci], [Remaining_Bhuktani_Amount], [Agrim_Shulka], [Bahal_Kar], [Katti_Rakam], [Aanya_Raaya], [AdakshyaName], [SamjhautaDate], [Farchot_Amount], [Running_Bhuktani], [Samajik_Surekchya], [Parishramik], [Planning_Samjhauta_Id], [Bhuktani_Type], [IsBhuktaniApproval], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, N'०७५/०७६', NULL, NULL, N'सामाजिक उत्तथान', N'चौतारा निर्माण', N'३०००००', N'२५००००', NULL, N'५००००', NULL, N'२८००००', N'१२५००', N'२४००००', N'१५००', N'१००००', N'२७५००', NULL, N'मोहन', CAST(N'2019-01-10 00:00:00.000' AS DateTime), NULL, NULL, N'१०००', N'१५०००', 26, 2, 0, 1, NULL, CAST(N'2019-01-10 13:42:33.037' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Planning_Bhuktani] OFF
SET IDENTITY_INSERT [dbo].[Planning_Documents] ON 

INSERT [dbo].[Planning_Documents] ([Planning_Documents_Id], [Planning_Samjhauta_Id], [Fiscal_Year], [Project_Name], [Upabhokta_Gathan], [Nirnaya], [Samjhauta], [Anuman], [Mapan], [Pramanikaran], [Karya_Sampanna], [Bhuktani_Nibedan], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, 10, N'072/073', N'सम्मान कार्यक्रम', N'/PlanningRelatedFiles/IMG20180930160112.jpg', N'/PlanningRelatedFiles/IMG20180930160047.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-14 16:51:01.800' AS DateTime), NULL, CAST(N'2018-12-14 16:58:32.497' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Documents] ([Planning_Documents_Id], [Planning_Samjhauta_Id], [Fiscal_Year], [Project_Name], [Upabhokta_Gathan], [Nirnaya], [Samjhauta], [Anuman], [Mapan], [Pramanikaran], [Karya_Sampanna], [Bhuktani_Nibedan], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 24, N'०७५/०७६', N'सडक वरपर वृक्षारोपन ', N'/PlanningRelatedFiles/letter format.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-02 11:53:22.383' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Planning_Documents] OFF
SET IDENTITY_INSERT [dbo].[Planning_Entry] ON 

INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, NULL, N'074/075                                           ', N'सडक निर्माण', CAST(N'2074-08-12 00:00:00.000' AS DateTime), CAST(N'2075-02-15 00:00:00.000' AS DateTime), N'पुरा गर्ने', N'100000.00', 1, 1, 1, 1, N'O', N'गोपाल नयेेपाने, बालाजु', N'बिपिन ढकाल, चितवन', 1, NULL, CAST(N'2018-11-17 12:22:19.113' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 10, N'072/073', N'सम्मान कार्यक्रम', CAST(N'2072-06-06 00:00:00.000' AS DateTime), CAST(N'2073-02-06 00:00:00.000' AS DateTime), N'पुरा गर्ने', N'५०००००', 1, NULL, NULL, 1, N'N', NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:05:02.800' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (7, 11, N'०७३/०७४', N'सडक बति', CAST(N'2073-07-08 00:00:00.000' AS DateTime), CAST(N'2074-02-10 00:00:00.000' AS DateTime), N'पुरा गर्ने', N'३०००००', 1, NULL, NULL, 1, N'N', NULL, NULL, 1, NULL, CAST(N'2018-11-19 20:46:34.587' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (8, 12, NULL, N'दसाउस', CAST(N'2075-08-07 00:00:00.000' AS DateTime), CAST(N'2075-08-20 00:00:00.000' AS DateTime), N'पुरा गर्ने', N'५०००००', 2, NULL, NULL, 2, N'N', NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.243' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (15, 13, N'०७०/०७१', N'सरसफाइ', CAST(N'2070-06-05 00:00:00.000' AS DateTime), CAST(N'2070-10-05 00:00:00.000' AS DateTime), N'पुरा गर्ने', N'८०००००', 1, 10, 4, 2, N'O', NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:12.397' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (16, 14, N'०७३/०७४', N'रुख रोप्ने', CAST(N'2073-08-05 00:00:00.000' AS DateTime), CAST(N'2073-12-05 00:00:00.000' AS DateTime), N'पुरा गर्ने', N'५००००', 1, 8, 2, 1, N'O', NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.213' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (24, 21, N'०७०/०७१', N'सिचाई', CAST(N'2070-08-15 00:00:00.000' AS DateTime), CAST(N'2070-09-15 00:00:00.000' AS DateTime), NULL, N'१०००००', 1, 10, 4, 1, N'O', NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.803' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (28, 22, N'०७५/०७६', N'मनीत्युङ्गयुर पुन निर्माण', CAST(N'2075-08-14 00:00:00.000' AS DateTime), CAST(N'2075-12-30 00:00:00.000' AS DateTime), N'ढुङ्गा, माटो', N'३२७३४२.९७', 1, 4, 2, 1, N'O', N'काजि तामाङ्ग', NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.907' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (29, 8, N'074/075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'N', NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:09:25.103' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (30, 23, N'०७५/०७६', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'N', NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.147' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (31, 24, N'०७५/०७६', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'N', NULL, NULL, 1, NULL, CAST(N'2019-01-02 11:46:58.970' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (33, 25, N'०७५/०७६', NULL, NULL, NULL, NULL, NULL, NULL, 17, 1, 1, N'O', NULL, NULL, 1, NULL, CAST(N'2019-01-09 16:33:35.007' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (34, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 2, N'O', NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:06:25.300' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry] ([Planning_Entry_Id], [Planning_Samjhauta_Id], [FiscalYear], [Planning_Name], [Planning_Start_Date], [Planning_End_Date], [Work_Details], [Amount_Estimate], [Work_Type], [Ward_No], [Work_Area], [Budget_Source], [Planning_Type], [UpaBhoktaSamiti_HeadName], [Contractor_Name], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (35, 27, N'०७५/०७६', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'N', NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.133' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Planning_Entry] OFF
SET IDENTITY_INSERT [dbo].[Planning_Entry_Anudan] ON 

INSERT [dbo].[Planning_Entry_Anudan] ([Planning_Entry_Anudan_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Nagarpalika_Amt], [UpaBhoktaSamiti_Amt], [Other_Amt], [JanaSahaBhagita_Amt], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, 5, NULL, N'70000.00', NULL, NULL, N'30000.00', 1, NULL, CAST(N'2018-11-17 12:22:19.160' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Anudan] ([Planning_Entry_Anudan_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Nagarpalika_Amt], [UpaBhoktaSamiti_Amt], [Other_Amt], [JanaSahaBhagita_Amt], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 6, NULL, N'४५००००', NULL, NULL, N'५००००', 1, NULL, CAST(N'2018-11-19 12:05:07.440' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Anudan] ([Planning_Entry_Anudan_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Nagarpalika_Amt], [UpaBhoktaSamiti_Amt], [Other_Amt], [JanaSahaBhagita_Amt], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 7, 11, N'२५००००', NULL, NULL, N'५०००००', 1, NULL, CAST(N'2018-11-19 20:46:38.360' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Anudan] ([Planning_Entry_Anudan_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Nagarpalika_Amt], [UpaBhoktaSamiti_Amt], [Other_Amt], [JanaSahaBhagita_Amt], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (4, 8, 12, N'४५००००', NULL, NULL, N'५६७८८', 1, NULL, CAST(N'2018-11-22 13:14:26.247' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Anudan] ([Planning_Entry_Anudan_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Nagarpalika_Amt], [UpaBhoktaSamiti_Amt], [Other_Amt], [JanaSahaBhagita_Amt], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (11, 15, 13, N'५०००००', N'१०००००', NULL, N'२०००००', 1, NULL, CAST(N'2018-11-23 10:31:12.397' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Anudan] ([Planning_Entry_Anudan_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Nagarpalika_Amt], [UpaBhoktaSamiti_Amt], [Other_Amt], [JanaSahaBhagita_Amt], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (12, 16, 14, N'४००००', NULL, NULL, N'१०००', 1, NULL, CAST(N'2018-11-25 12:08:59.217' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Anudan] ([Planning_Entry_Anudan_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Nagarpalika_Amt], [UpaBhoktaSamiti_Amt], [Other_Amt], [JanaSahaBhagita_Amt], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (20, 24, 21, N'८००००', NULL, NULL, N'२००००', 1, NULL, CAST(N'2018-11-28 10:42:43.803' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Anudan] ([Planning_Entry_Anudan_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Nagarpalika_Amt], [UpaBhoktaSamiti_Amt], [Other_Amt], [JanaSahaBhagita_Amt], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (24, 28, 22, N'३०००००', NULL, NULL, N'४२३४२.९७', 1, NULL, CAST(N'2018-11-30 10:12:40.907' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Planning_Entry_Anudan] OFF
SET IDENTITY_INSERT [dbo].[Planning_Entry_Kista_Detail] ON 

INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, 5, NULL, N'पहिलो', N'50000.00', CAST(N'2074-08-15 00:00:00.000' AS DateTime), N'50000.00', N'रा', N'उदससउग', 1, NULL, CAST(N'2018-11-17 12:22:19.170' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 5, NULL, N'दोश्राे', N'50000.00', CAST(N'2075-02-20 00:00:00.000' AS DateTime), N'50000.00', N'दसउग', N'दसगसदउ', 1, NULL, CAST(N'2018-11-17 12:22:19.177' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 5, NULL, N'तेश्रो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-17 12:22:19.177' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (4, 5, NULL, N'अन्तिम', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-17 12:22:19.177' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, 6, NULL, N'पहिलो', N'२०००००', CAST(N'2072-06-08 00:00:00.000' AS DateTime), N'२०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:05:10.690' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 6, NULL, N'दोश्राे', N'२५००००', CAST(N'2073-02-20 00:00:00.000' AS DateTime), N'२५००००', NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:05:14.780' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (7, 6, NULL, N'तेश्रो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:05:19.227' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (8, 6, NULL, N'अन्तिम', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:05:23.330' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (9, 7, 11, N'पहिलो', N'२०००००', CAST(N'2073-07-10 00:00:00.000' AS DateTime), N'२०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-19 20:46:44.807' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (10, 7, 11, N'दोश्राे', N'१०००००', CAST(N'2074-02-20 00:00:00.000' AS DateTime), N'१०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-19 20:46:55.750' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (11, 7, 11, N'तेश्रो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-19 20:47:04.453' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (12, 7, 11, N'अन्तिम', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-19 20:47:13.660' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (13, 8, 12, N'पहिलो', N'६७६५', CAST(N'2061-12-12 00:00:00.000' AS DateTime), N'३४५६', NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.253' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (14, 8, 12, N'दोश्राे', N'४५६५', CAST(N'2061-12-19 00:00:00.000' AS DateTime), N'५६५५', NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.257' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (15, 8, 12, N'तेश्रो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.257' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (16, 8, 12, N'अन्तिम', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.257' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (41, 15, 13, N'पहिलो', N'२०००००', CAST(N'2070-06-10 00:00:00.000' AS DateTime), N'२०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:12.397' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (42, 15, 13, N'दोश्राे', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:12.400' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (43, 15, 13, N'तेश्रो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:12.400' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (44, 15, 13, N'अन्तिम', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:12.400' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (45, 16, 14, N'पहिलो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.220' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (46, 16, 14, N'दोश्राे', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.223' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (47, 16, 14, N'तेश्रो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.223' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (48, 16, 14, N'अन्तिम', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.223' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (77, 24, 21, N'पहिलो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.807' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (78, 24, 21, N'दोश्राे', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.807' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (79, 24, 21, N'तेश्रो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.807' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (80, 24, 21, N'अन्तिम', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:43.807' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (93, 28, 22, N'पहिलो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.907' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (94, 28, 22, N'दोश्राे', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.907' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (95, 28, 22, N'तेश्रो', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.910' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Entry_Kista_Detail] ([Planning_Entry_Kista_Detail_Id], [Planning_Entry_Id], [Planning_Samjhauta_Id], [Kista_Kram], [Kista_Rakam], [Payment_Date], [Peski_Bhuktani], [Sarta], [Remarks], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (96, 28, 22, N'अन्तिम', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:40.910' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Planning_Entry_Kista_Detail] OFF
SET IDENTITY_INSERT [dbo].[Planning_Samjhauta] ON 

INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (8, N'074/075', N'कालिका कस्ट्रकसन्', N'6000.00', NULL, N'200000.00', NULL, NULL, 1, NULL, CAST(N'2018-11-17 14:30:32.673' AS DateTime), NULL, CAST(N'2018-12-07 13:09:21.697' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (9, N'071/072', N'सुलभ', NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-17 22:28:30.263' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (10, N'072/073', N'कार्यशिध्धि', N'५००००', NULL, N'४५००००', NULL, N'5', 1, NULL, CAST(N'2018-11-19 12:04:34.610' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (11, N'०७३/०७४', N'राम्रो', N'२००००', NULL, N'२८००००', NULL, NULL, 1, NULL, CAST(N'2018-11-19 20:45:37.577' AS DateTime), NULL, CAST(N'2018-11-22 16:10:38.700' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (12, N'२०६०/२०६१', N'कार्य', N'५००००', NULL, N'४५००००', NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:23.673' AS DateTime), NULL, CAST(N'2018-11-22 16:05:45.317' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (13, N'०७०/०७१', N'हाम्रो ', N'५००००', NULL, N'१५००००', NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:10:26.783' AS DateTime), NULL, CAST(N'2018-11-23 10:31:10.677' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (14, N'०७३/०७४', N'नेपाली', N'२०००', NULL, N'४८०००', NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.160' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (21, N'०७०/०७१', N'सुधारक', N'३०००', NULL, N'९७०००', NULL, NULL, 1, NULL, CAST(N'2018-11-26 10:18:28.063' AS DateTime), NULL, CAST(N'2018-11-28 10:42:41.253' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (22, N'०७५/०७६', N'मनीत्युङ्गयुर पुन निर्माण उपभोक्ता समिति', N'१००००', N'५०००', N'२८५०००', NULL, NULL, 1, NULL, CAST(N'2018-11-29 16:16:08.837' AS DateTime), NULL, CAST(N'2018-11-30 10:12:38.873' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (23, N'०७५/०७६', N'उधमि संस्था', N'६०००', N'१०००', N'२०००००', NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.080' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (24, N'०७५/०७६', N'वृक्षारोपन', N'४५००', N'१५००', N'१५००००', NULL, N'3', 1, NULL, CAST(N'2019-01-02 11:46:26.797' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (25, N'०७५/०७६', N'मात्रीभुमि', N'४०००', N'८००', N'७५२००', NULL, NULL, 1, NULL, CAST(N'2019-01-07 10:35:31.287' AS DateTime), NULL, CAST(N'2019-01-09 16:33:32.833' AS DateTime), NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (26, N'०७५/०७६', N'सामाजिक उत्तथान', N'१२५००', N'२५००', N'२८५०००', NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:05:19.877' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id], [Fiscal_Year_Record], [Samjhauta_Org_Name], [Contegency_Amount], [MarmatSambhar_Amount], [Total_Amount], [Samjhauta_Acceptance], [Contegency_Percentage], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (27, N'०७५/०७६', N'निर्माण उपभोक्ता समिति', N'४०००', N'८००', N'९५२००', NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:19:22.997' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Planning_Samjhauta] OFF
SET IDENTITY_INSERT [dbo].[Project_Entry_Detail] ON 

INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 9, N'कालोपत्रे', N'लाजिम्पाट', N'राम्रो बाटो बनाउने', NULL, CAST(N'2071-08-09 00:00:00.000' AS DateTime), CAST(N'2072-02-15 00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(N'2018-11-17 22:28:37.970' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 10, N'सम्मान कार्यक्रम', N'बालाजु', NULL, N'नगरमालिका', CAST(N'2072-06-06 00:00:00.000' AS DateTime), CAST(N'2073-02-06 00:00:00.000' AS DateTime), N'५०००००', 1, NULL, CAST(N'2018-11-19 12:04:39.593' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (7, 11, N'ढल निर्माण', N'लाजिम्पाट', NULL, N'नगरपालिका', CAST(N'2073-07-08 00:00:00.000' AS DateTime), CAST(N'2074-02-10 00:00:00.000' AS DateTime), N'३०००००', 1, NULL, CAST(N'2018-11-22 16:10:40.333' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (16, 13, N'सरसफाइ', N'सामाखुसि', NULL, NULL, CAST(N'2070-06-05 00:00:00.000' AS DateTime), CAST(N'2070-10-05 00:00:00.000' AS DateTime), N'८०००००', 1, NULL, CAST(N'2018-11-23 10:31:11.173' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (17, 14, N'रुख रोप्ने', N'बालाजु', NULL, NULL, CAST(N'2073-08-05 00:00:00.000' AS DateTime), CAST(N'2073-12-05 00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (25, 21, N'सिचाई', N'बालाजु', NULL, NULL, CAST(N'2070-08-15 00:00:00.000' AS DateTime), CAST(N'2070-09-15 00:00:00.000' AS DateTime), N'१०००००', 1, NULL, CAST(N'2018-11-28 10:42:42.157' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (29, 22, N'मनीत्युङ्गयुर पुन निर्माण ', N'सोलु', N'भवन निर्माण', N'नगरमालिका', CAST(N'2075-08-14 00:00:00.000' AS DateTime), CAST(N'2075-12-30 00:00:00.000' AS DateTime), N'३२७३४२.९७', 1, NULL, CAST(N'2018-11-30 10:12:39.553' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (30, 8, N'बाटो निर्माण११', N'लाजिम्पाट', N'राम्रो बाटो बनाउने', NULL, CAST(N'2074-08-07 00:00:00.000' AS DateTime), CAST(N'2075-08-13 00:00:00.000' AS DateTime), NULL, 1, NULL, CAST(N'2018-12-07 13:09:22.960' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (31, 23, N'सिलाई बुनाई', N'बालाजु', N'महिलाहरुलाई सछ्यम बनाउने', N'नगरमालिका', CAST(N'2075-08-24 00:00:00.000' AS DateTime), CAST(N'2075-11-24 00:00:00.000' AS DateTime), N'२०००००', 1, NULL, CAST(N'2018-12-07 13:59:18.127' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (32, 24, N'सडक वरपर वृक्षारोपन ', N'मैतिदेवि', N'सडक वरपर हरियालि बनाउने', N'नगरपालिका', CAST(N'2075-09-20 00:00:00.000' AS DateTime), CAST(N'2075-12-20 00:00:00.000' AS DateTime), N'२०००००', 1, NULL, CAST(N'2019-01-02 11:46:34.373' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (34, 25, N'कल्व भवनमा सोलार जडान', N'का.म.न.पा १६', NULL, N'नगरपालिका', CAST(N'2019-01-08 00:00:00.000' AS DateTime), CAST(N'2019-06-15 00:00:00.000' AS DateTime), N'१०००००', 1, NULL, CAST(N'2019-01-09 16:33:33.643' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (35, 26, N'चौतारा निर्माण', N'सल्लेरी ५', N'बटुवाहरुलाई वास बस्न', N'नगरपालिका', CAST(N'2019-01-11 00:00:00.000' AS DateTime), CAST(N'2019-06-15 00:00:00.000' AS DateTime), N'३०००००', 1, NULL, CAST(N'2019-01-10 11:05:22.450' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Entry_Detail] ([Project_Entry_Detail_Id], [Planning_Samjhauta_Id], [Project_Name], [Project_Place], [Project_Objective], [Project_Acceptance_By], [Project_Start_Date], [Project_End_Date], [Project_estimated_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (36, 27, N'सुरक्षा प्रतिभुति', N'सल्लेरी-५', N'सुरक्षा ', N'नगरपालिका', CAST(N'2019-01-12 00:00:00.000' AS DateTime), CAST(N'2019-02-12 00:00:00.000' AS DateTime), N'१०००००', 1, NULL, CAST(N'2019-01-10 11:19:35.110' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Project_Entry_Detail] OFF
SET IDENTITY_INSERT [dbo].[Project_Source_Detail] ON 

INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 9, NULL, NULL, N'500000.00', NULL, NULL, NULL, NULL, NULL, N'300000.00', NULL, N'800000.00', 1, NULL, CAST(N'2018-11-17 22:28:42.997' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 10, N'५०००००', NULL, N'४५००००', NULL, NULL, NULL, NULL, NULL, N'५००००', NULL, N'0', 1, NULL, CAST(N'2018-11-19 12:04:41.483' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 11, N'३०००००', NULL, N'२०००००', NULL, NULL, NULL, NULL, NULL, N'१०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-22 16:10:40.477' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (15, 13, N'८०००००', NULL, N'५०००००', NULL, NULL, NULL, NULL, N'१०००००', N'२०००००', NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:11.283' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (16, 14, NULL, NULL, N'४००००', NULL, NULL, NULL, NULL, NULL, N'१००००', NULL, N'0', 1, NULL, CAST(N'2018-11-25 12:08:59.200' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (24, 21, N'१०००००', NULL, N'८००००', NULL, NULL, NULL, NULL, NULL, N'२००००', NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:42.307' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (28, 22, N'३२७३४२.९७', NULL, N'३०००००', NULL, NULL, NULL, NULL, NULL, N'४२३४२.९७', NULL, NULL, 1, NULL, CAST(N'2018-11-30 10:12:39.673' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (29, 8, NULL, NULL, N'200000.00', NULL, NULL, NULL, NULL, NULL, N'48519.00', NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:09:23.140' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (30, 23, N'२०००००', NULL, N'१८०,०००', NULL, NULL, NULL, NULL, NULL, N'२००००', NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:59:18.130' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (31, 24, N'२०००००', NULL, N'१५००००', NULL, NULL, NULL, NULL, NULL, N'५००००', NULL, NULL, 1, NULL, CAST(N'2019-01-02 11:46:35.650' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (33, 25, N'१०००००', NULL, N'८००००', NULL, NULL, NULL, NULL, NULL, N'२००००', NULL, NULL, 1, NULL, CAST(N'2019-01-09 16:33:33.837' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (34, 26, N'३०००००', NULL, N'२५००००', NULL, NULL, NULL, NULL, NULL, N'५००००', NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:05:23.810' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Project_Source_Detail] ([Project_Source_Detail_Id], [Planning_Samjhauta_Id], [Project_estimated_Amount], [Nepal_Government], [Municipality], [State], [NGO_INGO], [Community_Org], [Foreign_Org], [Public_Community], [Loan_Grant], [Other_Source], [Total_Amount], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (35, 27, N'१०००००', NULL, N'८००००', NULL, NULL, NULL, NULL, NULL, N'२००००', NULL, NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.113' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Project_Source_Detail] OFF
SET IDENTITY_INSERT [dbo].[Samiti_Detail] ON 

INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 9, CAST(N'2060-06-08 00:00:00.000' AS DateTime), N'निशा थापा', N'कुशल कुवर', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-17 22:28:51.133' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 10, CAST(N'2065-10-09 00:00:00.000' AS DateTime), N'मोहन', N'सिता', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-19 12:04:44.963' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, 12, CAST(N'2065-10-09 00:00:00.000' AS DateTime), N'मोहन', N'सिता', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-22 13:14:26.230' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, 11, CAST(N'2065-08-11 00:00:00.000' AS DateTime), N'अशोक राई', N'मोहन नेपाली', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-22 16:10:40.693' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (15, 13, CAST(N'2062-08-15 00:00:00.000' AS DateTime), N'हरि', N'सिता', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-23 10:31:11.493' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (16, 14, CAST(N'2071-08-11 00:00:00.000' AS DateTime), N'मोहन', N'सिता', N'राम', N'हरि', NULL, NULL, 1, NULL, CAST(N'2018-11-25 12:08:59.203' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (24, 21, CAST(N'2070-04-05 00:00:00.000' AS DateTime), N'रोहित', N'गोमा', N'राम', NULL, NULL, NULL, 1, NULL, CAST(N'2018-11-28 10:42:42.593' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (28, 22, CAST(N'2075-06-17 00:00:00.000' AS DateTime), N'काजी तामाङ्ग', N'मिङ्गमार शेर्पा', N'दावा तामाङ्ग', NULL, N'८', N'२', 1, NULL, CAST(N'2018-11-30 10:12:39.937' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (29, 8, CAST(N'2069-08-08 00:00:00.000' AS DateTime), N'अशोक राई', N'राम किसान चोेधरी', N'राम', NULL, NULL, NULL, 1, NULL, CAST(N'2018-12-07 13:09:23.547' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (30, 23, CAST(N'2075-08-14 00:00:00.000' AS DateTime), N'मोहन', N'सिता', N'धन कुमारी मगर', NULL, N'८', N'२', 1, NULL, CAST(N'2018-12-07 13:59:18.137' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (31, 24, CAST(N'2075-09-12 00:00:00.000' AS DateTime), N'गोपाल', N'रोहन', N'मिनाा', NULL, N'२२', N'२', 1, NULL, CAST(N'2019-01-02 11:46:38.167' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (33, 25, CAST(N'2075-08-14 00:00:00.000' AS DateTime), N'करन', N'कोमल', N'अनिल', NULL, NULL, NULL, 1, NULL, CAST(N'2019-01-09 16:33:34.207' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (34, 26, CAST(N'2018-10-17 00:00:00.000' AS DateTime), N'मोहन', N'मनिष', N'मेलिना', NULL, N'५०', NULL, 1, NULL, CAST(N'2019-01-10 11:05:26.250' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Samiti_Detail] ([Samiti_Detail_Id], [Planning_Samjhauta_Id], [Samiti_Estd_Date], [Adakshya], [Sachib], [Koshadakshya], [Sadashya], [Beneficiaries_Attendance], [Beneficiaries_Absent], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (35, 27, CAST(N'2018-12-19 00:00:00.000' AS DateTime), N'राम', N'हरि', N'श्याम', NULL, N'८', NULL, 1, NULL, CAST(N'2019-01-10 11:19:35.120' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Samiti_Detail] OFF
SET IDENTITY_INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ON 

INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, 21, N'हरि', 1, NULL, CAST(N'2018-11-28 10:42:42.633' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, 21, N'गिता', 1, NULL, CAST(N'2018-11-28 10:42:42.633' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, 21, N'राममाया', 1, NULL, CAST(N'2018-11-28 10:42:42.633' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (10, 22, N'फुर्वा तामाङ्ग', 1, NULL, CAST(N'2018-11-30 10:12:40.067' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (11, 22, N'आङसाङ लामा', 1, NULL, CAST(N'2018-11-30 10:12:40.067' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (12, 8, N'सिता', 1, NULL, CAST(N'2018-12-07 13:09:23.647' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (13, 8, N'गोमा', 1, NULL, CAST(N'2018-12-07 13:09:23.650' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (14, 23, N'रिता', 1, NULL, CAST(N'2018-12-07 13:59:18.137' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (15, 24, N'रमा', 1, NULL, CAST(N'2019-01-02 11:46:41.017' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (16, 24, N'विलास', 1, NULL, CAST(N'2019-01-02 11:46:42.713' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (17, 24, N'विकल', 1, NULL, CAST(N'2019-01-02 11:46:44.423' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (20, 25, N'रेखा', 1, NULL, CAST(N'2019-01-09 16:33:34.323' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (21, 25, N'रोसन', 1, NULL, CAST(N'2019-01-09 16:33:34.327' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (22, 26, N'रमा', 1, NULL, CAST(N'2019-01-10 11:05:29.253' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (23, 26, N'राम', 1, NULL, CAST(N'2019-01-10 11:05:31.587' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[UpaBhokta_Samiti_Members_Details] ([UpaBhokta_Samiti_Members_Details_Id], [Planning_Samjhauta_Id], [MemberName], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (24, 27, N'सिता', 1, NULL, CAST(N'2019-01-10 11:19:35.120' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UpaBhokta_Samiti_Members_Details] OFF
SET IDENTITY_INSERT [dbo].[Upload_File] ON 

INSERT [dbo].[Upload_File] ([Upload_File_Id], [File_Name], [File_Path], [FiscalYear], [WardNo], [File_Id], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, N'IMG20180928112340.jpg', N'C:\Users\Bipin\Desktop\NEW-PLANNING\Planning-Nov-16-2018-final\Planning-Nov-16-2018\Planning-Nov-16-2018\Planning\Planning\Documents\IMG20180928112340.jpg', N'०७४/०७५                                                                                                                                                                                                                                                   ', N'१', 1, 1, NULL, CAST(N'2018-11-17 11:43:54.450' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Upload_File] ([Upload_File_Id], [File_Name], [File_Path], [FiscalYear], [WardNo], [File_Id], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, N'IMG20180928112356.jpg', N'C:\Users\Bipin\Desktop\NEW-PLANNING\Planning-Nov-16-2018-final\Planning-Nov-16-2018\Planning-Nov-16-2018\Planning\Planning\Documents\IMG20180928112356.jpg', N'073/074                                                                                                                                                                                                                                                   ', N'2', 1, 1, NULL, CAST(N'2018-11-17 11:45:41.437' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Upload_File] ([Upload_File_Id], [File_Name], [File_Path], [FiscalYear], [WardNo], [File_Id], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, N'IMG20180928112356.jpg', N'C:\Users\Bipin\Desktop\NEW-PLANNING\Planning-Nov-16-2018-final\Planning-Nov-16-2018\Planning-Nov-16-2018\Planning\Planning\Documents\IMG20180928112356.jpg', N'०७४/०७५                                                                                                                                                                                                                                                   ', N'१', 2, 1, NULL, CAST(N'2018-11-17 11:53:43.863' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Upload_File] ([Upload_File_Id], [File_Name], [File_Path], [FiscalYear], [WardNo], [File_Id], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (4, N'gov-logo.png', N'C:\Users\Bipin\Desktop\NEW-PLANNING\Planning-Nov-16-2018-final\Planning-Nov-16-2018\Planning-Nov-16-2018\Planning\Planning\Documents\gov-logo.png', N'०७४/०७५                                                                                                                                                                                                                                                   ', N'१', 3, 1, NULL, CAST(N'2018-11-17 11:54:07.917' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Upload_File] ([Upload_File_Id], [File_Name], [File_Path], [FiscalYear], [WardNo], [File_Id], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, N'Lahan.jpg', N'/Documents/Lahan.jpg', N'०७५/०७६                                                                                                                                                                                                                                                   ', N'७', 1, 1, NULL, CAST(N'2018-12-10 12:26:38.890' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Upload_File] ([Upload_File_Id], [File_Name], [File_Path], [FiscalYear], [WardNo], [File_Id], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, N'Software Solu.docx', N'/Documents/Software Solu.docx', N'०७५/०७६                                                                                                                                                                                                                                                   ', N'८', 1, 1, NULL, CAST(N'2018-12-10 12:51:36.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Upload_File] ([Upload_File_Id], [File_Name], [File_Path], [FiscalYear], [WardNo], [File_Id], [Status], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (7, N'Planning.pdf', N'/Documents/Planning.pdf', N'०७५/०७६                                                                                                                                                                                                                                                   ', N'३', 1, 1, NULL, CAST(N'2018-12-10 12:57:21.770' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Upload_File] OFF
SET IDENTITY_INSERT [dbo].[Work_Area] ON 

INSERT [dbo].[Work_Area] ([Work_Area_Id], [Work_Area_Name], [Status]) VALUES (1, N'पूर्वाधार', 1)
INSERT [dbo].[Work_Area] ([Work_Area_Id], [Work_Area_Name], [Status]) VALUES (2, N'सामाजिक', 1)
INSERT [dbo].[Work_Area] ([Work_Area_Id], [Work_Area_Name], [Status]) VALUES (3, N'आर्थिक', 1)
INSERT [dbo].[Work_Area] ([Work_Area_Id], [Work_Area_Name], [Status]) VALUES (4, N'वातावरण', 1)
SET IDENTITY_INSERT [dbo].[Work_Area] OFF
SET IDENTITY_INSERT [dbo].[Work_Type] ON 

INSERT [dbo].[Work_Type] ([Work_Type_Id], [Work_Type_Name], [Status]) VALUES (1, N'उपभोक्ता समिति', 1)
INSERT [dbo].[Work_Type] ([Work_Type_Id], [Work_Type_Name], [Status]) VALUES (2, N'ठेक्का पट्टा', 1)
INSERT [dbo].[Work_Type] ([Work_Type_Id], [Work_Type_Name], [Status]) VALUES (3, N'अमानत', 1)
SET IDENTITY_INSERT [dbo].[Work_Type] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2019-01-10 4:16:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2019-01-10 4:16:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2019-01-10 4:16:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019-01-10 4:16:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 2019-01-10 4:16:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 2019-01-10 4:16:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aayojana_Maintainance]  WITH CHECK ADD  CONSTRAINT [FK_Aayojana_Maintainance_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Aayojana_Maintainance] CHECK CONSTRAINT [FK_Aayojana_Maintainance_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[AnuSuchi1]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi1_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[AnuSuchi1] CHECK CONSTRAINT [FK_AnuSuchi1_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[AnuSuchi10]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi10_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[AnuSuchi10] CHECK CONSTRAINT [FK_AnuSuchi10_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[AnuSuchi10_Discussion_Conclusions]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi10_Discussion_Conclusions_AnuSuchi10] FOREIGN KEY([AnuSuchi10_Id])
REFERENCES [dbo].[AnuSuchi10] ([AnuSuchi10_Id])
GO
ALTER TABLE [dbo].[AnuSuchi10_Discussion_Conclusions] CHECK CONSTRAINT [FK_AnuSuchi10_Discussion_Conclusions_AnuSuchi10]
GO
ALTER TABLE [dbo].[AnuSuchi10_Discussion_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi10_Discussion_Subjects_AnuSuchi10] FOREIGN KEY([AnuSuchi10_Id])
REFERENCES [dbo].[AnuSuchi10] ([AnuSuchi10_Id])
GO
ALTER TABLE [dbo].[AnuSuchi10_Discussion_Subjects] CHECK CONSTRAINT [FK_AnuSuchi10_Discussion_Subjects_AnuSuchi10]
GO
ALTER TABLE [dbo].[AnuSuchi10_Meeting]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi10_Meeting_AnuSuchi10] FOREIGN KEY([AnuSuchi10_Id])
REFERENCES [dbo].[AnuSuchi10] ([AnuSuchi10_Id])
GO
ALTER TABLE [dbo].[AnuSuchi10_Meeting] CHECK CONSTRAINT [FK_AnuSuchi10_Meeting_AnuSuchi10]
GO
ALTER TABLE [dbo].[AnuSuchi10_Members]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi10_Members_AnuSuchi10] FOREIGN KEY([AnuSuchi10_Id])
REFERENCES [dbo].[AnuSuchi10] ([AnuSuchi10_Id])
GO
ALTER TABLE [dbo].[AnuSuchi10_Members] CHECK CONSTRAINT [FK_AnuSuchi10_Members_AnuSuchi10]
GO
ALTER TABLE [dbo].[AnuSuchi11]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi11_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[AnuSuchi11] CHECK CONSTRAINT [FK_AnuSuchi11_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[AnuSuchi3]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi3_Planning_Samjhauta] FOREIGN KEY([Planing_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[AnuSuchi3] CHECK CONSTRAINT [FK_AnuSuchi3_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[AnuSuchi3_Bhuktani]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi3_Bhuktani_AnuSuchi3] FOREIGN KEY([AnuSuchi3_Id])
REFERENCES [dbo].[AnuSuchi3] ([AnuSuchi3_Id])
GO
ALTER TABLE [dbo].[AnuSuchi3_Bhuktani] CHECK CONSTRAINT [FK_AnuSuchi3_Bhuktani_AnuSuchi3]
GO
ALTER TABLE [dbo].[AnuSuchi3_Expenses]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi3_Expenses_AnuSuchi3] FOREIGN KEY([AnuSuchi3_Id])
REFERENCES [dbo].[AnuSuchi3] ([AnuSuchi3_Id])
GO
ALTER TABLE [dbo].[AnuSuchi3_Expenses] CHECK CONSTRAINT [FK_AnuSuchi3_Expenses_AnuSuchi3]
GO
ALTER TABLE [dbo].[AnuSuchi3_Income]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi3_Income_AnuSuchi3] FOREIGN KEY([AnuSuchi3_Id])
REFERENCES [dbo].[AnuSuchi3] ([AnuSuchi3_Id])
GO
ALTER TABLE [dbo].[AnuSuchi3_Income] CHECK CONSTRAINT [FK_AnuSuchi3_Income_AnuSuchi3]
GO
ALTER TABLE [dbo].[AnuSuchi3_Maujat]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi3_Maujat_AnuSuchi3] FOREIGN KEY([AnuSuchi3_Id])
REFERENCES [dbo].[AnuSuchi3] ([AnuSuchi3_Id])
GO
ALTER TABLE [dbo].[AnuSuchi3_Maujat] CHECK CONSTRAINT [FK_AnuSuchi3_Maujat_AnuSuchi3]
GO
ALTER TABLE [dbo].[AnuSuchi3_Project_Work_Detail]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi3_Project_Work_Detail_AnuSuchi3] FOREIGN KEY([AnuSuchi3_Id])
REFERENCES [dbo].[AnuSuchi3] ([AnuSuchi3_Id])
GO
ALTER TABLE [dbo].[AnuSuchi3_Project_Work_Detail] CHECK CONSTRAINT [FK_AnuSuchi3_Project_Work_Detail_AnuSuchi3]
GO
ALTER TABLE [dbo].[AnuSuchi3_Work_Division]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi3_Work_Division_AnuSuchi3] FOREIGN KEY([AnuSuchi3_Id])
REFERENCES [dbo].[AnuSuchi3] ([AnuSuchi3_Id])
GO
ALTER TABLE [dbo].[AnuSuchi3_Work_Division] CHECK CONSTRAINT [FK_AnuSuchi3_Work_Division_AnuSuchi3]
GO
ALTER TABLE [dbo].[AnuSuchi4]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi4_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[AnuSuchi4] CHECK CONSTRAINT [FK_AnuSuchi4_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Anusuchi4_Expenses]  WITH CHECK ADD  CONSTRAINT [FK_Anusuchi4_Expenses_AnuSuchi4] FOREIGN KEY([Anusuchi4_Id])
REFERENCES [dbo].[AnuSuchi4] ([AnuSuchi4_Id])
GO
ALTER TABLE [dbo].[Anusuchi4_Expenses] CHECK CONSTRAINT [FK_Anusuchi4_Expenses_AnuSuchi4]
GO
ALTER TABLE [dbo].[Anusuchi4_Income]  WITH CHECK ADD  CONSTRAINT [FK_Anusuchi4_Income_AnuSuchi4] FOREIGN KEY([Anusuchi4_Id])
REFERENCES [dbo].[AnuSuchi4] ([AnuSuchi4_Id])
GO
ALTER TABLE [dbo].[Anusuchi4_Income] CHECK CONSTRAINT [FK_Anusuchi4_Income_AnuSuchi4]
GO
ALTER TABLE [dbo].[AnuSuchi5]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi5_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[AnuSuchi5] CHECK CONSTRAINT [FK_AnuSuchi5_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Anusuchi6]  WITH CHECK ADD  CONSTRAINT [FK_Anusuchi6_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Anusuchi6] CHECK CONSTRAINT [FK_Anusuchi6_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Anusuchi6_Janasahabhagita]  WITH CHECK ADD  CONSTRAINT [FK_Anusuchi6_Janasahabhagita_Anusuchi6] FOREIGN KEY([Anusuchi6_Id])
REFERENCES [dbo].[Anusuchi6] ([Anusuchi6_Id])
GO
ALTER TABLE [dbo].[Anusuchi6_Janasahabhagita] CHECK CONSTRAINT [FK_Anusuchi6_Janasahabhagita_Anusuchi6]
GO
ALTER TABLE [dbo].[Anusuchi6_Karyalaya]  WITH CHECK ADD  CONSTRAINT [FK_Anusuchi6_Karyalaya_Anusuchi6] FOREIGN KEY([Anusuchi6_Id])
REFERENCES [dbo].[Anusuchi6] ([Anusuchi6_Id])
GO
ALTER TABLE [dbo].[Anusuchi6_Karyalaya] CHECK CONSTRAINT [FK_Anusuchi6_Karyalaya_Anusuchi6]
GO
ALTER TABLE [dbo].[Anusuchi6_Solutions]  WITH CHECK ADD  CONSTRAINT [FK_Anusuchi6_Solutions_Anusuchi6] FOREIGN KEY([Anusuchi6_Id])
REFERENCES [dbo].[Anusuchi6] ([Anusuchi6_Id])
GO
ALTER TABLE [dbo].[Anusuchi6_Solutions] CHECK CONSTRAINT [FK_Anusuchi6_Solutions_Anusuchi6]
GO
ALTER TABLE [dbo].[AnuSuchi7]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi7_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[AnuSuchi7] CHECK CONSTRAINT [FK_AnuSuchi7_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[AnuSuchi7_Anugaman_Samiti]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi7_Anugaman_Samiti_AnuSuchi7] FOREIGN KEY([AnuSuchi7_Id])
REFERENCES [dbo].[AnuSuchi7] ([AnuSuchi7_Id])
GO
ALTER TABLE [dbo].[AnuSuchi7_Anugaman_Samiti] CHECK CONSTRAINT [FK_AnuSuchi7_Anugaman_Samiti_AnuSuchi7]
GO
ALTER TABLE [dbo].[AnuSuchi7_Upabhokta_Samiti]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi7_Upabhokta_Samiti_AnuSuchi7] FOREIGN KEY([AnuSuchi7_Id])
REFERENCES [dbo].[AnuSuchi7] ([AnuSuchi7_Id])
GO
ALTER TABLE [dbo].[AnuSuchi7_Upabhokta_Samiti] CHECK CONSTRAINT [FK_AnuSuchi7_Upabhokta_Samiti_AnuSuchi7]
GO
ALTER TABLE [dbo].[AnuSuchi9]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi9_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[AnuSuchi9] CHECK CONSTRAINT [FK_AnuSuchi9_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[AnuSuchi9_Discussion_Conclusions]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi9_Discussion_Conclusions_AnuSuchi9] FOREIGN KEY([AnuSuchi9_Id])
REFERENCES [dbo].[AnuSuchi9] ([AnuSuchi9_Id])
GO
ALTER TABLE [dbo].[AnuSuchi9_Discussion_Conclusions] CHECK CONSTRAINT [FK_AnuSuchi9_Discussion_Conclusions_AnuSuchi9]
GO
ALTER TABLE [dbo].[AnuSuchi9_Discussion_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi9_Discussion_Subjects_AnuSuchi9] FOREIGN KEY([AnuSuchi9_Id])
REFERENCES [dbo].[AnuSuchi9] ([AnuSuchi9_Id])
GO
ALTER TABLE [dbo].[AnuSuchi9_Discussion_Subjects] CHECK CONSTRAINT [FK_AnuSuchi9_Discussion_Subjects_AnuSuchi9]
GO
ALTER TABLE [dbo].[AnuSuchi9_Meeting]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi9_Meeting_AnuSuchi9] FOREIGN KEY([AnuSuchi9_Id])
REFERENCES [dbo].[AnuSuchi9] ([AnuSuchi9_Id])
GO
ALTER TABLE [dbo].[AnuSuchi9_Meeting] CHECK CONSTRAINT [FK_AnuSuchi9_Meeting_AnuSuchi9]
GO
ALTER TABLE [dbo].[AnuSuchi9_Members]  WITH CHECK ADD  CONSTRAINT [FK_AnuSuchi9_Members_AnuSuchi9] FOREIGN KEY([AnuSuchi9_Id])
REFERENCES [dbo].[AnuSuchi9] ([AnuSuchi9_Id])
GO
ALTER TABLE [dbo].[AnuSuchi9_Members] CHECK CONSTRAINT [FK_AnuSuchi9_Members_AnuSuchi9]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Beneficiaries_Group]  WITH CHECK ADD  CONSTRAINT [FK_Beneficiaries_Group_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Beneficiaries_Group] CHECK CONSTRAINT [FK_Beneficiaries_Group_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Municipality_Samiti_Manjuri_Patra]  WITH CHECK ADD  CONSTRAINT [FK_Municipality_Samiti_Manjuri_Patra_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Municipality_Samiti_Manjuri_Patra] CHECK CONSTRAINT [FK_Municipality_Samiti_Manjuri_Patra_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Organization_Representative]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Representative_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Organization_Representative] CHECK CONSTRAINT [FK_Organization_Representative_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Payment_Records]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Records_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Payment_Records] CHECK CONSTRAINT [FK_Payment_Records_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Planning_Documents]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Documents_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Planning_Documents] CHECK CONSTRAINT [FK_Planning_Documents_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Planning_Entry]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Entry_Budget_Source] FOREIGN KEY([Budget_Source])
REFERENCES [dbo].[Budget_Source] ([Budget_Source_Id])
GO
ALTER TABLE [dbo].[Planning_Entry] CHECK CONSTRAINT [FK_Planning_Entry_Budget_Source]
GO
ALTER TABLE [dbo].[Planning_Entry]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Entry_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Planning_Entry] CHECK CONSTRAINT [FK_Planning_Entry_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Planning_Entry]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Entry_Work_Area] FOREIGN KEY([Work_Area])
REFERENCES [dbo].[Work_Area] ([Work_Area_Id])
GO
ALTER TABLE [dbo].[Planning_Entry] CHECK CONSTRAINT [FK_Planning_Entry_Work_Area]
GO
ALTER TABLE [dbo].[Planning_Entry]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Entry_Work_Type] FOREIGN KEY([Work_Type])
REFERENCES [dbo].[Work_Type] ([Work_Type_Id])
GO
ALTER TABLE [dbo].[Planning_Entry] CHECK CONSTRAINT [FK_Planning_Entry_Work_Type]
GO
ALTER TABLE [dbo].[Planning_Entry_Anudan]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Entry_Anudan_Planning_Entry] FOREIGN KEY([Planning_Entry_Id])
REFERENCES [dbo].[Planning_Entry] ([Planning_Entry_Id])
GO
ALTER TABLE [dbo].[Planning_Entry_Anudan] CHECK CONSTRAINT [FK_Planning_Entry_Anudan_Planning_Entry]
GO
ALTER TABLE [dbo].[Planning_Entry_Anudan]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Entry_Anudan_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Planning_Entry_Anudan] CHECK CONSTRAINT [FK_Planning_Entry_Anudan_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Planning_Entry_Kista_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Entry_Kista_Detail_Planning_Entry] FOREIGN KEY([Planning_Entry_Id])
REFERENCES [dbo].[Planning_Entry] ([Planning_Entry_Id])
GO
ALTER TABLE [dbo].[Planning_Entry_Kista_Detail] CHECK CONSTRAINT [FK_Planning_Entry_Kista_Detail_Planning_Entry]
GO
ALTER TABLE [dbo].[Planning_Entry_Kista_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Planning_Entry_Kista_Detail_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Planning_Entry_Kista_Detail] CHECK CONSTRAINT [FK_Planning_Entry_Kista_Detail_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Project_Entry_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Project_Entry_Detail_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Project_Entry_Detail] CHECK CONSTRAINT [FK_Project_Entry_Detail_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Project_Other_Source]  WITH CHECK ADD  CONSTRAINT [FK_Project_Other_Source_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Project_Other_Source] CHECK CONSTRAINT [FK_Project_Other_Source_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Project_Source_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Project_Source_Detail_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Project_Source_Detail] CHECK CONSTRAINT [FK_Project_Source_Detail_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Samiti_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Samiti_Detail_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Samiti_Detail] CHECK CONSTRAINT [FK_Samiti_Detail_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[UpaBhokta_Samiti_Members_Details]  WITH CHECK ADD  CONSTRAINT [FK_UpaBhokta_Samiti_Members_Details_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhauta_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[UpaBhokta_Samiti_Members_Details] CHECK CONSTRAINT [FK_UpaBhokta_Samiti_Members_Details_Planning_Samjhauta]
GO
/****** Object:  StoredProcedure [dbo].[GetLastDayOfMonth]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetLastDayOfMonth](
@year nvarchar(100),
@month nvarchar(100)
)
as 
begin
Declare @query nvarchar(max)
set @query='select ' +@month + '  from NpCalDb where NCAL_YEAR='+@year
exec (@query)
end

GO
/****** Object:  StoredProcedure [dbo].[IsNepaliDateExist]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[IsNepaliDateExist](
@year nvarchar(100),
@month nvarchar(100)
)
as 
begin
DECLARE @CurMonth as int,@Days as int
IF @month=1
		Select @Days=MONTH_1 From NpCalDb Where NCAL_YEAR=@year
	IF @month=2
		Select @Days=MONTH_2 From NpCalDb Where NCAL_YEAR=@year
	IF @month=3
		Select @Days=MONTH_3 From NpCalDb Where NCAL_YEAR=@year
	IF @month=4
		Select @Days=MONTH_4 From NpCalDb Where NCAL_YEAR=@year
	IF @month=5
		Select @Days=MONTH_5 From NpCalDb Where NCAL_YEAR=@year
	IF @month=6
		Select @Days=MONTH_6 From NpCalDb Where NCAL_YEAR=@year
	IF @month=7
		Select @Days=MONTH_7 From NpCalDb Where NCAL_YEAR=@year
	IF @month=8
		Select @Days=MONTH_8 From NpCalDb Where NCAL_YEAR=@year
	IF @month=9
		Select @Days=MONTH_9 From NpCalDb Where NCAL_YEAR=@year
	IF @month=10
		Select @Days=MONTH_10 From NpCalDb Where NCAL_YEAR=@year
	IF @month=11
		Select @Days=MONTH_11 From NpCalDb Where NCAL_YEAR=@year
	IF @month=12
		Select @Days=MONTH_12 From NpCalDb Where NCAL_YEAR=@year


SELECT @Days AS 'lastDateOfMonth'
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetLocalDate]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create PROC[dbo].[sp_GetLocalDate](@RomanDate as DateTime,@Format as int)
AS
BEGIN
DECLARE 
	@EnDate AS DATE,
	@DaysDiff AS INT,
	@StartDate AS DATETIME,
	@EndDate AS DATETIME,
	@NPYear AS INT

SET @EnDate=@RomanDate
SELECT 
	@NPYear=NCAL_YEAR, 
	@StartDate=STRT_DATE,
	@EndDate=STOP_DATE
FROM 
	NpCalDb 
WHERE 
	STRT_DATE<=@EnDate AND STOP_DATE>=@EnDate

SET @DaysDiff=DATEDIFF(DD,@StartDate,@EnDate)

DECLARE 
	@iCount AS INT,
	@CurMonth AS INT,
	@OpDate AS DATETIME,
	@Days AS INT

SET @OpDate=@StartDate
SET @CurMonth=1
SET @iCount=1
WHILE(@OpDate<@EnDate)
BEGIN
	IF @CurMonth=1
		Select @Days=MONTH_1 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=2
		Select @Days=MONTH_2 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=3
		Select @Days=MONTH_3 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=4
		Select @Days=MONTH_4 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=5
		Select @Days=MONTH_5 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=6
		Select @Days=MONTH_6 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=7
		Select @Days=MONTH_7 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=8
		Select @Days=MONTH_8 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=9
		Select @Days=MONTH_9 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=10
		Select @Days=MONTH_10 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=11
		Select @Days=MONTH_11 From NpCalDb Where NCAL_YEAR=@NPYear
	ELSE IF @CurMonth=12
		Select @Days=MONTH_12 From NpCalDb Where NCAL_YEAR=@NPYear

	IF @Days=@iCount
	BEGIN
		SET @CurMonth=@CurMonth+1
		SET @iCount=0
	END
		SET @iCount=@iCount+1
		SET @OpDate=DATEADD(DD,1,@OpDate)
END

DECLARE @NPMonth AS NCHAR(2),@NPDay AS NCHAR(2),@NPMonthName AS NVARCHAR(15)
SET @NPMonth=CAST(@CurMonth AS NCHAR(2))
SET @NPDay=CAST(@iCount AS NCHAR(2))
	IF @CurMonth=1
		SET @NPMonthName=N'बैशाख'
	IF @CurMonth=2
		SET @NPMonthName=N'जेष्ठ'
	IF @CurMonth=3
		SET @NPMonthName=N'असार'
	IF @CurMonth=4
		SET @NPMonthName=N'श्रावण'
	IF @CurMonth=5
		SET @NPMonthName=N'भाद्र'
	IF @CurMonth=6
		SET @NPMonthName=N'असोज'
	IF @CurMonth=7
		SET @NPMonthName=N'कार्तिक'
	IF @CurMonth=8
		SET @NPMonthName=N'मंसिर'
	IF @CurMonth=9
		SET @NPMonthName=N'पुष'
	IF @CurMonth=10
		SET @NPMonthName=N'माघ'
	IF @CurMonth=11
		SET @NPMonthName=N'फाल्गुन'
	IF @CurMonth=12
		SET @NPMonthName=N'चैत्र'

DECLARE @RetString AS NVARCHAR(20)
IF @CurMonth<10 
	SET @NPMonth='0' + CAST(@CurMonth AS NCHAR(1))

IF @iCount<10 
	SET @NPDay='0' + CAST(@iCount AS NCHAR(1))
IF @Format=1
	SET @RetString=CAST(@NPYear AS NCHAR(4)) + '-' + RTRIM(CAST(@NPMonth AS NCHAR(2)))+ '-' + RTRIM(CAST(@NPDay AS NCHAR(2)))
ELSE IF @Format=2
	SET @RetString= RTRIM(CAST(@NPDay AS NCHAR(2)))+ '-' + RTRIM(CAST(@NPMonth AS NCHAR(2)))+ '-' + CAST(@NPYear AS NCHAR(4))
ELSE IF @Format=3
	SET @RetString=RTRIM(CAST(@NPDay AS NCHAR(2)))+' '+RTRIM(CAST(@NPMonthName AS NVARCHAR(10)))+', '+CAST(@NPYear AS NCHAR(4))

SELECT @RetString AS 'NepaliDate'
END





GO
/****** Object:  StoredProcedure [dbo].[sp_GetRomanDate]    Script Date: 2019-01-10 4:16:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Proc [dbo].[sp_GetRomanDate]
(
	@LocalYear as int,
	@LocalMonth as int,
	@LocalDay as int
)
AS
BEGIN
DECLARE 
	@EnDate AS DATETIME,
	@StartDate as DateTime,
	@EndDate as DateTime,
	@NPYear as int
SET @NPYear=@LocalYear
Select  @StartDate=STRT_DATE,@EndDate=STOP_DATE
from NpCalDb Where NCAL_YEAR=@NPYear


DECLARE @iCount as int,@CurMonth as int,@OpDate as DateTime,@Days as int,@LoopFlag as Bit
SET @LoopFlag=0
SET @OpDate=@StartDate
SET @CurMonth=1
SET @iCount=1
-------------------------------------
IF @CurMonth=@LocalMonth AND @iCount=@LocalDay
	SET @LoopFlag=1
-------------------------------------
WHILE(@LoopFlag=0)
BEGIN
	IF @CurMonth=1
		Select @Days=MONTH_1 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=2
		Select @Days=MONTH_2 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=3
		Select @Days=MONTH_3 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=4
		Select @Days=MONTH_4 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=5
		Select @Days=MONTH_5 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=6
		Select @Days=MONTH_6 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=7
		Select @Days=MONTH_7 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=8
		Select @Days=MONTH_8 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=9
		Select @Days=MONTH_9 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=10
		Select @Days=MONTH_10 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=11
		Select @Days=MONTH_11 From NpCalDb Where NCAL_YEAR=@NPYear
	IF @CurMonth=12
		Select @Days=MONTH_12 From NpCalDb Where NCAL_YEAR=@NPYear

IF @Days=@iCount
	BEGIN
	SET @CurMonth=@CurMonth+1
	SET @iCount=0
	END
SET @iCount=@iCount+1

SET @OpDate=DATEADD(DD,1,@OpDate)
-------------------------------------
IF @CurMonth=@LocalMonth AND @iCount=@LocalDay
	SET @LoopFlag=1
-------------------------------------
END

SELECT @OpDate AS 'RomanDate'
END



GO
USE [master]
GO
ALTER DATABASE [SOLU_DUDH_KUNDA_PLANNING] SET  READ_WRITE 
GO
