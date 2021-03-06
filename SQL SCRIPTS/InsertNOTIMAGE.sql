USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_insert]    Script Date: 6/21/2022 3:43:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 10/6/2022
-- Description:	Inserts a new whiskey into the database
-- =============================================
ALTER PROCEDURE [dbo].[Whiskey_insert]
	-- Add the parameters for the stored procedure here
	@Name_IN VARCHAR(50)
	,@Description_IN VARCHAR(200)
	,@WhiskeyType_IN INT
	,@Age_IN VARCHAR(50)
	,@Distillery_IN INT
	,@Presentation_IN INT
	,@Special_IN BIT
	,@IdStore_FK INT
	,@Quantity_IN INT
	,@Price_by_unit_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
	-- Insert statements for procedure here

	BEGIN TRY

		DECLARE @New_Features VARCHAR(MAX)

		SET @New_Features = (
		SELECT @Name_IN AS Name,@Distillery_IN AS Distillery,@Presentation_IN AS Presentation
		FOR JSON PATH, ROOT('Features')) --Generates a new json value

		INSERT INTO [dbo].[Whiskey] (
			[name]
			,[description]
			,[idWhiskeyTypeFK]
			,[idDistilleryFK]
			,[idPresentationFK]
			,[image]
			,[features_json]
			,[special]
			)
		VALUES (
			@Name_IN
			,@Description_IN
			,@WhiskeyType_IN
			,@Distillery_IN
			,@Presentation_IN
			,NULL
			,@New_Features
			,@Special_IN
			)

		IF @@ROWCOUNT > 0
		BEGIN
				INSERT INTO [dbo].[Inventory]
						   ([quantity]
						   ,[priceByUnit]
						   ,[idWhiskeyFK]
						   ,[idStoreFK])
					 VALUES
						   (@Quantity_IN
						   ,@Price_by_unit_IN
						   ,(SELECT IDENT_CURRENT('Whiskey'))
						   ,@IdStore_FK)
				RETURN 0
		END
		ELSE
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

select * from dbo.Whiskey