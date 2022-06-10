USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[Claim_delete]    Script Date: 6/10/2022 1:22:12 AM ******/
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
	@Claim_id_IN INT = 0
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
/****** Object:  StoredProcedure [dbo].[Claim_Insert]    Script Date: 6/10/2022 1:22:12 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Claim_select_all]    Script Date: 6/10/2022 1:22:12 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Claim_update]    Script Date: 6/10/2022 1:22:12 AM ******/
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
/****** Object:  StoredProcedure [dbo].[LogIn]    Script Date: 6/10/2022 1:22:12 AM ******/
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
			RETURN 0 --Yes
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

		RETURN -1
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_delete]    Script Date: 6/10/2022 1:22:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Deletes a whiskey from the database
-- =============================================
CREATE   PROCEDURE [dbo].[Whiskey_delete]
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
GO
/****** Object:  StoredProcedure [dbo].[Whiskey_Insert]    Script Date: 6/10/2022 1:22:12 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Whiskey_Select]    Script Date: 6/10/2022 1:22:12 AM ******/
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
		FROM WHISKEY W
		INNER JOIN Features F ON F.id = W.id
		INNER JOIN WhiskeyType WT ON WT.id = W.idWhiskeyTypeFK
		INNER JOIN Distillery D ON D.id = F.distilleryFK

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
/****** Object:  StoredProcedure [dbo].[Whiskey_update]    Script Date: 6/10/2022 1:22:12 AM ******/
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
