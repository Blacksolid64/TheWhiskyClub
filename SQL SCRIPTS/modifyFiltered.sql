USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_filtered_select]    Script Date: 16/6/2022 13:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 13/06/2022
-- Description:	Gets the data of all whiskey, filtered by user inputs
-- =============================================
ALTER PROCEDURE [dbo].[Whiskey_filtered_select] 
	-- Add the parameters for the stored procedure here
	@Name_IN VARCHAR(50) = NULL, 
	@Type_IN VARCHAR(50) = NULL,
	@Popularity_IN BIT = NULL,
	@Price_IN BIT = NULL,
	@Distance_IN BIT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY
	IF NULLIF(@Name_IN,'') IS NOT NULL
		BEGIN
		SELECT W.name AS [name]
			,WT.name AS [Type]
			,I.priceByUnit AS [priceByUnit]
			,I.quantity AS [quantity]
		FROM WHISKEY AS W
		INNER JOIN WhiskeyType AS WT on WT.id = W.idWhiskeyTypeFK
		INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
		WHERE W.name LIKE '%'+@Name_IN+'%' --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
		ORDER BY
			(CASE WHEN @Price_IN = 1 THEN I.priceByUnit --Orders the whiskies, given the inputs
			     -- WHEN @Popularity_IN = 1 THEN I.quantity
			END) DESC,

			(CASE WHEN @Price_IN = 0 THEN I.priceByUnit
			     -- WHEN @Popularity_IN = 1 THEN I.quantity
			END) ASC
			RETURN 0
		END
	ELSE
		BEGIN
		SELECT W.name AS [name]
			,WT.name AS [Type]
			,I.priceByUnit AS [priceByUnit]
			,I.quantity AS [quantity]
		FROM WHISKEY AS W
		INNER JOIN WhiskeyType AS WT on WT.id = W.idWhiskeyTypeFK
		INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
		ORDER BY
			(CASE WHEN @Price_IN = 1 THEN I.priceByUnit
			     -- WHEN @Popularity_IN = 1 THEN I.quantity
			END) DESC,

			(CASE WHEN @Price_IN = 0 THEN I.priceByUnit
			     -- WHEN @Popularity_IN = 1 THEN I.quantity
			END) ASC
			RETURN 0
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
