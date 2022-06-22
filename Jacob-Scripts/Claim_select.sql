USE [WC_USA]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Claim_select]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
	-- Insert statements for procedure here
	BEGIN TRY
		SELECT C.id,C.idSaleFK,I.name,ST.name as store, C.dateClaim,C.descriptionClaim,C.resolved,C.goodTerms FROM Claim C
		INNER JOIN dbo.Sale S on C.idSaleFK = S.id 
		INNER JOIN dbo.UserInformation I on S.idUserFK = I.identification
		INNER JOIN dbo.Store ST on S.idStoreFK = ST.id 
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