USE [Virtual_UMB]
GO
/****** Object:  StoredProcedure [dbo].[getUserInfo]    Script Date: 4/23/2015 12:36:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getUserInfo]
	@Umass_ID int
AS

BEGIN
	SET NOCOUNT ON;
	
	SELECT Umass_ID,Email_ID,First_Name,last_Name,Password,Gender,User_Image_path,Description,Major,Department,College,User_Type	 
	FROM Virtual_UMB.dbo.Virtual_Registration
	WHERE Umass_ID=@Umass_ID;
END

