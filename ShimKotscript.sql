USE [master]
GO
/****** Object:  Database [dhawalagiri_planning]    Script Date: 6/17/2020 7:37:51 PM ******/
CREATE DATABASE [dhawalagiri_planning]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dhawalagiri_planning', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS14\MSSQL\DATA\dhawalagiri_planning.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dhawalagiri_planning_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS14\MSSQL\DATA\dhawalagiri_planning_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dhawalagiri_planning] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dhawalagiri_planning].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dhawalagiri_planning] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET ARITHABORT OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dhawalagiri_planning] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dhawalagiri_planning] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dhawalagiri_planning] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dhawalagiri_planning] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dhawalagiri_planning] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dhawalagiri_planning] SET  MULTI_USER 
GO
ALTER DATABASE [dhawalagiri_planning] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dhawalagiri_planning] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dhawalagiri_planning] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dhawalagiri_planning] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dhawalagiri_planning] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dhawalagiri_planning]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Aayojana_Maintainance]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Amanat_Deatils]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amanat_Deatils](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Darja] [nvarchar](100) NULL,
	[SahiDate] [nvarchar](50) NULL,
	[Planning_Samjhata_Id] [int] NULL,
 CONSTRAINT [PK_Amanat_Deatils] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Anugaman]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anugaman](
	[AnugamanId] [int] IDENTITY(1,1) NOT NULL,
	[AnugamanName] [nvarchar](500) NULL,
	[Date] [nvarchar](500) NULL,
	[Tipani] [nvarchar](500) NULL,
	[PlanningEntryId] [int] NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[UpdateDate] [date] NULL,
	[UpdateBy] [int] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [date] NULL,
 CONSTRAINT [PK_Anugaman] PRIMARY KEY CLUSTERED 
(
	[AnugamanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnugamanMember]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnugamanMember](
	[AnugamanMemberId] [int] NULL,
	[AnugamanId] [int] NULL,
	[name] [nvarchar](500) NULL,
	[Designation] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[Contact] [nvarchar](50) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [date] NULL,
	[Updatedate] [date] NULL,
	[UpdatedBy] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi1]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi10]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi10_Discussion_Conclusions]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi10_Discussion_Subjects]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi10_Meeting]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnuSuchi10_Meeting](
	[AnuSuchi10_Meeting_Id] [int] IDENTITY(1,1) NOT NULL,
	[AnuSuchi10_Id] [int] NULL,
	[Baithak_No] [nvarchar](50) NULL,
	[Baithak_Date] [nvarchar](50) NULL,
 CONSTRAINT [PK__AnuSuchi__89525524383AA34B] PRIMARY KEY CLUSTERED 
(
	[AnuSuchi10_Meeting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnuSuchi10_Members]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi11]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi3]    Script Date: 6/17/2020 7:37:51 PM ******/
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
	[Project_Start_Date] [nvarchar](50) NULL,
	[Project_End_Date] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[AnuSuchi3_Bhuktani]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi3_Expenses]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi3_Income]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi3_Maujat]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi3_Project_Work_Detail]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi3_Work_Division]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi4]    Script Date: 6/17/2020 7:37:51 PM ******/
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
	[Project_Approval_Date] [nvarchar](50) NULL,
	[Project_To_Finish_Date] [nvarchar](50) NULL,
	[Project_Ended_Date] [nvarchar](50) NULL,
	[Samiti_Expenses_Approval_Date] [datetime] NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__AnuSuchi__7DA2F59DCD28E7A6] PRIMARY KEY CLUSTERED 
(
	[AnuSuchi4_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Anusuchi4_Expenses]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Anusuchi4_Income]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi5]    Script Date: 6/17/2020 7:37:51 PM ******/
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
	[Project_Contract_Date] [nvarchar](50) NULL,
	[Project_End_Date] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Anusuchi6]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Anusuchi6_Janasahabhagita]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Anusuchi6_Karyalaya]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Anusuchi6_Solutions]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi7]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi7_Anugaman_Samiti]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi7_Upabhokta_Samiti]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi9]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi9_Discussion_Conclusions]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi9_Discussion_Subjects]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi9_Meeting]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AnuSuchi9_Members]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Beneficiaries_Group]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[BhukataniItem]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BhukataniItem](
	[bhukataniItemId] [int] IDENTITY(1,1) NOT NULL,
	[BhutaniID] [int] NULL,
	[itemid] [int] NULL,
	[Quantity] [decimal](18, 2) NULL,
	[status] [bit] NULL,
	[createdDate] [date] NULL,
	[createdBy] [int] NULL,
	[deletedDate] [date] NULL,
	[deletedby] [int] NULL,
	[updatedeby] [int] NULL,
	[updatedby] [int] NULL,
 CONSTRAINT [PK_BhukataniItem] PRIMARY KEY CLUSTERED 
(
	[bhukataniItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Budget_Source]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Class_A_Bank_List]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Darkhasta_Form]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Darkhasta_Form](
	[Darkhasta_Form_Id] [int] IDENTITY(1,1) NOT NULL,
	[Yojana_name] [nvarchar](300) NULL,
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
/****** Object:  Table [dbo].[DateConversion_TblNepaliCalender]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Fiscal_Year_Record]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Item]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[itemId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[ekainame] [nvarchar](50) NULL,
	[createdDate] [date] NULL,
	[createdBy] [int] NULL,
	[deletedBy] [int] NULL,
	[deletedDate] [date] NULL,
	[updateBy] [int] NULL,
	[updatedDate] [date] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kar_Katti]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Municipality_Samiti_Manjuri_Patra]    Script Date: 6/17/2020 7:37:51 PM ******/
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
	[Municipality_Manjuri_Date] [nvarchar](50) NULL,
	[Samiti_Adakshya_Name] [nvarchar](500) NULL,
	[Samiti_Adakshya_Sign] [nvarchar](500) NULL,
	[Samiti_Sachib_Name] [nvarchar](500) NULL,
	[Samiti_Sachib_Sign] [nvarchar](500) NULL,
	[Samiti_Rohabar_Name] [nvarchar](500) NULL,
	[Samiti_Rohabar_Sign] [nvarchar](500) NULL,
	[yojanSakhaRepresentativePostSign] [nvarchar](50) NULL,
	[yojanSakhaRepresentativePost] [nvarchar](50) NULL,
	[yojanSakhaRepresentaive] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK__Municipa__EE4CB14631EAD996] PRIMARY KEY CLUSTERED 
