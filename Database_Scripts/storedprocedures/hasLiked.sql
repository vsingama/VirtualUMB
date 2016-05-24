SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE hasLiked
	@modelid int,
	@umassid int,
	@flag int OUT
AS

BEGIN
	SET NOCOUNT ON;
	
	SELECT @flag = count(*)
	FROM [dbo].[Virtual_Likes]
	WHERE Umass_ID = @umassid
	AND Model_ID = @modelid
END