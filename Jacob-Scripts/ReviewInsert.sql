USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Review_insert]    Script Date: 21/6/2022 11:53:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Inserts a new review into the database
-- =============================================
ALTER PROCEDURE [dbo].[Review_insert]
	-- Add the parameters for the stored procedure here
	@description_IN VARCHAR(200)
	,@rating_IN INT
	,@WhiskeyFK_IN INT
	,@UserFK_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
	-- Insert statements for procedure here
	DECLARE @Reviewdate DATE
	SELECT @Reviewdate = CONVERT (date, GETDATE())
	BEGIN TRY
		IF (
				SELECT COUNT(*)
				FROM [WC_USA].dbo.Inventory I
				WHERE I.idWhiskeyFK = @WhiskeyFK_IN
				) > 0
			OR (
				SELECT COUNT(*)
				FROM [WC_SC].dbo.Inventory I
				WHERE I.idWhiskeyFK = @WhiskeyFK_IN
				) > 0
			OR (
				SELECT COUNT(*)
				FROM [WC_IR].dbo.Inventory I
				WHERE I.idWhiskeyFK = @WhiskeyFK_IN
				) > 0
		BEGIN
			INSERT INTO [dbo].[Review] (
				[description]
				,[ReviewDate]
				,[rating]
				,[idWhiskeyFK]
				,[idUserFK]
				)
			VALUES (
				@description_IN
				,@Reviewdate
				,@rating_IN
				,@WhiskeyFK_IN
				,@UserFK_IN
				)

			IF @@ROWCOUNT > 0 --Last operation successful?
				RETURN 0
			ELSE
				RETURN 1
		END

		RETURN 1
	END TRY

	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END

