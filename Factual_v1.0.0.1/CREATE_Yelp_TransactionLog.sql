USE [Factual]
GO

/****** Object:  Table [dbo].[Yelp_TransactionLog]    Script Date: 2/26/2021 3:34:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Yelp_TransactionLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TicketNo] [nvarchar](50) NULL,
	[Batch] [nvarchar](50) NULL,
	[BatchURL] [nvarchar](100) NULL,
	[YelpURL] [nvarchar](100) NULL,
	[BusinessName] [varchar](255) NULL,
	[Annotation] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Locality] [nvarchar](100) NULL,
	[Region] [nvarchar](100) NULL,
	[PostCode] [nvarchar](100) NULL,
	[Tel] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
	[Action] [nvarchar](100) NULL,
	[ProcessBy] [nvarchar](50) NULL,
	[ProcessDate] [datetime] NULL
) ON [PRIMARY]
GO


