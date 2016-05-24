SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE getModelInfo
	@modelid int
AS

BEGIN
	SET NOCOUNT ON;
	
	SELECT Name,Catageory,ModelPath,Model_Description,Likes_Count,Views_Count
	 
	FROM [dbo].[Virtual_Upload]
	WHERE Model_ID=@modelid;
END
