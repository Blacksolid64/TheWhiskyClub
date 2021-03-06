USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_update]    Script Date: 6/20/2022 9:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Updates the general information of a Whiskey
-- =============================================
ALTER PROCEDURE [dbo].[Whiskey_update]
	-- Add the parameters for the stored procedure here
	@whiskey_id_IN INT
	,@name_IN VARCHAR(50)
	,@description_IN VARCHAR(200) 
	,@idWhiskeyTypeFK_IN INT 
	,@Age_IN INT 
	,@Distillery_IN INT 
	,@Image_IN VARCHAR(50)
	,@Presentation_IN INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	IF @Age_IN IS NULL
		BEGIN
		SELECT @Age_IN = JSON_VALUE(W.features_json,'$.Features[0].Age') FROM Whiskey AS W WHERE W.id = @whiskey_id_IN;
		END
	IF @Image_IN IS NULL
		BEGIN
		SELECT @Image_IN = JSON_VALUE(W.features_json,'$.Features[0].Image') FROM Whiskey AS W WHERE W.id = @whiskey_id_IN;
		END
		UPDATE [dbo].[Whiskey]
		SET [name] = ISNULL(NULLIF(@name_IN,''),[name])
			,[description] = ISNULL(NULLIF(@description_IN,''),[description])
			,[idWhiskeyTypeFK] = ISNULL(@idWhiskeyTypeFK_IN,[idWhiskeyTypeFK])
			,[features_json] = JSON_MODIFY(JSON_MODIFY([features_json],'$.Features[0].Age',@Age_IN), --This is the way to update json values
			'$.Features[0].Image',@Image_IN) --Modifies Image Info
			,[idDistilleryFK] = ISNULL(@Distillery_IN,[idDistilleryFK])
			,[idPresentationFK] = ISNULL(@Presentation_IN,[idPresentationFK])
			--,JSON_MODIFY([features_json],'$.Features[0].Distillery',@Distillery_IN)
			--,JSON_MODIFY([features_json],'$.Features[0].Image',@Image_IN)
			--,JSON_MODIFY([features_json],'$.Features[0].Presentation',@Presentation_IN)
		WHERE id = @whiskey_id_IN

		IF @@ROWCOUNT > 0 --Last operation successful?
			RETURN 0
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
