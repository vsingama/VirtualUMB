SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE getOwnerInfo
	@umassid int
AS

BEGIN
	SET NOCOUNT ON;
	
	SELECT Email_ID,First_Name,last_Name,User_Image_path,Description,Department,Major,College
	 
	FROM [dbo].[Virtual_Registration]
	WHERE Umass_ID=@umassid;
END
