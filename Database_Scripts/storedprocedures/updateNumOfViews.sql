SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE updateNumOfViews
	@modelid int
AS

BEGIN
	SET NOCOUNT ON;
	
	UPDATE [dbo].[Virtual_Upload]
	 SET Views_Count = Views_Count+1
	WHERE Model_ID=@modelid;
END