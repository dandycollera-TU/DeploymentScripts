USE [Yext_Project]
GO
/****** Object:  StoredProcedure [dbo].[GetSkippedItemRange]    Script Date: 1/6/2021 2:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Dandy Collera
-- Create date: 09.07.2020
-- Update date: 12.20.2020
-- Description:	Create SP for Get Skipped Ticket with filters
-- =============================================
ALTER PROCEDURE [dbo].[GetSkippedItemRange]
	-- Add the parameters for the stored procedure here
	@DateFrom datetime,
	@DateTo datetime,
	@ProcessBy	varchar(50),
	@SkipReason varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@SkipReason='All')
		BEGIN
			SELECT [ID]
								  ,[TicketNo]
								  ,[LI_Name]
								  ,[LI_Address]
								  ,[LI_Address2]
								  ,[LI_City]
								  ,[LI_State]
								  ,[LI_Zip]
								  ,[LI_Country]
								  ,[LI_Phone]
								  ,[LI_LocalPhone]
								  ,[UM_Name]
								  ,[UM_Address]
								  ,[UM_Address2]
								  ,[UM_City]
								  ,[UM_State]
								  ,[UM_Zip]
								  ,[UM_Country]
								  ,[UM_Phone]
								  ,[Action]
								  ,[ProcessBy]
								  ,[DateProcessed]
								  ,[Active]
								  ,[Remarks]
								  ,DATEDIFF(millisecond, [StartProcessed],[DateProcessed]) AS TicketAge
								  ,[TicketLOB]
								  ,[SkipReason]
								  ,[LineRemarks]
								  ,CONCAT('https://www.yext.com/taskprocessing2/process/',TicketNo) as HyperLink
							  FROM [Yext_Project].[dbo].[STG_Ticket]
							  WHERE DateProcessed BETWEEN @DateFrom	AND @DateTo
							  AND [Action]='Skipped'
							  AND ProcessBy= @ProcessBy
							  --AND Remarks ='Listing ticket.'
					  

		END
	ELSE
		BEGIN
			SELECT [ID]
								  ,[TicketNo]
								  ,[LI_Name]
								  ,[LI_Address]
								  ,[LI_Address2]
								  ,[LI_City]
								  ,[LI_State]
								  ,[LI_Zip]
								  ,[LI_Country]
								  ,[LI_Phone]
								  ,[LI_LocalPhone]
								  ,[UM_Name]
								  ,[UM_Address]
								  ,[UM_Address2]
								  ,[UM_City]
								  ,[UM_State]
								  ,[UM_Zip]
								  ,[UM_Country]
								  ,[UM_Phone]
								  ,[Action]
								  ,[ProcessBy]
								  ,[DateProcessed]
								  ,[Active]
								  ,[Remarks]
								  ,DATEDIFF(millisecond, [StartProcessed],[DateProcessed]) AS TicketAge
								  ,[TicketLOB]
								  ,[SkipReason]
								  ,[LineRemarks]
								  ,CONCAT('https://www.yext.com/taskprocessing2/process/',TicketNo) as HyperLink
							  FROM [Yext_Project].[dbo].[STG_Ticket]
							  WHERE DateProcessed BETWEEN @DateFrom	AND @DateTo
							  AND [Action]='Skipped'
							  AND ProcessBy= @ProcessBy
							  AND SkipReason=@SkipReason
							  --AND Remarks <>'Listing ticket.'
		END
END
