USE [Factual]
GO

/****** Object:  Table [dbo].[Yelp_TransactionLog]    Script Date: 2/26/2021 4:49:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Yelp_TransactionLog]') AND type in (N'U'))
DROP TABLE [dbo].[Yelp_TransactionLog]
GO