USE [Yext_Project]
GO
/****** Object:  StoredProcedure [dbo].[InsertTicket]    Script Date: 20/10/2020 11:32:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Dandy>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Modified date: 09.07.2020
-- Description:	Insert Ticket Records processed by BOT

-- =============================================
ALTER PROCEDURE [dbo].[InsertTicket]
	-- Add the parameters for the stored procedure here
	@TicketNo nvarchar(50),
	@LocalInfo_Name nvarchar(100),
	@LocalInfo_Address nvarchar(100),
    @LocalInfo_Address2 nvarchar(100),
	@LocalInfo_City nvarchar(100),
	@LocalInfo_State nvarchar(100),
	@LocalInfo_Country nvarchar(100),
	@LocalInfo_Phone nvarchar(100),
	@LocalInfo_ID nvarchar(100),
	@UserSelected_Name nvarchar(100),
	@UserSelected_Address nvarchar(100),
	@UserSelected_Address2 nvarchar(100),                            
	@UserSelected_City nvarchar(100),
	@UserSelected_State nvarchar(100),
	@UserSelected_Country nvarchar(100),
	@UserSelected_Phone nvarchar(100),
	@Action nvarchar(100),
	@ProcessBy nvarchar(100),
	@StartProcessed datetime,
	@Remarks nvarchar(200),
	@LineRemarks nvarchar(100),
	@BatchID nvarchar(100),
	@LOB varchar(50),
	@SkipReason varchar(50)


	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[STG_Ticket]
                               ([TicketNo]
                               ,[LI_Name]
                               ,[LI_Address]
                               ,[LI_Address2]
                               ,[LI_City]
                               ,[LI_State]
                               ,[LI_Country]
                               ,[LI_Phone]
                               ,[LI_ID]
                               ,[UM_Name]
                               ,[UM_Address]
                               ,[UM_Address2]
                               ,[UM_City]
                               ,[UM_State]
                               ,[UM_Country]
                               ,[UM_Phone]
                               ,[Action]
                               ,[ProcessBy]
                               ,[StartProcessed]
                               ,[Remarks]
                               ,[DateProcessed]
                               ,[Active]
							   ,[LineRemarks]
							   ,[BatchID]
							   ,[LOB]
							   ,[SkipReason])
                         VALUES
                               (@TicketNo
                               ,@LocalInfo_Name
                               ,@LocalInfo_Address
                               ,@LocalInfo_Address2
                               ,@LocalInfo_City
                               ,@LocalInfo_State
                               ,@LocalInfo_Country
                               ,@LocalInfo_Phone
                               ,@LocalInfo_ID
                               ,@UserSelected_Name
                               ,@UserSelected_Address
                               ,@UserSelected_Address2
                               ,@UserSelected_City
                               ,@UserSelected_State
                               ,@UserSelected_Country
                               ,@UserSelected_Phone
                               ,@Action
                               ,@ProcessBy
                               ,@StartProcessed
                               ,@Remarks
                               ,GETDATE()
                               ,'1'
							   ,@LineRemarks
							   ,@BatchID
							   ,@LOB
							   ,@SkipReason)
END
