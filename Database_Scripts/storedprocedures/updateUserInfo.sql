USE [Virtual_UMB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE updateUserInfo
        @First_Name varchar(50),
		@last_Name varchar(50),
		@User_Image_path varchar(100),
		@Description varchar(500),
        @Department varchar(50),
		@Major varchar(50),
		@College varchar(50),
		@Umass_ID int
		
				
AS

BEGIN
	
	SET NOCOUNT ON;
	
	UPDATE [dbo].[Virtual_Registration]
	SET First_Name = @First_Name, 
	last_Name= @last_Name,
	User_Image_path = @User_Image_path,
	Description = @Description,
	Department = @Department,
	Major = @Major,
	College=@College
	WHERE Umass_ID = @Umass_ID;
	
END
