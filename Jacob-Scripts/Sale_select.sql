USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Sale_insert]    Script Date: 21/6/2022 16:17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia, Jacob Guzman
-- Create date: 18/6/2022
-- Description:	Inserts a sale into a database
-- =============================================
ALTER PROCEDURE [dbo].[Sale_select] 
	-- Add the parameters for the stored procedure here
	@userID_IN varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY
	SELECT S.id,S.total,S.[date],S.deliveryCost,S.EmployeeSalesMan_identifiication AS E_SM_Id
	,S.EmployeeDelivery_identifiication AS E_Delivery_Id,C.[name] AS store FROM dbo.Sale AS S
		INNER JOIN Store AS C on S.idStoreFK = C.id
		WHERE S.idUserFK = @userID_IN and S.Paid = 1;
	END TRY

	BEGIN CATCH
	SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END