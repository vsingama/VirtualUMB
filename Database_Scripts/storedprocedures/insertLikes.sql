SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE insertLikes
	@modelid int,
	@umassid int
AS

BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO [dbo].[Virtual_Likes]
	 VALUES(@umassid, @modelid)
END