(
	[Municipality_Samiti_Manjuri_Patra_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NpCalDb]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Organization_Representative]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Organization_Setup]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Payment_Records]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Planning_Bhuktani]    Script Date: 6/17/2020 7:37:51 PM ******/
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
	[MarmatShmar] [nvarchar](50) NULL,
	[Katti_Rakam] [nvarchar](50) NULL,
	[Aanya_Raaya] [nvarchar](50) NULL,
	[AdakshyaName] [nvarchar](50) NULL,
	[SamjhautaDate] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Planning_Documents]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Planning_Entry]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planning_Entry](
	[Planning_Entry_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[FiscalYear] [nvarchar](50) NULL,
	[Planning_Name] [nvarchar](500) NULL,
	[Planning_Start_Date] [nvarchar](50) NULL,
	[Planning_End_Date] [nvarchar](50) NULL,
	[Work_Details] [nvarchar](max) NULL,
	[Amount_Estimate] [nvarchar](50) NULL,
	[Work_Type] [int] NULL,
	[Ward_No] [int] NULL,
	[Work_Area] [int] NULL,
	[SerialNo] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Planning_Entry_Anudan]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Planning_Entry_Kista_Detail]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Planning_Samjhauta]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Project_Entry_Detail]    Script Date: 6/17/2020 7:37:51 PM ******/
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
	[Project_Start_Date] [nvarchar](50) NULL,
	[Project_End_Date] [nvarchar](50) NULL,
	[Project_Complete_Date] [nvarchar](50) NULL,
	[Project_estimated_Amount] [nvarchar](50) NULL,
	[Total_Use_Amount] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[Project_Working_Status] [bit] NULL,
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
/****** Object:  Table [dbo].[Project_Other_Source]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Project_Source_Detail]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Samiti_Detail]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Samiti_Detail](
	[Samiti_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[Planning_Samjhauta_Id] [int] NULL,
	[Samiti_Estd_Date] [datetime] NULL,
	[Adakshya] [nvarchar](250) NULL,
	[AdakshyaContactNumber] [nvarchar](50) NULL,
	[SachibContactNumber] [nvarchar](50) NULL,
	[KoshadakshyaConctactNumber] [nvarchar](50) NULL,
	[SachibContractNumber] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Sarta_Setup]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[UpaBhokta_Samiti_Members_Details]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[UpbhoktaSamiti_Details]    Script Date: 6/17/2020 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpbhoktaSamiti_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ContactNo] [nvarchar](20) NULL,
	[SahiDate] [nvarchar](50) NULL,
	[Planning_Ssamjhata_Id] [int] NULL,
 CONSTRAINT [PK_UpbhoktaSamiti_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Upload_File]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Work_Area]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  Table [dbo].[Work_Type]    Script Date: 6/17/2020 7:37:51 PM ******/
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
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/17/2020 7:37:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/17/2020 7:37:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/17/2020 7:37:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/17/2020 7:37:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/17/2020 7:37:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/17/2020 7:37:51 PM ******/
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
ALTER TABLE [dbo].[Amanat_Deatils]  WITH CHECK ADD  CONSTRAINT [FK_Amanat_Deatils_Planning_Samjhauta] FOREIGN KEY([Planning_Samjhata_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[Amanat_Deatils] CHECK CONSTRAINT [FK_Amanat_Deatils_Planning_Samjhauta]
GO
ALTER TABLE [dbo].[Anugaman]  WITH CHECK ADD  CONSTRAINT [FK_Anugaman_Planning_Entry] FOREIGN KEY([PlanningEntryId])
REFERENCES [dbo].[Planning_Entry] ([Planning_Entry_Id])
GO
ALTER TABLE [dbo].[Anugaman] CHECK CONSTRAINT [FK_Anugaman_Planning_Entry]
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
ALTER TABLE [dbo].[UpbhoktaSamiti_Details]  WITH CHECK ADD  CONSTRAINT [FK_UpbhoktaSamiti_Details_Planning_Samjhauta] FOREIGN KEY([Planning_Ssamjhata_Id])
REFERENCES [dbo].[Planning_Samjhauta] ([Planning_Samjhauta_Id])
GO
ALTER TABLE [dbo].[UpbhoktaSamiti_Details] CHECK CONSTRAINT [FK_UpbhoktaSamiti_Details_Planning_Samjhauta]
GO
/****** Object:  StoredProcedure [dbo].[GetLastDayOfMonth]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[IsNepaliDateExist]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetLocalDate]    Script Date: 6/17/2020 7:37:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetRomanDate]    Script Date: 6/17/2020 7:37:51 PM ******/
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
ALTER DATABASE [dhawalagiri_planning] SET  READ_WRITE 
GO
