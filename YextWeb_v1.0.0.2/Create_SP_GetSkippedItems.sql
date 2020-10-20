USE [Yext_Project]
GO

/****** Object:  StoredProcedure [dbo].[GetAllSkippedItems]    Script Date: 20/10/2020 11:46:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllSkippedItems]	
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP 20000 st.[ID],
			TicketNo,
			LI_Name,
			LI_Address,
			LI_Phone,
			UM_Name,
			UM_Address,
			UM_Phone,
			DATEDIFF(millisecond, [StartProcessed],[DateProcessed])/1000.00 AS TicketAge,
			[Action],
			ProcessBy,
			DateProcessed,
			Concat(SkipReason,'-',sr.ReasonDescription) as 'SkipReason'
	FROM STG_Ticket st
	LEFT JOIN  SkipReason sr ON sr.ReasonCode = st.SkipReason
	WHERE [Action]='Skipped'
	AND [ProcessBy]<>''
	ORDER BY [DateProcessed] DESC

END
GO


