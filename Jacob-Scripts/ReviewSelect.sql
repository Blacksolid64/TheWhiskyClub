USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Review_select]    Script Date: 21/6/2022 15:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Gets the info of an existing review
-- =============================================
ALTER PROCEDURE [dbo].[Review_select]
	-- Add the parameters for the stored procedure here
	@whiskyId_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		SELECT R.description
			,R.ReviewDate
			,R.rating
			,R.idWhiskeyFK
			,U.name
			,U.surname_1
			,U.surname_2
		FROM Review AS R
		INNER JOIN UserInformation AS U on R.idUserFK = U.identification
		WHERE R.idWhiskeyFK = @whiskyId_IN
		RETURN 0
	END TRY

	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
