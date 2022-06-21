/****** Object:  StoredProcedure [dbo].[Employee_delete]    Script Date: 6/20/2022 5:17:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 19/6/2022
-- Description:	Deletes the information of an employee from a distributed database
-- =============================================
CREATE   PROCEDURE [dbo].[Employee_delete]
	-- Add the parameters for the stored procedure here
	 @database_IN int
	,@userID_IN int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	IF @database_IN = 1 -- USA
	BEGIN
		DELETE FROM [HR].Human_resourses.[public].employee_usa 
		WHERE id = @userID_IN
	END

	IF @database_IN = 2 -- Scotland
	BEGIN	
		DELETE FROM [HR].Human_resourses.[public].employee_scotland 
		WHERE id = @userID_IN
	END

	IF @database_IN = 3 --Ireland
	BEGIN	
		DELETE FROM [HR].Human_resourses.[public].employee_ireland 
		WHERE id = @userID_IN
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
/****** Object:  StoredProcedure [dbo].[Employee_insert]    Script Date: 6/20/2022 5:17:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 19/6/2022
-- Description:	Inserts a new employee into a distributed database
-- =============================================
CREATE PROCEDURE [dbo].[Employee_insert]
	-- Add the parameters for the stored procedure here
	 @database_IN int
	,@name_IN varchar(50)
	,@surname_1_IN varchar(50)
	,@surname_2_IN varchar(50)
	,@identification_IN varchar(50)
	,@age_IN INT
	,@salary_IN MONEY
	,@hiring_date_IN DATE
	,@address_IN VARCHAR(50)
	,@phone_IN VARCHAR(50)
	,@id_schedule_fk_IN INT
	,@id_position_in INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	IF @database_IN = 1 -- USA
	BEGIN
		INSERT INTO [HR].Human_resourses.[public].employee_usa (
			[name]
			,[surname_1]
			,[surname_2]
			,[identification]
			,[age]
			,[salary]
			,[hiring_date]
			,[address]
			,[phone]
			,[id_schedule_fk]
			,[id_position_fk]
			)
		VALUES (
			@name_IN
			,@surname_1_IN
			,@surname_2_IN
			,@identification_IN
			,@age_IN
			,@salary_IN
			,@hiring_date_IN
			,@address_IN
			,@phone_IN
			,@id_schedule_fk_IN
			,@id_position_in
			)
	END
	IF @database_IN = 2 --IRELAND
	BEGIN	
		INSERT INTO [HR].Human_resourses.[public].employee_ireland (
			[name]
			,[surname_1]
			,[surname_2]
			,[identification]
			,[age]
			,[salary]
			,[hiring_date]
			,[address]
			,[phone]
			,[id_schedule_fk]
			,[id_position_fk]
			)
		VALUES (
			@name_IN
			,@surname_1_IN
			,@surname_2_IN
			,@identification_IN
			,@age_IN
			,@salary_IN
			,@hiring_date_IN
			,@address_IN
			,@phone_IN
			,@id_schedule_fk_IN
			,@id_position_in
			)
	END
	IF @database_IN = 3 --IRELAND
	BEGIN	
		INSERT INTO [HR].Human_resourses.[public].employee_scotland (
			[name]
			,[surname_1]
			,[surname_2]
			,[identification]
			,[age]
			,[salary]
			,[hiring_date]
			,[address]
			,[phone]
			,[id_schedule_fk]
			,[id_position_fk]
			)
		VALUES (
			@name_IN
			,@surname_1_IN
			,@surname_2_IN
			,@identification_IN
			,@age_IN
			,@salary_IN
			,@hiring_date_IN
			,@address_IN
			,@phone_IN
			,@id_schedule_fk_IN
			,@id_position_in
			)
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
/****** Object:  StoredProcedure [dbo].[Employee_select_all]    Script Date: 6/20/2022 5:17:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 19/6/2022
-- Description:	Retrieves the information of all the employees
-- =============================================
CREATE   PROCEDURE [dbo].[Employee_select_all]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	
		SELECT *,'USA' AS [database] FROM [HR].Human_resourses.[public].employee_usa 
		UNION ALL
		SELECT *,'Scotland' AS [database] FROM [HR].Human_resourses.[public].employee_scotland 
		UNION ALL
		SELECT *,'Ireland' AS [database] FROM  [HR].Human_resourses.[public].employee_ireland 
		
	
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
/****** Object:  StoredProcedure [dbo].[Employee_select_id]    Script Date: 6/20/2022 5:17:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 19/6/2022
-- Description:	Retrieves the information of an employee from a distributed database, given an id an its database
-- =============================================
CREATE   PROCEDURE [dbo].[Employee_select_id]
	-- Add the parameters for the stored procedure here
	 @database_IN int
	,@userID_IN int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	IF @database_IN = 1 -- USA
	BEGIN
		SELECT * FROM [HR].Human_resourses.[public].employee_usa 
		WHERE id = @userID_IN
	END

	IF @database_IN = 2 -- Scotland
	BEGIN	
		SELECT * FROM [HR].Human_resourses.[public].employee_scotland 
		WHERE id = @userID_IN
	END

	IF @database_IN = 3 --Ireland
	BEGIN	
		SELECT * FROM [HR].Human_resourses.[public].employee_ireland 
		WHERE id = @userID_IN
	END
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
/****** Object:  StoredProcedure [dbo].[Employee_update]    Script Date: 6/20/2022 5:17:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Joshua Arcia
-- Create date: 19/6/2022
-- Description:	updates the information of an employee from a distributed database
-- =============================================
CREATE   PROCEDURE [dbo].[Employee_update]
	-- Add the parameters for the stored procedure here
	 @database_IN int
	,@userID_IN int
	,@name_IN varchar(50) = NULL
	,@surname_1_IN varchar(50) = NULL
	,@surname_2_IN varchar(50) = NULL
	,@identification_IN varchar(50) = NULL
	,@age_IN INT = NULL
	,@salary_IN MONEY = NULL
	,@hiring_date_IN DATE = NULL
	,@address_IN VARCHAR(50) = NULL
	,@phone_IN VARCHAR(50) = NULL
	,@id_schedule_fk_IN INT = NULL
	,@id_position_in INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	-- Insert statements for procedure here
	BEGIN TRY
	IF @database_IN = 1 -- USA
	BEGIN
		UPDATE [HR].Human_resourses.[public].employee_usa 
		SET	 [name] = ISNULL(NULLIF(@name_IN,''),[name])
			,[surname_1] = ISNULL(NULLIF(@surname_1_IN,''),[surname_1])
			,[surname_2] = ISNULL(NULLIF(@surname_2_IN,''),[surname_2])
			,[identification] = ISNULL(NULLIF(@identification_IN,''),[identification])
			,[age] =  ISNULL(NULLIF(@age_IN,''),[age])
			,[salary] = ISNULL(@salary_IN,[salary])
			,[hiring_date] = ISNULL(@hiring_date_IN,[hiring_date])
			,[address] = ISNULL(NULLIF(@address_IN,''),[address])
			,[phone] = ISNULL(NULLIF(@phone_IN,''),[phone])
			,[id_schedule_fk] =	ISNULL(@id_schedule_fk_IN,[id_schedule_fk])
			,[id_position_fk] = ISNULL(@id_position_in,[id_position_fk])
		WHERE id = @userID_IN
		IF @@ROWCOUNT > 0
			RETURN 0
		ELSE
			RETURN 1
	END
	IF @database_IN = 2 -- Scotland
	BEGIN	
		UPDATE [HR].Human_resourses.[public].employee_scotland 
		SET 
			 [name] = ISNULL(NULLIF(@name_IN,''),[name])
			,[surname_1] = ISNULL(NULLIF(@surname_1_IN,''),[surname_1])
			,[surname_2] = ISNULL(NULLIF(@surname_2_IN,''),[surname_2])
			,[identification] = ISNULL(NULLIF(@identification_IN,''),[identification])
			,[age] =  ISNULL(NULLIF(@age_IN,''),[age])
			,[salary] = ISNULL(@salary_IN,[salary])
			,[hiring_date] = ISNULL(@hiring_date_IN,[hiring_date])
			,[address] = ISNULL(NULLIF(@address_IN,''),[address])
			,[phone] = ISNULL(NULLIF(@phone_IN,''),[phone])
			,[id_schedule_fk] =	ISNULL(@id_schedule_fk_IN,[id_schedule_fk])
			,[id_position_fk] = ISNULL(@id_position_in,[id_position_fk])
		WHERE id = @userID_IN
		IF @@ROWCOUNT > 0
			RETURN 0
		ELSE
			RETURN 1
	END

	IF @database_IN = 3 --Ireland
	BEGIN	
		UPDATE [HR].Human_resourses.[public].employee_ireland 
		SET 
			 [name] = ISNULL(NULLIF(@name_IN,''),[name])
			,[surname_1] = ISNULL(NULLIF(@surname_1_IN,''),[surname_1])
			,[surname_2] = ISNULL(NULLIF(@surname_2_IN,''),[surname_2])
			,[identification] = ISNULL(NULLIF(@identification_IN,''),[identification])
			,[age] =  ISNULL(NULLIF(@age_IN,''),[age])
			,[salary] = ISNULL(@salary_IN,[salary])
			,[hiring_date] = ISNULL(@hiring_date_IN,[hiring_date])
			,[address] = ISNULL(NULLIF(@address_IN,''),[address])
			,[phone] = ISNULL(NULLIF(@phone_IN,''),[phone])
			,[id_schedule_fk] =	ISNULL(@id_schedule_fk_IN,[id_schedule_fk])
			,[id_position_fk] = ISNULL(@id_position_in,[id_position_fk])
		WHERE id = @userID_IN
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