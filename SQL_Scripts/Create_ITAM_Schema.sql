USE master
GO
CREATE DATABASE ITAM
Go

USE [ITAM]
GO
/****** Object:  Schema [stage]    Script Date: 5/8/2019 4:45:35 PM ******/
CREATE SCHEMA [stage]
GO
/****** Object:  Table [dbo].[Asset]    Script Date: 5/8/2019 4:45:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asset](
	[Asset_ID] [bigint] IDENTITY(1000,1) NOT NULL,
	[Asset_Name] [varchar](40) NOT NULL,
	[Asset_Type] [tinyint] NOT NULL,
	[Last_Scan_Date] [datetime] NOT NULL,
	[Last_Scan_Status_Id] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Asset_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asset_Types]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asset_Types](
	[Asset_Type] [tinyint] NOT NULL,
	[Asset_Type_Name] [varchar](100) NOT NULL,
	[Asset_Type_Desc] [varchar](2000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Asset_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scan_Status]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scan_Status](
	[Scan_Status_Id] [tinyint] NOT NULL,
	[Scan_Status_Name] [varchar](100) NOT NULL,
	[Scan_Status_Desc] [varchar](2000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Scan_Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Drive_Space]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Drive_Space](
	[Asset_ID] [int] NULL,
	[DeviceID] [nvarchar](max) NULL,
	[DriveType] [bigint] NULL,
	[VolumeName] [nvarchar](max) NULL,
	[Capacity] [nvarchar](max) NULL,
	[FreeSpaceGB] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server_Updates]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server_Updates](
	[Asset_ID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[HotFixID] [nvarchar](max) NULL,
	[InstalledBy] [nvarchar](max) NULL,
	[InstalledOn] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL_Database_Info]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL_Database_Info](
	[Asset_ID] [int] NULL,
	[database_id] [int] NULL,
	[dbName] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[state_desc] [nvarchar](max) NULL,
	[DataFiles] [int] NULL,
	[Data MB] [int] NULL,
	[LogFiles] [int] NULL,
	[Log MB] [int] NULL,
	[User access] [nvarchar](max) NULL,
	[Recovery model] [nvarchar](max) NULL,
	[compatibility level] [nvarchar](max) NULL,
	[Creation date] [nvarchar](max) NULL,
	[Last backup] [nvarchar](max) NULL,
	[fulltext] [nvarchar](max) NULL,
	[autoclose] [nvarchar](max) NULL,
	[page verify option] [nvarchar](max) NULL,
	[read only] [nvarchar](max) NULL,
	[autoshrink] [nvarchar](max) NULL,
	[standby] [nvarchar](max) NULL,
	[cleanly shutdown] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL_Error_Logs]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL_Error_Logs](
	[Asset_ID] [int] NULL,
	[Logdate] [datetime2](7) NULL,
	[ProcessInfo] [nvarchar](max) NULL,
	[ErrorLogText] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL_Instance_Info]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL_Instance_Info](
	[Asset_ID] [int] NULL,
	[MachineName] [nvarchar](max) NULL,
	[InstanceName] [nvarchar](max) NULL,
	[Port] [nvarchar](max) NULL,
	[ProductName] [nvarchar](max) NULL,
	[ProductVersion] [nvarchar](max) NULL,
	[ProductLevel] [nvarchar](max) NULL,
	[ProductMajorVersion] [nvarchar](max) NULL,
	[ProductMinorVersion] [nvarchar](max) NULL,
	[ProductBuild] [nvarchar](max) NULL,
	[Edition] [nvarchar](max) NULL,
	[EngineEdition] [nvarchar](max) NULL,
	[HadrEnabled] [nvarchar](max) NULL,
	[HadrManagerStatus] [nvarchar](max) NULL,
	[InSingleUserMode] [nvarchar](max) NULL,
	[IsClustered] [nvarchar](max) NULL,
	[ServerEnvironment] [nvarchar](max) NULL,
	[ServerStatus] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL_Job_Info]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL_Job_Info](
	[Asset_Id] [int] NULL,
	[RunTime] [datetime2](7) NULL,
	[job_id] [uniqueidentifier] NULL,
	[name] [nvarchar](max) NULL,
	[step_id] [int] NULL,
	[step_name] [nvarchar](max) NULL,
	[last_run_outcome] [nvarchar](max) NULL,
	[last_run_datetime] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL_Resource_Info]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL_Resource_Info](
	[Asset_ID] [nvarchar](max) NULL,
	[MaxMemorySetting(MB)] [nvarchar](max) NULL,
	[PhysicalServerMemory(MB)] [nvarchar](max) NULL,
	[RemainingMemory(MB)] [bigint] NULL,
	[CPUCount] [int] NULL,
	[LastReboot] [datetime2](7) NULL,
	[DaysUp] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [stage].[Server_Drive_Space]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stage].[Server_Drive_Space](
	[Asset_ID] [int] NULL,
	[DeviceID] [nvarchar](max) NULL,
	[DriveType] [bigint] NULL,
	[VolumeName] [nvarchar](max) NULL,
	[Capacity] [nvarchar](max) NULL,
	[FreeSpaceGB] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [stage].[Server_Updates]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stage].[Server_Updates](
	[Asset_ID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[HotFixID] [nvarchar](max) NULL,
	[InstalledBy] [nvarchar](max) NULL,
	[InstalledOn] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [stage].[SQL_Database_Info]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stage].[SQL_Database_Info](
	[Asset_ID] [int] NULL,
	[database_id] [int] NULL,
	[dbName] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[state_desc] [nvarchar](max) NULL,
	[DataFiles] [int] NULL,
	[Data MB] [int] NULL,
	[LogFiles] [int] NULL,
	[Log MB] [int] NULL,
	[User access] [nvarchar](max) NULL,
	[Recovery model] [nvarchar](max) NULL,
	[compatibility level] [nvarchar](max) NULL,
	[Creation date] [nvarchar](max) NULL,
	[Last backup] [nvarchar](max) NULL,
	[fulltext] [nvarchar](max) NULL,
	[autoclose] [nvarchar](max) NULL,
	[page verify option] [nvarchar](max) NULL,
	[read only] [nvarchar](max) NULL,
	[autoshrink] [nvarchar](max) NULL,
	[standby] [nvarchar](max) NULL,
	[cleanly shutdown] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [stage].[SQL_Error_Logs]    Script Date: 5/8/2019 4:45:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stage].[SQL_Error_Logs](
	[Asset_ID] [int] NULL,
	[Logdate] [datetime2](7) NULL,
	[ProcessInfo] [nvarchar](max) NULL,
	[ErrorLogText] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [stage].[SQL_Instance_Info]    Script Date: 5/8/2019 4:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stage].[SQL_Instance_Info](
	[Asset_ID] [int] NULL,
	[MachineName] [nvarchar](max) NULL,
	[InstanceName] [nvarchar](max) NULL,
	[Port] [nvarchar](max) NULL,
	[ProductName] [nvarchar](max) NULL,
	[ProductVersion] [nvarchar](max) NULL,
	[ProductLevel] [nvarchar](max) NULL,
	[ProductMajorVersion] [nvarchar](max) NULL,
	[ProductMinorVersion] [nvarchar](max) NULL,
	[ProductBuild] [nvarchar](max) NULL,
	[Edition] [nvarchar](max) NULL,
	[EngineEdition] [nvarchar](max) NULL,
	[HadrEnabled] [nvarchar](max) NULL,
	[HadrManagerStatus] [nvarchar](max) NULL,
	[InSingleUserMode] [nvarchar](max) NULL,
	[IsClustered] [nvarchar](max) NULL,
	[ServerEnvironment] [nvarchar](max) NULL,
	[ServerStatus] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [stage].[SQL_Job_Info]    Script Date: 5/8/2019 4:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stage].[SQL_Job_Info](
	[Asset_Id] [int] NULL,
	[RunTime] [datetime2](7) NULL,
	[job_id] [uniqueidentifier] NULL,
	[name] [nvarchar](max) NULL,
	[step_id] [int] NULL,
	[step_name] [nvarchar](max) NULL,
	[last_run_outcome] [nvarchar](max) NULL,
	[last_run_datetime] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [stage].[SQL_Resource_Info]    Script Date: 5/8/2019 4:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stage].[SQL_Resource_Info](
	[Asset_ID] [nvarchar](max) NULL,
	[MaxMemorySetting(MB)] [nvarchar](max) NULL,
	[PhysicalServerMemory(MB)] [nvarchar](max) NULL,
	[RemainingMemory(MB)] [bigint] NULL,
	[CPUCount] [int] NULL,
	[LastReboot] [datetime2](7) NULL,
	[DaysUp] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Cleanup_Staging_Tables]    Script Date: 5/8/2019 4:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
=========================================================================================================
Author:		Higginbotham, Joshua
Create date: 05/01/2019
Description:	Removes all records from staging tables prior to Asset Scan
Changes:
	Date		Developer				Notes
=========================================================================================================

=========================================================================================================
=========================================================================================================
*/

