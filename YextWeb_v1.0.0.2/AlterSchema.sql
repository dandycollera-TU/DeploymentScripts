ALTER TABLE [dbo].[STG_Ticket]
ADD [TicketLOB] nvarchar(100);

ALTER TABLE [dbo].[STG_Ticket]
ADD [LineRemarks] nvarchar(100);

ALTER TABLE [dbo].[STG_Ticket]
ADD [BatchID] nvarchar(100);

ALTER TABLE [dbo].[STG_Ticket]
ADD [LOB] varchar(50);

ALTER TABLE [dbo].[STG_Ticket]
ADD [SkipReason] varchar(50);