USE [WC_USA]
GO
/****** Object:  StoredProcedure [dbo].[User_insert]    Script Date: 6/20/2022 2:04:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia Lopez
-- Create date: 10/6/2022
-- Description:	Inserts a new user into the database, along with their information
-- =============================================
ALTER PROCEDURE [dbo].[User_insert]
	-- Add the parameters for the stored procedure here
	@identification_IN VARCHAR(50)
	,@email_IN VARCHAR(50)
	,@password_IN VARCHAR(50)
	,@Store_IN VARCHAR(50)
	,@name_IN VARCHAR(50)
	,@surname_1_IN VARCHAR(50)
	,@surname_2_IN VARCHAR(50)
	,@age_IN INT--
	,@latitude_IN VARCHAR(MAX)
	,@longitude_IN VARCHAR(MAX)
	,@phone_IN VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	DECLARE @Last_id_created INT
	DECLARE @Currencyfk_IN INT

	IF(@Store_IN = 1)
	BEGIN
		set @Currencyfk_IN = 1
	END
	IF(@Store_IN = 2)
	BEGIN
		set @Currencyfk_IN = 2
	END
	IF(@Store_IN = 3)
	BEGIN
		set @Currencyfk_IN = 3
	END

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
			,3
			,NULL
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
				,[currencyFK]
				)
			VALUES (@identification_IN
				,@name_IN
				,@surname_1_IN
				,@surname_2_IN
				,@age_IN
				,GEOGRAPHY::STPointFromText('POINT(' + @longitude_IN + ' ' + @latitude_IN + ')', 4326)
				,@phone_IN
				,100000
				,@Currencyfk_IN
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
