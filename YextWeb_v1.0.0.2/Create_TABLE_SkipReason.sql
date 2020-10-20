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


