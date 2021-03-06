USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Claim_insert]    Script Date: 21/6/2022 17:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 9/6/2022
-- Description:	Inserts a claim into the database
-- =============================================
ALTER PROCEDURE [dbo].[Claim_insert]
	-- Add the parameters for the stored procedure here
	@usersender_IN VARCHAR(50)
	,@usereceiver_IN VARCHAR(50)
	,@description_IN VARCHAR(200)
	,@dateMessage_IN DATE
	,@resolved_IN BIT
	,@goodTerms_IN BIT
	,@idSaleFK_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
	-- Insert statements for procedure here
	DECLARE @idClaimFK INT
	BEGIN TRY
	IF EXISTS(SELECT C.idSaleFK FROM dbo.Claim AS C WHERE C.idSaleFK = @idSaleFK_IN)
		BEGIN
			SET @idClaimFK = (SELECT C.id from dbo.Claim AS C WHERE C.idSaleFK = @idSaleFK_IN)
			INSERT INTO dbo.Messages(Usersender,Usereceiver,description,dateMessage,idClaimFK)
			VALUES(@usersender_IN,@usereceiver_IN,@description_IN,GETDATE(),@idClaimFK)
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[Claim] (dateClaim,descriptionClaim,resolved,goodTerms,idSaleFK)
			VALUES (GETDATE(),@description_IN,@resolved_IN,@goodTerms_IN,@idSaleFK_IN)
		END

	END TRY
	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
