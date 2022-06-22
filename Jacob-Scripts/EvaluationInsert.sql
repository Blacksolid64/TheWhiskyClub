-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 19/06/2022
-- Description:	Returns the information of a single employee eval
-- =============================================
CREATE PROCEDURE Employee_evaluation_insert
	-- Add the parameters for the stored procedure here
	 @idClient_IN INT,
	 @idEmployee_IN INT,
	 @Country_ID INT,
	 @qualification_IN INT,
	 @commentary_IN VARCHAR(200),
	 @date_IN date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
		IF @Country_ID = 1
		BEGIN
		INSERT INTO [HUMANRESOURCES].[Human resources].[public].employee_evaluation_usa(
		qualification, commentary, date, identification_client, id_employee_fk)
		VALUES (@qualification_IN, @commentary_IN,@date_IN, @idClient_IN, @idEmployee_IN);
	
		IF @@ROWCOUNT > 0
			RETURN 0
		ELSE
			RETURN 1
		END
		IF @Country_ID = 2
		BEGIN
		INSERT INTO [HUMANRESOURCES].[Human resources].[public].employee_evaluation_usa(
		qualification, commentary, date, identification_client, id_employee_fk)
		VALUES (@qualification_IN, @commentary_IN,@date_IN, @idClient_IN, @idEmployee_IN);
	
		IF @@ROWCOUNT > 0
			RETURN 0
		ELSE
			RETURN 1
		END
		IF @Country_ID = 3
		BEGIN
		INSERT INTO [HUMANRESOURCES].[Human resources].[public].employee_evaluation_usa(
		qualification, commentary, date, identification_client, id_employee_fk)
		VALUES (@qualification_IN, @commentary_IN,@date_IN, @idClient_IN, @idEmployee_IN);
	
		IF @@ROWCOUNT > 0
			RETURN 0
		ELSE
			RETURN 1
		END
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