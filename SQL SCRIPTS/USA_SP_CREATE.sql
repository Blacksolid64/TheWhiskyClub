USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Claim_delete]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Claim_Insert]    Script Date: 6/11/2022 4:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 9/6/2022
-- Description:	Inserts a claim into the database
-- =============================================
CREATE PROCEDURE [dbo].[Claim_Insert]
	-- Add the parameters for the stored procedure here
	@dateClaimIN DATE
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
			@dateClaimIN
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
/****** Object:  StoredProcedure [dbo].[Claim_select_all]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Claim_update]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Inventory_delete]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Inventory_insert]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Inventory_update]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[LogIn]    Script Date: 6/11/2022 4:55:34 PM ******/
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
				SELECT COUNT(*)
				FROM [User] U
				WHERE U.email = @email
					AND U.password = @password
				) = 1 --password and email match?
		BEGIN
			SELECT U.identification as [identification], U.idUserTypeFK as [userType]
			FROM [User] AS U
			WHERE U.email = @email
				AND U.password = @password

			RETURN 0
		END
		ELSE
		BEGIN
			RETURN 1 --No
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
/****** Object:  StoredProcedure [dbo].[Review_delete]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Review_insert]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Review_select]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Review_update]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sale_insert]    Script Date: 6/11/2022 4:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 6/11/2022
-- Description:	Inserts a sale without the details for now
-- =============================================
CREATE PROCEDURE [dbo].[Sale_insert]
	-- Add the parameters for the stored procedure here
	@date_IN DATE
	,@deliveryCost_IN INT
	,@idStoreFK_IN INT
	,@idUserFK_IN INT
	,@EmployeeSalesMan_identification_IN VARCHAR(50)
	,@EmployeeDelivery_identification_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		INSERT INTO [dbo].[Sale] (
			[total]
			,[date]
			,[deliveryCost]
			,[Paid]
			,[idStoreFK]
			,[idUserFK]
			,[EmployeeSalesMan_identifiication]
			,[EmployeeDelivery_identifiication]
			)
		VALUES (
			0
			,@date_IN
			,@deliveryCost_IN
			,0
			,@idStoreFK_IN
			,@idUserFK_IN
			,@EmployeeSalesMan_identification_IN
			,@EmployeeDelivery_identification_IN
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
/****** Object:  StoredProcedure [dbo].[Store_delete]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Store_insert]    Script Date: 6/11/2022 4:55:34 PM ******/
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
	,@MoneyFK_IN INT
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
			,@MoneyFK_IN
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
/****** Object:  StoredProcedure [dbo].[Store_select]    Script Date: 6/11/2022 4:55:34 PM ******/
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
			,M.name
			,M.symbol
		FROM [dbo].[Store] AS S
		INNER JOIN Money AS M on M.id = S.idMoneyFK
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
/****** Object:  StoredProcedure [dbo].[Store_update]    Script Date: 6/11/2022 4:55:34 PM ******/
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
	,@MoneyFK_IN INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		IF ISNULL(@latitude_IN, 1) != 1
			AND ISNULL(@longitude_IN, 1) != 1
		BEGIN
			UPDATE [dbo].[Store]
			SET [name] = ISNULL(NULLIF(@name_IN, ''), [name])
				,[location] = GEOGRAPHY::STPointFromText('POINT(' + @longitude_IN + ' ' + @latitude_IN + ')', 4326) --Not sure if this is okay
				,[email] = ISNULL(NULLIF(@email_IN, ''), [email])
				,[phone] = ISNULL(NULLIF(@phone_IN, ''), [phone])
				,[idMoneyFK] = ISNULL(@MoneyFK_IN, [idMoneyFK])
			WHERE id = @storeid_IN
		END
		ELSE
		BEGIN
			UPDATE [dbo].[Store]
			SET [name] = ISNULL(NULLIF(@name_IN, ''), [name])
				,[email] = ISNULL(NULLIF(@email_IN, ''), [email])
				,[phone] = ISNULL(NULLIF(@phone_IN, ''), [phone])
				,[idMoneyFK] = ISNULL(@MoneyFK_IN, [idMoneyFK])
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
/****** Object:  StoredProcedure [dbo].[User_delete]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[User_insert]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[User_select]    Script Date: 6/11/2022 4:55:34 PM ******/
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
/****** Object:  StoredProcedure [dbo].[User_update]    Script Date: 6/11/2022 4:55:34 PM ******/
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
				,[cash] = CAST(@cash_IN AS MONEY)
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
				,[cash] = CAST(@cash_IN AS MONEY)
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
/****** Object:  StoredProcedure [dbo].[Whiskey_delete]    Script Date: 6/11/2022 4:55:34 PM ******/
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

		IF @@ROWCOUNT > 0 --Last delete was succesfull
		BEGIN
			DELETE
			FROM [dbo].[Features]
			WHERE id = @id_IN

			RETURN 0 --Needs to validate if the last operation was successful
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
/****** Object:  StoredProcedure [dbo].[Whiskey_Insert]    Script Date: 6/11/2022 4:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 10/6/2022
-- Description:	Inserts a new whiskey into the database
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_Insert]
	-- Add the parameters for the stored procedure here
	@Name_IN VARCHAR(50)
	,@Description_IN VARCHAR(200)
	,@WhiskeyType_IN INT
	,@age_IN INT
	,@distilleryFK_IN INT
	,@image_IN VARBINARY(MAX)
	,@edition_IN VARCHAR(50)
	,@Last_id_created INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		INSERT INTO [dbo].[Whiskey] (
			[name]
			,[description]
			,[idWhiskeyTypeFK]
			)
		VALUES (
			@Name_IN
			,@Description_IN
			,@WhiskeyType_IN
			)

		SELECT @Last_id_created = SCOPE_IDENTITY() --Checks last identity value generated

		IF @@ROWCOUNT > 0 --Last insert was succesfull
		BEGIN
			INSERT INTO [dbo].[Features] (
				[id]
				,[age]
				,[distilleryFK]
				,[image]
				,[edition]
				)
			VALUES (
				@Last_id_created
				,@age_IN
				,@distilleryFK_IN
				,@image_IN
				,@edition_IN
				)

			RETURN 0
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
/****** Object:  StoredProcedure [dbo].[Whiskey_Select]    Script Date: 6/11/2022 4:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 9/7/2022
-- Description:	Gets all the whiskies and their respective information
-- =============================================
CREATE PROCEDURE [dbo].[Whiskey_Select]
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
			,WT.name AS [Type]
			,W.description AS [Description]
			,F.age AS [Age in years]
			,F.edition AS [Edition]
			,F.IMAGE AS [Image]
			,D.name AS [Distillery]
		FROM WHISKEY AS W
		INNER JOIN Features AS F ON F.id = W.id
		INNER JOIN WhiskeyType AS WT ON WT.id = W.idWhiskeyTypeFK
		INNER JOIN Distillery AS D ON D.id = F.distilleryFK

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
/****** Object:  StoredProcedure [dbo].[Whiskey_update]    Script Date: 6/11/2022 4:55:34 PM ******/
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
	@whiskey_id_IN INT = 0
	,@name_IN INT = 0
	,@description_IN VARCHAR(200)
	,@idWhiskeyTypeFK_IN INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		UPDATE [dbo].[Whiskey]
		SET [name] = @name_IN
			,[description] = @description_IN
			,[idWhiskeyTypeFK] = @idWhiskeyTypeFK_IN
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
