USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Wiskey_get]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Wiskey_get]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_update]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_type_update]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_select_id]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_type_select_id]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_select]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_type_select]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_type_insert]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_type_delete]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_select_id_detailed]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_select_id_detailed]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_select_all]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_select_all]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_insert]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_filtered_select]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_filtered_select]
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Whiskey_delete]
GO
/****** Object:  StoredProcedure [dbo].[User_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[User_update]
GO
/****** Object:  StoredProcedure [dbo].[User_select]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[User_select]
GO
/****** Object:  StoredProcedure [dbo].[User_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[User_insert]
GO
/****** Object:  StoredProcedure [dbo].[User_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[User_delete]
GO
/****** Object:  StoredProcedure [dbo].[Store_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Store_update]
GO
/****** Object:  StoredProcedure [dbo].[Store_select]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Store_select]
GO
/****** Object:  StoredProcedure [dbo].[Store_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Store_insert]
GO
/****** Object:  StoredProcedure [dbo].[Store_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Store_delete]
GO
/****** Object:  StoredProcedure [dbo].[Sale_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Sale_insert]
GO
/****** Object:  StoredProcedure [dbo].[Sale_detail_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Sale_detail_insert]
GO
/****** Object:  StoredProcedure [dbo].[Review_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Review_update]
GO
/****** Object:  StoredProcedure [dbo].[Review_select]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Review_select]
GO
/****** Object:  StoredProcedure [dbo].[Review_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Review_insert]
GO
/****** Object:  StoredProcedure [dbo].[Review_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Review_delete]
GO
/****** Object:  StoredProcedure [dbo].[PresentationWiskey_get]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[PresentationWiskey_get]
GO
/****** Object:  StoredProcedure [dbo].[Presentation_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Presentation_update]
GO
/****** Object:  StoredProcedure [dbo].[Presentation_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Presentation_insert]
GO
/****** Object:  StoredProcedure [dbo].[Presentation_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Presentation_delete]
GO
/****** Object:  StoredProcedure [dbo].[LogIn]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[LogIn]
GO
/****** Object:  StoredProcedure [dbo].[Inventory_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Inventory_update]
GO
/****** Object:  StoredProcedure [dbo].[Inventory_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Inventory_insert]
GO
/****** Object:  StoredProcedure [dbo].[Inventory_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Inventory_delete]
GO
/****** Object:  StoredProcedure [dbo].[Distillery_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Distillery_update]
GO
/****** Object:  StoredProcedure [dbo].[Distillery_select_id]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Distillery_select_id]
GO
/****** Object:  StoredProcedure [dbo].[Distillery_select_all]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Distillery_select_all]
GO
/****** Object:  StoredProcedure [dbo].[Distillery_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Distillery_insert]
GO
/****** Object:  StoredProcedure [dbo].[Distillery_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Distillery_delete]
GO
/****** Object:  StoredProcedure [dbo].[Currency_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Currency_update]
GO
/****** Object:  StoredProcedure [dbo].[Currency_select_id]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Currency_select_id]
GO
/****** Object:  StoredProcedure [dbo].[Currency_select_all]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Currency_select_all]
GO
/****** Object:  StoredProcedure [dbo].[Currency_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Currency_insert]
GO
/****** Object:  StoredProcedure [dbo].[Currency_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Currency_delete]
GO
/****** Object:  StoredProcedure [dbo].[Convert_currency]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Convert_currency]
GO
/****** Object:  StoredProcedure [dbo].[Claim_update]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Claim_update]
GO
/****** Object:  StoredProcedure [dbo].[Claim_select_all]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Claim_select_all]
GO
/****** Object:  StoredProcedure [dbo].[Claim_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Claim_insert]
GO
/****** Object:  StoredProcedure [dbo].[Claim_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Claim_delete]
GO
/****** Object:  StoredProcedure [dbo].[Calculate_shipping_cost]    Script Date: 6/18/2022 8:20:57 PM ******/
DROP PROCEDURE [dbo].[Calculate_shipping_cost]
GO
/****** Object:  StoredProcedure [dbo].[Calculate_shipping_cost]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 18/6/2022
-- Description:	Calculates the shipping cost
-- =============================================
CREATE   PROCEDURE [dbo].[Calculate_shipping_cost] 
	-- Add the parameters for the stored procedure here
	@whisky_id_IN int,
	@user_id_IN varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY
	DECLARE @countryID AS INT, @store_location AS GEOGRAPHY, @user_location AS GEOGRAPHY;
	SELECT @countryID = LEFT(@whisky_id_IN,1);

	SELECT @user_location = location
		FROM UserInformation AS UI
		WHERE UI.identification = @user_id_IN

	IF @countryID = 1
	BEGIN
		SELECT @store_location = location
		FROM WC_USA.dbo.Store AS S
		INNER JOIN WC_USA.dbo.Inventory AS I on S.id = I.idStoreFK
		WHERE I.idWhiskeyFK = @whisky_id_IN;

	END
	
	IF @countryID = 2
	BEGIN
		SELECT @store_location = location
		FROM WC_IR.dbo.Store AS S
		INNER JOIN WC_IR.dbo.Inventory AS I on S.id = I.idStoreFK
		WHERE I.idWhiskeyFK = @whisky_id_IN;
	END

	IF @countryID = 3
	BEGIN
		SELECT @store_location = location
		FROM WC_SC.dbo.Store AS S
		INNER JOIN WC_SC.dbo.Inventory AS I on S.id = I.idStoreFK
		WHERE I.idWhiskeyFK = @whisky_id_IN;
	END

	RETURN 20*@store_location.STDistance(@user_location)
	END TRY

	BEGIN CATCH
	SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Claim_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 9/6/2022
-- Description:	Deletes a claim from the database
-- =============================================
CREATE PROCEDURE [dbo].[Claim_delete]
	-- Add the parameters for the stored procedure here
	@Claim_id_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		DELETE
		FROM [dbo].[Claim]
		WHERE [Claim].id = @Claim_id_IN

		IF @@ROWCOUNT > 0 --Last operation successful?
			RETURN 0
		ELSE
			RETURN 1
	END TRY

	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Error number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Claim_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 9/6/2022
-- Description:	Inserts a claim into the database
-- =============================================
CREATE PROCEDURE [dbo].[Claim_insert]
	-- Add the parameters for the stored procedure here
	@dateClaimIN VARCHAR(50)
	,@descriptionClaimIN VARCHAR(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		INSERT INTO [dbo].[Claim] (
			[dateClaim]
			,[descriptionClaim]
			,[resolved]
			,[goodTerms]
			)
		VALUES (
			CAST(@dateClaimIN as DATE)
			,@descriptionClaimIN
			,0
			,0
			)

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
GO
/****** Object:  StoredProcedure [dbo].[Claim_select_all]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 9/6/2022
-- Description:	Displays all the claims
-- =============================================
CREATE PROCEDURE [dbo].[Claim_select_all]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		SELECT dateClaim AS [Claim date]
			,descriptionClaim AS [Description]
			,resolved AS [Resolved]
			,goodTerms AS [Good Terms]
		FROM Claim

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
GO
/****** Object:  StoredProcedure [dbo].[Claim_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 9/6/2022
-- Description:	Updates the information of a claim from the database
-- =============================================
CREATE PROCEDURE [dbo].[Claim_update]
	-- Add the parameters for the stored procedure here
	@Claim_ID_IN INT = 0
	,@Claim_Date_IN DATE = NULL
	,@DescriptionClaim_IN VARCHAR(200) = NULL
	,@Resolved_IN BIT = NULL
	,@goodTerms_IN BIT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		UPDATE [dbo].[Claim]
		SET [dateClaim] = ISNULL(@Claim_Date_IN, [dateClaim]) --If any of the values are null, inserts the original value into the table
			,[descriptionClaim] = ISNULL(NULLIF(@DescriptionClaim_IN, ''), [descriptionClaim]) --If the varchar is empty, it's seen as a null value
			,[resolved] = ISNULL(@Resolved_IN, [resolved])
			,[goodTerms] = ISNULL(@GoodTerms_IN, [goodTerms])
		WHERE Claim.id = @Claim_ID_IN

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
GO
/****** Object:  StoredProcedure [dbo].[Convert_currency]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 18/6/2022
-- Description:	Converts a currency to another its value in another currency
-- =============================================
CREATE   PROCEDURE [dbo].[Convert_currency] 
	-- Add the parameters for the stored procedure here
	@amount money ,
	@convert_to varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	DECLARE @selected_exchange_rate AS MONEY;
	SELECT @selected_exchange_rate = exchange_rate
	FROM Currency AS C
	WHERE C.[name] = @convert_to;
	
	RETURN @amount*@selected_exchange_rate

	END TRY

	BEGIN CATCH
	SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Currency_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Deletes a currency
-- =============================================
CREATE PROCEDURE [dbo].[Currency_delete]
	-- Add the parameters for the stored procedure here
	@id_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	DELETE [dbo].[Currency]
	WHERE id=@id_IN

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Currency_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Inserts a new currency
-- =============================================
CREATE PROCEDURE [dbo].[Currency_insert] 
	-- Add the parameters for the stored procedure here
	@name_IN VARCHAR(50) = NULL , 
	@exchange_rate_IN INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

    INSERT INTO [dbo].[Currency]
           ([name]
           ,[exchange_rate])
     VALUES
           (@name_IN
           ,CAST(@exchange_rate_IN AS money))

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Currency_select_all]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Selects all the values from the money table
-- =============================================
CREATE PROCEDURE [dbo].[Currency_select_all] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	SELECT *
	FROM Currency

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Currency_select_id]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Selects the values of a currency, given an ID
-- =============================================
CREATE PROCEDURE [dbo].[Currency_select_id]
	-- Add the parameters for the stored procedure here
	@id_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	SELECT *
	FROM Currency
	WHERE id = @id_IN

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Currency_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Updates the values of new currencies
-- =============================================
CREATE PROCEDURE [dbo].[Currency_update]
	-- Add the parameters for the stored procedure here
	@id_IN INT,
	@name_IN VARCHAR(50) = NULL , 
	@exchange_rate_IN INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	UPDATE [dbo].[Currency]
	 SET [name] = ISNULL(NULLIF(@name_IN,''),[name])
      ,[exchange_rate] = ISNULL(CAST(@exchange_rate_IN AS MONEY),[exchange_rate])
	WHERE id=@id_IN

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Distillery_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Deletes a distillery
-- =============================================
CREATE   PROCEDURE [dbo].[Distillery_delete] 
	-- Add the parameters for the stored procedure here
	@id_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	DELETE FROM [dbo].[Distillery]
      WHERE id=@id_IN

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Distillery_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Inserts a new distillery
-- =============================================
CREATE   PROCEDURE [dbo].[Distillery_insert] 
	-- Add the parameters for the stored procedure here
	@name_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	INSERT INTO [dbo].[Distillery]
           ([name])
     VALUES
           (@name_IN)

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Distillery_select_all]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Selects all the tdata of a distillery
-- =============================================
CREATE   PROCEDURE [dbo].[Distillery_select_all] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	SELECT *
	FROM Distillery

	RETURN 0;

	END TRY
	BEGIN CATCH
	SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Distillery_select_id]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Selects all the data of a specific distillery
-- =============================================
CREATE   PROCEDURE [dbo].[Distillery_select_id] 
	-- Add the parameters for the stored procedure here
	@id_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	SELECT *
	FROM Distillery
	WHERE id = @id_IN
	RETURN 0;

	END TRY
	BEGIN CATCH
	SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Distillery_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Updates a distillery
-- =============================================
CREATE  PROCEDURE [dbo].[Distillery_update] 
	-- Add the parameters for the stored procedure here
	@id_IN VARCHAR(50),
	@name_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	UPDATE [dbo].[Distillery]
    SET [name] = @name_IN
	WHERE id=@id_IN


	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Inventory_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Deletes the information of an item from the inventory of the database
-- =============================================
CREATE PROCEDURE [dbo].[Inventory_delete]
	-- Add the parameters for the stored procedure here
	@idStoreFK_IN INT,
	@idWhisky_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		DELETE [dbo].[Inventory]
		WHERE idStoreFK = @idStoreFK_IN AND idWhiskeyFK = @idWhisky_IN

		IF @@ROWCOUNT > 0
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
GO
/****** Object:  StoredProcedure [dbo].[Inventory_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Inserts a new item into the inventory of the database
-- =============================================
CREATE PROCEDURE [dbo].[Inventory_insert]
	-- Add the parameters for the stored procedure here
	@quantity_IN INT
	,@priceByUnit_IN INT
	,@idWhiskeyFK_IN INT
	,@idStoreFK_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		IF (
				SELECT COUNT(*)
				FROM Inventory AS I
				WHERE idWhiskeyFK = @idWhiskeyFK_IN
					AND idStoreFK = @idStoreFK_IN
				) > 0 --Is the whisky already in this store?
		BEGIN
			UPDATE Inventory
			SET quantity = quantity + @quantity_IN --Increases the quantity of that whisky
			WHERE idWhiskeyFK = @idWhiskeyFK_IN
				AND idStoreFK = @idStoreFK_IN

			IF @@ROWCOUNT > 0
				RETURN 0
			ELSE
				RETURN 1
		END
		ELSE
		BEGIN
			INSERT INTO [dbo].[Inventory] (
				[quantity]
				,[priceByUnit]
				,[idWhiskeyFK]
				,[idStoreFK]
				)
			VALUES (
				@quantity_IN
				,@priceByUnit_IN
				,CAST(@idWhiskeyFK_IN AS MONEY)
				,@idStoreFK_IN
				)

			IF @@ROWCOUNT > 0
				RETURN 0
			ELSE
				RETURN 1
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
GO
/****** Object:  StoredProcedure [dbo].[Inventory_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Updates the information of an item from the inventory of the database
-- =============================================
CREATE PROCEDURE [dbo].[Inventory_update]
	-- Add the parameters for the stored procedure here
	@quantity_IN INT = NULL
	,@priceByUnit_IN INT = NULL
	,@idWhiskeyFK_IN INT = NULL
	,@idStoreFK_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		UPDATE [dbo].[Inventory]
		SET [quantity] = ISNULL(@quantity_IN, [quantity])
			,[priceByUnit] = ISNULL(CAST(@priceByUnit_IN AS MONEY), [priceByUnit])
			,[idWhiskeyFK] = ISNULL(@idWhiskeyFK_IN, [idWhiskeyFK])
			--,[idStoreFK] = ISNULL(@idStoreFK_IN, [idStoreFK]) --Cannot change the inventory of a store
		WHERE idStoreFK = @idStoreFK_IN

		IF @@ROWCOUNT > 0
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
GO
/****** Object:  StoredProcedure [dbo].[LogIn]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 9/6/2022
-- Description:	Checks user credentials
-- =============================================
CREATE PROCEDURE [dbo].[LogIn]
	-- Add the parameters for the stored procedure here
	@email VARCHAR(50) = ''
	,@password VARCHAR(50) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		IF (
				--Search USA DB
				SELECT COUNT(*)
				FROM [User] AS U
				WHERE U.email = @email
					AND U.password = @password
				) = 1 --password and email match?
		BEGIN
			SELECT U.identification AS [identification]
				,U.idUserTypeFK AS [userType]
				,S.id AS [storeID]
			FROM [User] AS U, Store AS S
			WHERE U.email = @email
				AND U.password = @password
				AND U.idStoreFK = S.id

			RETURN 0
		END
		ELSE
		BEGIN
			IF (
					--Search IRELAND DB
					SELECT COUNT(*)
					FROM [WC_IR].dbo.[User] AS UIR
					WHERE UIR.email = @email
						AND UIR.password = @password
					) = 1
			BEGIN
				SELECT UIR.identification AS [identification]
					,UIR.idUserTypeFK AS [userType]
					,SIR.id AS [storeID]
				FROM [WC_IR].dbo.[User] AS UIR, [WC_IR].dbo.Store AS SIR
				WHERE UIR.email = @email
					AND UIR.password = @password
					AND UIR.idStoreFK = SIR.id
				RETURN 0
			END
			ELSE
			BEGIN
				IF (
						--Search scotland db
						SELECT COUNT(*)
						FROM [WC_SC].dbo.[User] AS USC
						WHERE USC.email = @email
							AND USC.password = @password
						) = 1
				BEGIN
					SELECT USC.identification AS [identification]
						,USC.idUserTypeFK AS [userType]
						,SSC.id AS [storeID]
					FROM [WC_SC].dbo.[User] AS USC, [WC_SC].dbo.Store AS SSC
					WHERE USC.email = @email
						AND USC.password = @password
						AND USC.idStoreFK = SSC.id

					RETURN 0
				END
				ELSE
					RETURN 1 --Not found
			END
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

GO
/****** Object:  StoredProcedure [dbo].[Presentation_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Deletes a whisky presentation
-- =============================================
CREATE   PROCEDURE [dbo].[Presentation_delete] 
	-- Add the parameters for the stored procedure here
	@id_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	DELETE FROM [dbo].[Presentation]
      WHERE id=@id_IN


	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Presentation_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Inserts a new presentation
-- =============================================
CREATE PROCEDURE [dbo].[Presentation_insert] 
	-- Add the parameters for the stored procedure here
	@name_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	INSERT INTO [dbo].[Presentation]
           ([name])
     VALUES
           (@name_IN)

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Presentation_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Updates a whisky presentation
-- =============================================
CREATE   PROCEDURE [dbo].[Presentation_update]
	-- Add the parameters for the stored procedure here
	@id_IN int,
	@name_IN varchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

   UPDATE [dbo].[Presentation]
   SET [name] = ISNULL(NULLIF(@name_IN,''),[name])
   WHERE id=@id_IN

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[PresentationWiskey_get]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriel Navarro
-- Create date: 17/06/2022
-- Description:	Gets all presentation of whiskys
-- =============================================
create   PROCEDURE [dbo].[PresentationWiskey_get]
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
GO
/****** Object:  StoredProcedure [dbo].[Review_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Deletes the info of an existing review
-- =============================================
CREATE PROCEDURE [dbo].[Review_delete]
	-- Add the parameters for the stored procedure here
	@reviewid_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		DELETE [dbo].[Review]
		WHERE id = @reviewid_IN

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
GO
/****** Object:  StoredProcedure [dbo].[Review_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Inserts a new review into the database
-- =============================================
CREATE PROCEDURE [dbo].[Review_insert]
	-- Add the parameters for the stored procedure here
	@description_IN VARCHAR(200) 
	,@Reviewdate_IN DATE 
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
	BEGIN TRY
		INSERT INTO [dbo].[Review] (
			[description]
			,[ReviewDate]
			,[rating]
			,[idWhiskeyFK]
			,[idUserFK]
			)
		VALUES (
			@description_IN
			,@Reviewdate_IN
			,@rating_IN
			,@WhiskeyFK_IN
			,@UserFK_IN
			)

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
GO
/****** Object:  StoredProcedure [dbo].[Review_select]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Gets the info of an existing review
-- =============================================
CREATE PROCEDURE [dbo].[Review_select]
	-- Add the parameters for the stored procedure here
	@reviewid_IN INT
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
			,R.idUserFK
		FROM Review AS R
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
GO
/****** Object:  StoredProcedure [dbo].[Review_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Updates the info of an existing review
-- =============================================
CREATE PROCEDURE [dbo].[Review_update]
	-- Add the parameters for the stored procedure here
	@reviewid_IN INT
	,@description_IN VARCHAR(200) = NULL
	,@Reviewdate_IN DATE = NULL
	,@rating_IN INT = NULL
	,@WhiskeyFK_IN INT = NULL
	,@UserFK_IN INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		UPDATE [dbo].[Review]
		SET [description] = ISNULL(NULLIF(@description_IN,''),[description])
			,[ReviewDate] = ISNULL(@Reviewdate_IN,[ReviewDate])
			,[rating] = ISNULL(@rating_IN,[rating])
			,[idWhiskeyFK] = ISNULL(@WhiskeyFK_IN,[idWhiskeyFK])
			,[idUserFK] = @UserFK_IN
		WHERE id = @reviewid_IN

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
GO
/****** Object:  StoredProcedure [dbo].[Sale_detail_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia, Jacob Guzmán
-- Create date: 6/18/2022
-- Description:	Inserts a product into a sale
-- =============================================
CREATE   PROCEDURE [dbo].[Sale_detail_insert]
	-- Add the parameters for the stored procedure here
	@quantity_IN int,
	@whiskeyID_IN varchar(50),
	@idUser_IN int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY
	DECLARE @HasCart AS BIT,@Associated_Sale AS INT,@Country_ID AS INT,@Whiskey_price AS MONEY;

	SELECT @HasCart = COUNT(*) --Checks if cart exists
	FROM SALE AS S
	WHERE S.Paid = 0 AND S.idUserFK = @idUser_IN

	IF @HasCart = 1
		BEGIN
		SELECT @Associated_Sale = S.id --Get the sale associated to this client
		FROM SALE AS S
		WHERE S.idUserFK = @idUser_IN

		SELECT @Country_ID = LEFT(@whiskeyID_IN,1);

		IF @Country_ID = 1 -- Usa
			BEGIN
			SELECT @Whiskey_price = I.priceByUnit
			FROM WC_USA.dbo.Inventory I
			EXEC @Whiskey_price = [dbo].Convert_currency @Whiskey_price, 'dollar'
			END
		IF @Country_ID = 2 -- Ireland
			BEGIN
			SELECT @Whiskey_price = I.priceByUnit
			FROM WC_IR.dbo.Inventory I
			EXEC @Whiskey_price = [dbo].Convert_currency @Whiskey_price, 'euro'
			END
		IF @Country_ID = 3 -- Scotland
			BEGIN
			SELECT @Whiskey_price = I.priceByUnit
			FROM WC_SC.dbo.Inventory I
			EXEC @Whiskey_price = [dbo].Convert_currency @Whiskey_price, 'pound sterling'
			END

	    INSERT INTO [dbo].[SaleDetail]
           ([quantity]
           ,[price]
           ,[idWhiskeyFK]
           ,[idSaleFK])
        VALUES
           (@quantity_IN
           ,@Whiskey_price
           ,@whiskeyID_IN
           ,@Associated_Sale)

		END
	
	ELSE
		BEGIN
		SELECT 1
		END

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Sale_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia, Jacob Guzman
-- Create date: 18/6/2022
-- Description:	Inserts a sale into a database
-- =============================================
CREATE   PROCEDURE [dbo].[Sale_insert] 
	-- Add the parameters for the stored procedure here
	@userID_IN int,
	@storeID_IN varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	INSERT INTO [dbo].[Sale]
           ([total]
           ,[date]
           ,[deliveryCost]
           ,[Paid]
           ,[idStoreFK]
           ,[idUserFK]
           ,[EmployeeSalesMan_identifiication]
           ,[EmployeeDelivery_identifiication])
     VALUES
           (0
           ,GETDATE()
           ,0
           ,0
           ,@userID_IN 
           ,@storeID_IN
           ,1 --Needs validation
           ,1)--Needs validation

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Store_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Deletes the information of a given store from the database
-- =============================================
CREATE
	

 PROCEDURE [dbo].[Store_delete]
	-- Add the parameters for the stored procedure here
	@storeid_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		DELETE
		FROM [dbo].[Store]
		WHERE id = @storeid_IN

		IF @@ROWCOUNT > 1 --Last operation successful?
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
GO
/****** Object:  StoredProcedure [dbo].[Store_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Inserts a new store into the database
-- =============================================
CREATE PROCEDURE [dbo].[Store_insert]
	-- Add the parameters for the stored procedure here
	@name_IN VARCHAR(50)
	,@location_IN VARCHAR(max)
	,@email_IN VARCHAR(50)
	,@phone_IN VARCHAR(50)
	,@CurrencyFK_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		INSERT INTO [dbo].[Store] (
			[name]
			,[location]
			,[email]
			,[phone]
			,[idMoneyFK]
			)
		VALUES (
			@name_IN
			,@location_IN
			,@email_IN
			,@phone_IN
			,@CurrencyFK_IN
			)

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
GO
/****** Object:  StoredProcedure [dbo].[Store_select]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Gets every store information
-- =============================================
CREATE PROCEDURE [dbo].[Store_select]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		SELECT S.[name]
			,[location]
			,[email]
			,[phone]
			,C.name as [currency_name]
			,C.exchange_rate
		FROM [dbo].[Store] AS S
		INNER JOIN Currency AS C on C.id = S.currencyFK
	END TRY

	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Store_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Updates the information of a given store from the database
-- =============================================
CREATE PROCEDURE [dbo].[Store_update]
	-- Add the parameters for the stored procedure here
	@storeid_IN INT
	,@name_IN VARCHAR(50) = NULL
	,@latitude_IN VARCHAR(max) = NULL
	,@longitude_IN VARCHAR(max) = NULL
	,@email_IN VARCHAR(50) = NULL
	,@phone_IN VARCHAR(50) = NULL
	,@currencyFK_IN INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		IF NULLIF(@latitude_IN,'') IS NOT NULL
			AND NULLIF(@longitude_IN,'') IS NOT NULL
		BEGIN
			UPDATE [dbo].[Store]
			SET [name] = ISNULL(NULLIF(@name_IN, ''), [name])
				,[location] = GEOGRAPHY::STPointFromText('POINT(' + CAST(@longitude_IN AS VARCHAR(20)) + ' ' + CAST(@latitude_IN AS VARCHAR(20)) + ')', 4326) --Not sure if this is okay
				,[email] = ISNULL(NULLIF(@email_IN, ''), [email])
				,[phone] = ISNULL(NULLIF(@phone_IN, ''), [phone])
				,[currencyFK] = ISNULL(@currencyFK_IN, [currencyFK])
			WHERE id = @storeid_IN
		END
		ELSE
		BEGIN
			UPDATE [dbo].[Store]
			SET [name] = ISNULL(NULLIF(@name_IN, ''), [name])
				,[email] = ISNULL(NULLIF(@email_IN, ''), [email])
				,[phone] = ISNULL(NULLIF(@phone_IN, ''), [phone])
				,[currencyFK] = ISNULL(@currencyFK_IN, [currencyFK])
			WHERE id = @storeid_IN
		END

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
GO
/****** Object:  StoredProcedure [dbo].[User_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Deletes the information of an user
-- =============================================
CREATE PROCEDURE [dbo].[User_delete]
	-- Add the parameters for the stored procedure here
	@userid_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		DELETE [dbo].[User]
		WHERE identification = @userid_IN

		IF @@ROWCOUNT > 0 -- Any operation made?
		BEGIN
			DELETE [dbo].UserInformation
			WHERE identification = @userid_IN

			RETURN 0 --Validation
		END
		ELSE
		BEGIN
			RETURN 1
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
GO
/****** Object:  StoredProcedure [dbo].[User_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Inserts a new user into the database, along with their information
-- =============================================
CREATE PROCEDURE [dbo].[User_insert]
	-- Add the parameters for the stored procedure here
	@identification_IN VARCHAR(50)
	,@email_IN VARCHAR(50)
	,@password_IN VARCHAR(50)
	,@UserType_IN INT
	,@Subscription_IN INT
	,@Store_IN INT
	,@name_IN VARCHAR(50)
	,@surname_1_IN VARCHAR(50)
	,@surname_2_IN VARCHAR(50)
	,@age_IN INT
	,@latitude_IN VARCHAR(MAX)
	,@longitude_IN VARCHAR(MAX)
	,@phone_IN VARCHAR(50)
	,@cash_IN VARCHAR(50) --Needs to be casted to money
	,@Moneyfk_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	DECLARE @Last_id_created INT

	BEGIN TRY
		INSERT INTO [dbo].[User] ([identification]
			,[email]
			,[password]
			,[idUserTypeFK]
			,[idSubscriptionFK]
			,[idStoreFK]
			)
		VALUES (@identification_IN
			,@email_IN
			,@password_IN
			,@UserType_IN
			,@Subscription_IN
			,@Store_IN
			)

		IF @@ROWCOUNT > 0 --Last operation successful?
		BEGIN
			INSERT INTO [dbo].[UserInformation] ([identification]
				,[name]
				,[surname_1]
				,[surname_2]
				,[age]
				,[location]
				,[phone]
				,[cash]
				,[idMoneyFK]
				)
			VALUES (@identification_IN
				,@name_IN
				,@surname_1_IN
				,@surname_2_IN
				,@age_IN
				,GEOGRAPHY::STPointFromText('POINT(' + @longitude_IN + ' ' + @latitude_IN + ')', 4326)
				,@phone_IN
				,@cash_IN
				,@Moneyfk_IN
				)

			RETURN 0 --Needs validation for last inserted value
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
GO
/****** Object:  StoredProcedure [dbo].[User_select]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Gets the information of all users
-- =============================================
CREATE PROCEDURE [dbo].[User_select]
	-- Add the parameters for the stored procedure here
	@userid_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		SELECT UI.name
			,UI.surname_1
			,UI.surname_2
			,U.email
			,U.password
			,U.idSubscriptionFK
			,U.idUserTypeFK
			,u.idStoreFK
			,UI.location
			,UI.phone
			,UI.age
			,UI.identification
		FROM [dbo].[User] AS U
		INNER JOIN UserInformation AS UI ON UI.identification = U.identification
		WHERE U.identification=@userid_IN
		
	END TRY

	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[User_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Updates the information of an user
-- =============================================
CREATE PROCEDURE [dbo].[User_update]
	-- Add the parameters for the stored procedure here
	@identification_IN VARCHAR(50) = NULL
	,@email_IN VARCHAR(50) = NULL
	,@password_IN VARCHAR(50) = NULL
	,@idUsertype_IN INT = NULL
	,@idSubscriptionFK_IN INT = NULL
	,@idStoreFK_IN INT = NULL
	,@name_IN VARCHAR(50) = NULL
	,@surname_1_IN VARCHAR(50) = NULL
	,@surname_2_IN VARCHAR(50) = NULL
	,@age_IN INT = NULL
	,@latitude_IN VARCHAR(MAX) = NULL
	,@longitude_IN VARCHAR(MAX) = NULL
	,@phone_IN VARCHAR(50) = NULL
	,@cash_IN VARCHAR(50) = NULL --Needs to be casted to money
	,@Moneyfk_IN INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		UPDATE [dbo].[User]
		SET [email] = ISNULL(NULLIF(@email_IN, ''), [email])
			,[password] = ISNULL(NULLIF(@password_IN, ''), [password])
			,[idUserTypeFK] = ISNULL(@idUsertype_IN, [idUserTypeFK])
			,[idSubscriptionFK] = ISNULL(@idSubscriptionFK_IN, [idSubscriptionFK])
			,[idStoreFK] = ISNULL(@idStoreFK_IN, [idStoreFK])
		WHERE identification = @identification_IN

		--Non null values for latitude,longitude and cash
		IF ISNULL(NULLIF(@latitude_IN, ''), 1) != 1
			AND ISNULL(NULLIF(@longitude_IN, ''), 1) != 1
			AND ISNULL(NULLIF(@cash_IN, ''), 1) != 1
		BEGIN
			UPDATE [dbo].[UserInformation]
			SET [name] = ISNULL(NULLIF(@name_IN, ''), [name])
				,[surname_1] = ISNULL(NULLIF(@surname_1_IN, ''), [surname_1])
				,[surname_2] = ISNULL(NULLIF(@surname_2_IN, ''), [surname_2])
				,[identification] = ISNULL(NULLIF(@identification_IN, ''), [identification])
				,[age] = ISNULL(@age_IN, [age])
				,[location] = GEOGRAPHY::STPointFromText('POINT(' + @longitude_IN + ' ' + @latitude_IN + ')', 4326)
				,[phone] = ISNULL(NULLIF(@phone_IN, ''), [phone])
				,[cash] = ISNULL(CAST(@cash_IN AS MONEY), [cash])
				,[idMoneyFK] = ISNULL(@moneyfk_IN, [idMoneyFK])
			WHERE identification = @identification_IN
		END
				--Null value for cash, non null for latitude and longitude
		ELSE IF ISNULL(NULLIF(@latitude_IN, ''), 1) != 1
			AND ISNULL(NULLIF(@longitude_IN, ''), 1) != 1
			AND ISNULL(NULLIF(@cash_IN, ''), 1) = 1
		BEGIN
			UPDATE [dbo].[UserInformation]
			SET [name] = ISNULL(NULLIF(@name_IN, ''), [name])
				,[surname_1] = ISNULL(NULLIF(@surname_1_IN, ''), [surname_1])
				,[surname_2] = ISNULL(NULLIF(@surname_2_IN, ''), [surname_2])
				,[identification] = ISNULL(NULLIF(@identification_IN, ''), [identification])
				,[age] = ISNULL(@age_IN, [age])
				,[location] = GEOGRAPHY::STPointFromText('POINT(' + @longitude_IN + ' ' + @latitude_IN + ')', 4326)
				,[phone] = ISNULL(NULLIF(@phone_IN, ''), [phone])
				,[idMoneyFK] = ISNULL(@moneyfk_IN, [idMoneyFK])
			WHERE identification = @identification_IN
		END
				--Null values for latitude or longitude and non null value for cash
		ELSE IF ISNULL(NULLIF(@latitude_IN, ''), 1) = 1
			OR ISNULL(NULLIF(@longitude_IN, ''), 1) = 1
			AND ISNULL(NULLIF(@cash_IN, ''), 1) != 1
		BEGIN
			UPDATE [dbo].[UserInformation]
			SET [name] = ISNULL(NULLIF(@name_IN, ''), [name])
				,[surname_1] = ISNULL(NULLIF(@surname_1_IN, ''), [surname_1])
				,[surname_2] = ISNULL(NULLIF(@surname_2_IN, ''), [surname_2])
				,[identification] = ISNULL(NULLIF(@identification_IN, ''), [identification])
				,[age] = ISNULL(@age_IN, [age])
				,[location] = GEOGRAPHY::STPointFromText('POINT(' + @longitude_IN + ' ' + @latitude_IN + ')', 4326)
				,[phone] = ISNULL(NULLIF(@phone_IN, ''), [phone])
				,[cash] = ISNULL(CAST(@cash_IN AS MONEY), [cash])
				,[idMoneyFK] = ISNULL(@moneyfk_IN, [idMoneyFK])
			WHERE identification = @identification_IN
		END
				--Null values for latitude,longitude and cash
		ELSE
		BEGIN
			UPDATE [dbo].[UserInformation]
			SET [name] = ISNULL(NULLIF(@name_IN, ''), [name])
				,[surname_1] = ISNULL(NULLIF(@surname_1_IN, ''), [surname_1])
				,[surname_2] = ISNULL(NULLIF(@surname_2_IN, ''), [surname_2])
				,[identification] = ISNULL(NULLIF(@identification_IN, ''), [identification])
				,[age] = ISNULL(@age_IN, [age])
				,[phone] = ISNULL(NULLIF(@phone_IN, ''), [phone])
				,[idMoneyFK] = ISNULL(@moneyfk_IN, [idMoneyFK])
			WHERE identification = @identification_IN
		END

		IF @@ROWCOUNT > 0 -- Any operation made?
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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Deletes a whiskey from the database
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_delete]
	-- Add the parameters for the stored procedure here
	@id_IN INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		DELETE
		FROM [dbo].[Whiskey]
		WHERE id = @id_IN

		IF @@ROWCOUNT > 0 --Last delete was succesful
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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_filtered_select]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 13/06/2022
-- Description:	Gets the data of all whiskey, filtered by user inputs
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_filtered_select]
	-- Add the parameters for the stored procedure here
	@Name_IN VARCHAR(50) = NULL
	,@Type_IN VARCHAR(50) = NULL
	,@Popularity_IN BIT = NULL
	,@Price_IN BIT = NULL
	,@Distance_IN BIT = NULL
	,@User_ID VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	IF NULLIF(@User_ID,'') IS NOT NULL
	BEGIN
		DECLARE @User_location AS GEOGRAPHY;
		SELECT @USer_location = UI.location
					FROM UserInformation AS UI
					WHERE UI.identification = @User_ID
		IF @Popularity_IN IS NOT NULL --Sort by popularity if not null
		BEGIN
			IF NULLIF(@Name_IN, '') IS NOT NULL
				AND NULLIF(@Type_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,SUM(SD.quantity) AS [sales]
					,@User_location.STDistance(S.location) AS [distance]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN SaleDetail AS SD ON SD.idWhiskeyFK = W.id
				INNER JOIN Store AS S ON S.id = I.idStoreFK
				WHERE W.name LIKE '%' + @Name_IN + '%'
					AND @Type_IN = WT.name --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				GROUP BY W.name
					,WT.name
					,I.priceByUnit
					,I.quantity
					,@User_location.STDistance(S.location)
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC
					,(
						CASE 
							WHEN @Popularity_IN = 0
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Popularity_IN = 1
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) ASC
					,
					(
						CASE WHEN @Distance_IN = 0 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
						END) DESC,
						(CASE WHEN @Distance_IN = 1 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
						END) ASC
				RETURN 0
			END
			ELSE IF NULLIF(@Name_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,SUM(SD.quantity) AS [sales]
					,@User_location.STDistance(S.location)  AS [distance]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN SaleDetail AS SD ON SD.idWhiskeyFK = W.id
				INNER JOIN Store AS S ON S.id = I.idStoreFK
				WHERE W.name LIKE '%' + @Name_IN + '%' --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				GROUP BY W.name
					,WT.name
					,I.priceByUnit
					,I.quantity
					,@User_location.STDistance(S.location)
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC
					,(
						CASE 
							WHEN @Popularity_IN = 0
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Popularity_IN = 1
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) ASC,

				(CASE WHEN @Distance_IN = 0 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) DESC,
				(CASE WHEN @Distance_IN = 1 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) ASC
				RETURN 0
			END
			ELSE IF NULLIF(@Type_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,SUM(SD.quantity) AS [sales]
					,@User_location.STDistance(S.location) AS [distance]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN SaleDetail AS SD ON SD.idWhiskeyFK = W.id
				INNER JOIN Store AS S ON S.id = I.idStoreFK
				WHERE WT.name = @Type_IN --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				GROUP BY W.name
					,WT.name
					,I.priceByUnit
					,I.quantity
					,@User_location.STDistance(S.location)
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC
					,(
						CASE 
							WHEN @Popularity_IN = 0
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Popularity_IN = 1
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) ASC,

				(CASE WHEN @Distance_IN = 0 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) DESC,
				(CASE WHEN @Distance_IN = 1 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) ASC
				RETURN 0
			END
			ELSE
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,SUM(SD.quantity) AS [sales]
					,@User_location.STDistance(S.location) AS [distance]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN SaleDetail AS SD ON SD.idWhiskeyFK = W.id
				INNER JOIN Store AS S ON S.id = I.idStoreFK
				GROUP BY W.name
					,WT.name
					,I.priceByUnit
					,I.quantity
					,@User_location.STDistance(S.location)
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC
					,(
						CASE 
							WHEN @Popularity_IN = 0
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Popularity_IN = 1
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) ASC,

				(CASE WHEN @Distance_IN = 0 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) DESC,
				(CASE WHEN @Distance_IN = 1 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) ASC
				RETURN 0
			END
		END
		
		ELSE
		BEGIN
			IF NULLIF(@Name_IN, '') IS NOT NULL
				AND NULLIF(@Type_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,@User_location.STDistance(S.location) AS [distance]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN Store AS S ON S.id = I.idStoreFK
				WHERE W.name LIKE '%' + @Name_IN + '%'
					AND @Type_IN = WT.name --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC,

				(CASE WHEN @Distance_IN = 0 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) DESC,
				(CASE WHEN @Distance_IN = 1 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) ASC
				RETURN 0
			END
			ELSE IF NULLIF(@Name_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,@User_location.STDistance(S.location) AS [distance]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN Store AS S ON S.id = I.idStoreFK
				WHERE W.name LIKE '%' + @Name_IN + '%' --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC,

				(CASE WHEN @Distance_IN = 0 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) DESC,
				(CASE WHEN @Distance_IN = 1 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) ASC
				RETURN 0
			END
			ELSE IF NULLIF(@Type_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,@User_location.STDistance(S.location) AS [distance]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN Store AS S ON S.id = I.idStoreFK
				WHERE WT.name = @Type_IN --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC,

				(CASE WHEN @Distance_IN = 0 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) DESC,
				(CASE WHEN @Distance_IN = 1 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) ASC
				RETURN 0
			END
			ELSE
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,@User_location.STDistance(S.location) AS [distance]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN Store AS S ON S.id = I.idStoreFK
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC,

				(CASE WHEN @Distance_IN = 0 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) DESC,
				(CASE WHEN @Distance_IN = 1 THEN @User_location.STDistance(S.location) --Orders the whiskies, given the inputs
				END) ASC
				RETURN 0
			END
		END
	END

	ELSE
	BEGIN
	IF @Popularity_IN IS NOT NULL --Sort by popularity?
		BEGIN
			IF NULLIF(@Name_IN, '') IS NOT NULL
				AND NULLIF(@Type_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,SUM(SD.quantity) AS [sales]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN SaleDetail AS SD ON SD.idWhiskeyFK = W.id
				WHERE W.name LIKE '%' + @Name_IN + '%'
					AND @Type_IN = WT.name --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				GROUP BY W.name
					,WT.name
					,I.priceByUnit
					,I.quantity
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC
					,(
						CASE 
							WHEN @Popularity_IN = 0
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Popularity_IN = 1
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) ASC

				--(CASE WHEN @Distance_IN = 0 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) DESC,
				--(CASE WHEN @Distance_IN = 1 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) ASC
				RETURN 0
			END
			ELSE IF NULLIF(@Name_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,SUM(SD.quantity) AS [sales]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN SaleDetail AS SD ON SD.idWhiskeyFK = W.id
				WHERE W.name LIKE '%' + @Name_IN + '%' --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				GROUP BY W.name
					,WT.name
					,I.priceByUnit
					,I.quantity
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC
					,(
						CASE 
							WHEN @Popularity_IN = 0
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Popularity_IN = 1
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) ASC

				--(CASE WHEN @Distance_IN = 0 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) DESC,
				--(CASE WHEN @Distance_IN = 1 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) ASC
				RETURN 0
			END
			ELSE IF NULLIF(@Type_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,SUM(SD.quantity) AS [sales]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN SaleDetail AS SD ON SD.idWhiskeyFK = W.id
				WHERE WT.name = @Type_IN --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				GROUP BY W.name
					,WT.name
					,I.priceByUnit
					,I.quantity
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC
					,(
						CASE 
							WHEN @Popularity_IN = 0
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Popularity_IN = 1
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) ASC

				--(CASE WHEN @Distance_IN = 0 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) DESC,
				--(CASE WHEN @Distance_IN = 1 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) ASC
				RETURN 0
			END
			ELSE
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
					,SUM(SD.quantity) AS [sales]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				INNER JOIN SaleDetail AS SD ON SD.idWhiskeyFK = W.id
				GROUP BY W.name
					,WT.name
					,I.priceByUnit
					,I.quantity
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC
					,(
						CASE 
							WHEN @Popularity_IN = 0
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Popularity_IN = 1
								THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
							END
						) ASC

				--(CASE WHEN @Distance_IN = 0 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) DESC,
				--(CASE WHEN @Distance_IN = 1 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) ASC
				RETURN 0
			END
		END
		ELSE
		BEGIN
			IF NULLIF(@Name_IN, '') IS NOT NULL
				AND NULLIF(@Type_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				WHERE W.name LIKE '%' + @Name_IN + '%'
					AND @Type_IN = WT.name --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC

				--(CASE WHEN @Distance_IN = 0 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) DESC,
				--(CASE WHEN @Distance_IN = 1 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) ASC
				RETURN 0
			END
			ELSE IF NULLIF(@Name_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				WHERE W.name LIKE '%' + @Name_IN + '%' --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC

				--(CASE WHEN @Distance_IN = 0 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) DESC,
				--(CASE WHEN @Distance_IN = 1 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) ASC
				RETURN 0
			END
			ELSE IF NULLIF(@Type_IN, '') IS NOT NULL
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				WHERE WT.name = @Type_IN --Looks for values that have 1 or more characters after @name_in eg: T% returns all whiskys that start with T
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC

				--(CASE WHEN @Distance_IN = 0 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) DESC,
				--(CASE WHEN @Distance_IN = 1 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) ASC
				RETURN 0
			END
			ELSE
			BEGIN
				SELECT W.name AS [name]
					,WT.name AS Type
					,I.priceByUnit AS priceByUnit
					,I.quantity AS [quantity]
				FROM WHISKEY AS W
				INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
				INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
				ORDER BY (
						CASE 
							WHEN @Price_IN = 1
								THEN I.priceByUnit --Orders the whiskies, given the inputs
							END
						) DESC
					,(
						CASE 
							WHEN @Price_IN = 0
								THEN I.priceByUnit
							END
						) ASC

				--(CASE WHEN @Distance_IN = 0 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) DESC,
				--(CASE WHEN @Distance_IN = 1 THEN SUM(SD.quantity) --Orders the whiskies, given the inputs
				--END) ASC
				RETURN 0
			END
		END
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

GO
/****** Object:  StoredProcedure [dbo].[Whiskey_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 10/6/2022
-- Description:	Inserts a new whiskey into the database
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_insert]
	-- Add the parameters for the stored procedure here
	@Name_IN VARCHAR(50)
	,@Description_IN VARCHAR(200)
	,@WhiskeyType_IN INT
	,@Age_IN VARCHAR(50)
	,@Distillery_IN INT
	,@Image_IN VARCHAR(50)
	,@Presentation_IN INT
	,@Special_IN BIT = 0
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
		SELECT @Name_IN AS Name,@Image_IN AS Image,@Distillery_IN AS Distillery,@Presentation_IN AS Presentation
		FOR JSON PATH, ROOT('Features')) --Generates a new json value

		INSERT INTO [dbo].[Whiskey] (
			[name]
			,[description]
			,[idWhiskeyTypeFK]
			,[idDistilleryFK]
			,[idPresentationFK]
			,[features_json]
			,[special]
			)
		VALUES (
			@Name_IN
			,@Description_IN
			,@WhiskeyType_IN
			,@Distillery_IN
			,@Presentation_IN
			,@New_Features
			,0
			)

		IF @@ROWCOUNT > 0
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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_select_all]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 9/7/2022
-- Description:	Gets all the whiskies and their respective information
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_select_all]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		SELECT W.name AS [Name]
			,W.description AS [Description]
			,WT.name AS [Whiskey Type]
			,I.priceByUnit AS [Price]
			,I.quantity AS [Available]
			,'USA' AS [Database]
		FROM WC_USA.dbo.Whiskey AS W
		INNER JOIN WhiskeyType AS WT on WT.id = W.idWhiskeyTypeFK
		INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
		UNION ALL
		SELECT WIR.name AS [Name]
			,WIR.description AS [Description]
			,WT.name AS [Whiskey Type]
			,I.priceByUnit AS [Price]
			,I.quantity AS [Available]
			,'Ireland' AS [Database]
		FROM WC_IR.dbo.Whiskey AS WIR
		INNER JOIN WhiskeyType AS WT on WT.id = WIR.idWhiskeyTypeFK
		INNER JOIN Inventory AS I ON I.idWhiskeyFK = WIR.id
		UNION ALL
		SELECT WSC.name AS [Name]
			,WSC.description AS [Description]
			,WT.name AS [Whiskey Type]
			,I.priceByUnit AS [Price]
			,I.quantity AS [Available]
			,'Scotland' AS [Database]
		FROM WC_SC.dbo.Whiskey AS WSC
		INNER JOIN WhiskeyType AS WT on WT.id = WSC.idWhiskeyTypeFK
		INNER JOIN Inventory AS I ON I.idWhiskeyFK = WSC.id

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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_select_id_detailed]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 11/6/2022
-- Description:	Gets the detailed information of a single whisky
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_select_id_detailed]
	-- Add the parameters for the stored procedure here
	@whiskey_id_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		
		SELECT W.name AS [name]
			,W.id AS [whiskey_id]
			,W.description AS [description]
			,WT.id AS [whiskey_type_id]
			,WT.name AS [Type]
			,D.id AS [distillery_id]
			,D.name AS [Distillery]
			,P.id AS [presentation_id]
			,P.name AS [Presentation]
			,JSON_VALUE(W.features_json,'$.Features[0].Age') AS [Age_in_years]
			--,JSON_VALUE(W.features_json,'$.Features[0].Distillery') AS [Distillery]
			,JSON_VALUE(W.features_json,'$.Features[0].Image') AS [Image]
			--,JSON_VALUE(W.features_json,'$.Features[0].Presentation') AS [Presentation]
			,I.priceByUnit AS [priceByUnit]
			,I.quantity AS [quantity]
			,I.idStoreFK AS [Store_id]
			,S.name AS [Store]
		FROM WHISKEY AS W
		INNER JOIN WhiskeyType AS WT on WT.id = W.idWhiskeyTypeFK
		INNER JOIN Inventory AS I ON I.idWhiskeyFK = W.id
		INNER JOIN Store AS S ON I.idStoreFK = S.id
		INNER JOIN Distillery AS D ON D.id = W.idDistilleryFK
		INNER JOIN Presentation AS P ON P.id = W.idPresentationFK
		WHERE W.id = @whiskey_id_IN
	END TRY

	BEGIN CATCH
		SELECT ERROR_NUMBER() AS [Error Number]
			,ERROR_PROCEDURE() AS [Procedure]
			,ERROR_LINE() AS [Line]
			,ERROR_MESSAGE() AS [Message];

		RETURN - 1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_delete]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Deletes a whisky type
-- =============================================
CREATE   PROCEDURE [dbo].[Whiskey_type_delete] 
	-- Add the parameters for the stored procedure here
	@id_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	DELETE FROM [dbo].[WhiskeyType]
      WHERE id=@id_IN


	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_insert]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Inserts a new whiskey type
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_type_insert] 
	-- Add the parameters for the stored procedure here
	@name_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	INSERT INTO [dbo].[WhiskeyType]
           ([name])
     VALUES
           (@name_IN)

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_select]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 16/6/2022
-- Description:	Obtains all the whiskey types available
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_type_select] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	SELECT *
	FROM WhiskeyType;

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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_select_id]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 16/6/2022
-- Description:	Obtains all the information of a single whiskey type
-- =============================================
CREate PROCEDURE [dbo].[Whiskey_type_select_id] 
	-- Add the parameters for the stored procedure here
	@id_IN INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

	SELECT *
	FROM WhiskeyType
	WHERE id = @id_IN;

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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_type_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 17/06/2022
-- Description:	Updates a whisky type
-- =============================================
CREATE   PROCEDURE [dbo].[Whiskey_type_update]
	-- Add the parameters for the stored procedure here
	@id_IN int,
	@name_IN varchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
    -- Insert statements for procedure here
	BEGIN TRY

   UPDATE [dbo].[WhiskeyType]
   SET [name] = ISNULL(NULLIF(@name_IN,''),[name])
   WHERE id=@id_IN

	IF @@ROWCOUNT > 0 
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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_update]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Updates the general information of a Whiskey
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_update]
	-- Add the parameters for the stored procedure here
	@whiskey_id_IN INT
	,@name_IN VARCHAR(50) = NULL
	,@description_IN VARCHAR(200) = NULL
	,@idWhiskeyTypeFK_IN INT = NULL
	,@Age_IN INT = NULL
	,@Distillery_IN INT = NULL
	,@Image_IN VARCHAR(50) = NULL
	,@Presentation_IN INT = NULL
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
GO
/****** Object:  StoredProcedure [dbo].[Wiskey_get]    Script Date: 6/18/2022 8:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 14/02/2022
-- Description:	Gets all the data from all whiskeys
-- =============================================
CREATE PROCEDURE [dbo].[Wiskey_get]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	SELECT W.id AS [Whiskey_id]
		,W.name
		,W.description
		,JSON_VALUE(W.features_json,'$.Features[0].Age') AS [Age_in_years]
		,JSON_VALUE(W.features_json,'$.Features[0].Distillery') AS [Distillery]
		,JSON_VALUE(W.features_json,'$.Features[0].Image') AS [Image]
		,JSON_VALUE(W.features_json,'$.Features[0].Presentation') AS [Presentation]
		,WT.name AS [Type]
		,I.quantity
		,I.priceByUnit
		,I.idStoreFK AS [Store_id]
		,S.name AS [Store]
		,'USA' AS [Database]
	FROM WC_USA.dbo.Inventory AS I
	INNER JOIN Whiskey AS W ON I.idWhiskeyFK = W.id
	INNER JOIN WhiskeyType AS WT ON W.idWhiskeyTypeFK = WT.id
	INNER JOIN Store AS S ON I.idStoreFK = S.id
	UNION ALL
	SELECT WSC_W.id AS [Whiskey_id]
		,WSC_W.name
		,WSC_W.description
		,JSON_VALUE(WSC_W.features_json,'$.Features[0].Age') AS [Age_in_years]
		,JSON_VALUE(WSC_W.features_json,'$.Features[0].Distillery') AS [Distillery]
		,JSON_VALUE(WSC_W.features_json,'$.Features[0].Image') AS [Image]
		,JSON_VALUE(WSC_W.features_json,'$.Features[0].Presentation') AS [Presentation]
		,WSC_T.name AS [Type]
		,WSC_INV.quantity
		,WSC_INV.priceByUnit
		,WSC_INV.idStoreFK AS [Store_id]
		,WSC_S.name AS [Store]
		,'Scotland' AS [Database]
	FROM WC_SC.dbo.Inventory AS WSC_INV
	INNER JOIN WC_SC.dbo.Whiskey AS WSC_W ON WSC_INV.idWhiskeyFK = WSC_W.id
	INNER JOIN WC_SC.dbo.WhiskeyType AS WSC_T ON WSC_W.idWhiskeyTypeFK = WSC_T.id
	INNER JOIN WC_SC.dbo.Store AS WSC_S ON WSC_INV.idStoreFK = WSC_S.id
	UNION ALL
	SELECT WIR_W.id AS [Whiskey_id]
		,WIR_W.name
		,WIR_W.description
		,JSON_VALUE(WIR_W.features_json,'$.Features[0].Age') AS [Age_in_years]
		,JSON_VALUE(WIR_W.features_json,'$.Features[0].Distillery') AS [Distillery]
		,JSON_VALUE(WIR_W.features_json,'$.Features[0].Image') AS [Image]
		,JSON_VALUE(WIR_W.features_json,'$.Features[0].Presentation') AS [Presentation]
		,WIR_WT.name AS [Type]
		,WIR_INV.quantity
		,WIR_INV.priceByUnit
		,WIR_INV.idStoreFK AS [Store_id]
		,WIR_S.name AS [Store]
		,'Ireland' AS [Database]
	FROM WC_IR.dbo.Inventory AS WIR_INV
	INNER JOIN WC_IR.dbo.Whiskey AS WIR_W ON WIR_INV.idWhiskeyFK = WIR_W.id
	INNER JOIN WC_IR.dbo.WhiskeyType AS WIR_WT ON WIR_W.idWhiskeyTypeFK = WIR_WT.id
	INNER JOIN WC_IR.dbo.Store AS WIR_S ON WIR_INV.idStoreFK = WIR_S.id
	
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
GO
