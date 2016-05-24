SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE updateNumOfLikes
	@modelid int
AS

BEGIN
	SET NOCOUNT ON;
	
	UPDATE [dbo].[Virtual_Upload]
	 SET Likes_Count = Likes_Count+1
	WHERE Model_ID=@modelid;
END