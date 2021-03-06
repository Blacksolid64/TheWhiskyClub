USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Wiskey_get]    Script Date: 6/17/2022 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriel Navarro
-- Create date: 17/06/2022
-- Description:	Gets all type whiskys
-- =============================================
create or ALTER PROCEDURE [dbo].[PresentationWiskey_get]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	SELECT  PR.id, PR.[name]
	FROM dbo.Presentation AS PR
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
