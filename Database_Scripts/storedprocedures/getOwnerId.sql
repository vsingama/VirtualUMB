
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE getOwnerId
	@modelid int, 
	@umassid int OUT
AS

BEGIN
	SET NOCOUNT ON;
	
	SELECT @umassid = Umass_ID
	 
	FROM [dbo].[Virtual_Upload]
	WHERE Model_ID=@modelid;
END
GO