CREATE PROCEDURE [dbo].[Cleanup_Staging_Tables]
AS
BEGIN
	TRUNCATE TABLE stage.Server_Updates
	TRUNCATE TABLE stage.SQL_Database_Info
	TRUNCATE TABLE stage.SQL_Instance_Info
	TRUNCATE TABLE stage.SQL_Job_Info
	TRUNCATE TABLE stage.SQL_Resource_Info
    TRUNCATE TABLE stage.SQL_Error_Logs
    TRUNCATE TABLE stage.Server_Drive_Space
END;
GO
/****** Object:  StoredProcedure [dbo].[Get_StagingDataset]    Script Date: 5/8/2019 4:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
=========================================================================================================
Author:		Higginbotham, Joshua
Create date: 05/01/2019
Description:	Return all data from the staging locations for Demo
Changes:
	Date		Developer				Notes
=========================================================================================================

=========================================================================================================
=========================================================================================================
*/

CREATE PROCEDURE [dbo].[Get_StagingDataset]
AS
BEGIN
    SELECT *
    FROM stage.SQL_Resource_Info AS sri;
    SELECT *
    FROM stage.SQL_Instance_Info AS sii;
    SELECT *
    FROM stage.SQL_Database_Info AS sdi;
    SELECT *
    FROM stage.SQL_Job_Info AS sji;
    SELECT *
    FROM stage.Server_Updates AS su;
END;
GO
