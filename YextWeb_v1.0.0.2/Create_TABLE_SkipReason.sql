USE [Yext_Project]
GO

/****** Object:  Table [dbo].[SkipReason]    Script Date: 20/10/2020 11:05:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SkipReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReasonCode] [varchar](50) NULL,
	[ReasonDescription] [varchar](100) NULL,
	[DateCreated] [date] NULL,
	[CreatedBy] [varchar](100) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SkipReason] ADD  CONSTRAINT [DF_SkipReason_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO





INSERT INTO [dbo].[SkipReason]
           ([ReasonCode]
           ,[ReasonDescription]
           ,[DateCreated])
     VALUES
           ('SK1'
           ,'Professional Name'
           ,GETDATE());


INSERT INTO [dbo].[SkipReason]
           ([ReasonCode]
           ,[ReasonDescription]
           ,[DateCreated])
     VALUES
           ('SK2'
           ,'Listings with special and foreign characters  '
           ,GETDATE());

INSERT INTO [dbo].[SkipReason]
           ([ReasonCode]
           ,[ReasonDescription]
           ,[DateCreated])
     VALUES
           ('SK3'
           ,'GMB Task'
           ,GETDATE());
INSERT INTO [dbo].[SkipReason]
           ([ReasonCode]
           ,[ReasonDescription]
           ,[DateCreated])
     VALUES
           ('SK4'
           ,'Non - alphanumeric characters'
           ,GETDATE());
INSERT INTO [dbo].[SkipReason]
           ([ReasonCode]
           ,[ReasonDescription]
           ,[DateCreated])
     VALUES
           ('SK5'
           ,'Did not meet loading threshold'
           ,GETDATE());
INSERT INTO [dbo].[SkipReason]
           ([ReasonCode]
           ,[ReasonDescription]
           ,[DateCreated])
     VALUES
           ('SK6'
           ,'Task that should be escalated'
           ,GETDATE());
INSERT INTO [dbo].[SkipReason]
           ([ReasonCode]
           ,[ReasonDescription]
           ,[DateCreated])
     VALUES
           ('SK7'
           ,'Task error (Scanning Unavailable Exception, RPc Exception, Error 400)'
           ,GETDATE());


