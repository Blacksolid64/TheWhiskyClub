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
-- Author:        Joshua Arcia
-- Create date: 19/06/2022
-- Description:    Returns the information of a single employee eval
-- =============================================
ALTER PROCEDURE Employee_evaluation_select_id
    -- Add the parameters for the stored procedure here
     @id_IN INT,
     @Country_ID INT
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
        SELECT * FROM [HUMANRESOURCES].[Human resources].[public].employee_evaluation_usa
        WHERE id_employee_fk = @id_IN
        RETURN 0
        END
        IF @Country_ID = 2
        BEGIN
        SELECT * FROM [HUMANRESOURCES].[Human resources].[public].employee_evaluation_ireland
        WHERE id_employee_fk = @id_IN
        RETURN 0
        END
        IF @Country_ID = 3
        BEGIN
        SELECT * FROM [HUMANRESOURCES].[Human resources].[public].employee_evaluation_scotland
        WHERE id_employee_fk = @id_IN
        RETURN 0
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