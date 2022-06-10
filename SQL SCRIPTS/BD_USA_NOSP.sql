USE [WC_USA]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dateClaim] [date] NOT NULL,
	[descriptionClaim] [varchar](200) NOT NULL,
	[resolved] [bit] NOT NULL,
	[goodTerms] [bit] NOT NULL,
 CONSTRAINT [PK__Claim__3213E83F7CB088D2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[priceByUnit] [money] NOT NULL,
	[idWhiskeyFK] [int] NOT NULL,
	[idStoreFK] [int] NOT NULL,
 CONSTRAINT [PK__Inventor__3213E83F10B5564C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usersender] [int] NOT NULL,
	[Usereceiver] [int] NOT NULL,
	[description] [bit] NOT NULL,
	[date] [bit] NOT NULL,
	[idClaimFK] [int] NOT NULL,
 CONSTRAINT [PK__Messages__3213E83FE5894B13] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Money]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Money](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[symbol] [varchar](5) NOT NULL,
 CONSTRAINT [PK__Money__3213E83F20C6CD31] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](200) NOT NULL,
	[dateReview] [date] NOT NULL,
	[rating] [int] NOT NULL,
	[idWhiskeyFK] [int] NOT NULL,
	[idUserFK] [int] NOT NULL,
 CONSTRAINT [PK__Review__3213E83F68201EAD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[total] [int] NOT NULL,
	[date] [date] NOT NULL,
	[deliveryCost] [money] NOT NULL,
	[Paid] [bit] NOT NULL,
	[idStoreFK] [int] NOT NULL,
	[idUserFK] [int] NOT NULL,
	[EmployeeSalesMan_identifiication] [int] NOT NULL,
	[EmployeeDelivery_identifiication] [int] NOT NULL,
 CONSTRAINT [PK__Sale__3213E83FB8754006] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NOT NULL,
	[idWhiskeyFK] [int] NOT NULL,
	[idSaleFK] [int] NOT NULL,
 CONSTRAINT [PK__SaleDeta__3213E83FCBE0E3D4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[location] [geography] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[idMoneyFK] [int] NOT NULL,
 CONSTRAINT [PK__Store__3213E83F6228AE0B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [money] NOT NULL,
	[duration] [int] NOT NULL,
	[discountShop] [int] NOT NULL,
	[discountDelivery] [int] NOT NULL,
	[specialWhiskeys] [bit] NOT NULL,
	[notifications] [bit] NOT NULL,
	[giftWhiskeys] [bit] NOT NULL,
	[Gift_count] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Subscrip__3213E83F841EB0F6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[idUserTypeFK] [int] NOT NULL,
	[idSubscriptionFK] [int] NULL,
	[idStoreFK] [int] NULL,
 CONSTRAINT [PK__User__3213E83F967A35F1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInformation]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInformation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[surname_1] [varchar](50) NOT NULL,
	[surname_2] [varchar](50) NOT NULL,
	[identification] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[location] [geography] NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[cash] [money] NOT NULL,
	[idMoneyFK] [int] NOT NULL,
 CONSTRAINT [PK__UserInfo__3213E83FBF94A0D6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__UserType__3213E83F3C46B51A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Whiskey]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Whiskey](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](200) NOT NULL,
	[features] [nvarchar](max) NOT NULL,
	[idWhiskeyTypeFK] [int] NOT NULL,
 CONSTRAINT [PK__Whiskey__3213E83FBDEEA6C1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhiskeyType]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhiskeyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__WhiskeyT__3213E83FE557B708] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory.idStoreFK] FOREIGN KEY([idStoreFK])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory.idStoreFK]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory.idWhiskeyFK] FOREIGN KEY([idWhiskeyFK])
REFERENCES [dbo].[Whiskey] ([id])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory.idWhiskeyFK]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages.idClaimFK] FOREIGN KEY([idClaimFK])
REFERENCES [dbo].[Claim] ([id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages.idClaimFK]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages.Usereceiver] FOREIGN KEY([Usereceiver])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages.Usereceiver]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages.Usersender] FOREIGN KEY([Usersender])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages.Usersender]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review.idUserFK] FOREIGN KEY([idUserFK])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review.idUserFK]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review.idWhiskeyFK] FOREIGN KEY([idWhiskeyFK])
REFERENCES [dbo].[Whiskey] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review.idWhiskeyFK]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale.idStoreFK] FOREIGN KEY([idStoreFK])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale.idStoreFK]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale.idUserFK] FOREIGN KEY([idUserFK])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale.idUserFK]
GO
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail.idSaleFK] FOREIGN KEY([idSaleFK])
REFERENCES [dbo].[Sale] ([id])
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail.idSaleFK]
GO
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail.idWhiskeyFK] FOREIGN KEY([idWhiskeyFK])
REFERENCES [dbo].[Whiskey] ([id])
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail.idWhiskeyFK]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store.idMoneyFK] FOREIGN KEY([idMoneyFK])
REFERENCES [dbo].[Money] ([id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store.idMoneyFK]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User.idStoreFK] FOREIGN KEY([idStoreFK])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User.idStoreFK]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User.idSubscriptionFK] FOREIGN KEY([idSubscriptionFK])
REFERENCES [dbo].[Subscription] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User.idSubscriptionFK]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User.idUserTypeFK] FOREIGN KEY([idUserTypeFK])
REFERENCES [dbo].[UserType] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User.idUserTypeFK]
GO
ALTER TABLE [dbo].[UserInformation]  WITH CHECK ADD  CONSTRAINT [FK_UserInformation.idMoneyFK] FOREIGN KEY([idMoneyFK])
REFERENCES [dbo].[Money] ([id])
GO
ALTER TABLE [dbo].[UserInformation] CHECK CONSTRAINT [FK_UserInformation.idMoneyFK]
GO
ALTER TABLE [dbo].[UserInformation]  WITH CHECK ADD  CONSTRAINT [FK_UserInformation_User] FOREIGN KEY([id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[UserInformation] CHECK CONSTRAINT [FK_UserInformation_User]
GO
ALTER TABLE [dbo].[Whiskey]  WITH CHECK ADD  CONSTRAINT [FK_Whiskey.idWhiskeyTypeFK] FOREIGN KEY([idWhiskeyTypeFK])
REFERENCES [dbo].[WhiskeyType] ([id])
GO
ALTER TABLE [dbo].[Whiskey] CHECK CONSTRAINT [FK_Whiskey.idWhiskeyTypeFK]
GO
/****** Object:  StoredProcedure [dbo].[LogIn]    Script Date: 6/9/2022 8:44:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Arcia
-- Create date: 9/6/2022
-- Description:	Valida que un usuario exista en esta base de datos
-- =============================================
CREATE PROCEDURE [dbo].[LogIn] 
	-- Add the parameters for the stored procedure here
	@email VARCHAR(50) = '', 
	@password VARCHAR(50) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

    -- Insert statements for procedure here
	BEGIN TRY
		IF (SELECT COUNT(*)
		FROM [User] U
		WHERE U.email = @email AND U.password = @password) = 1 --Hay match para password y correo?
			BEGIN
			RETURN 0 --Si
			END
		ELSE
		BEGIN
		RETURN 1 --No
		END
	END TRY

	BEGIN CATCH
	SELECT  
        ERROR_NUMBER() AS [Numero de error]
        ,ERROR_PROCEDURE() AS [Procedimiento]
        ,ERROR_LINE() AS [Línea]  
        ,ERROR_MESSAGE() AS [Mensaje];  
	RETURN -1
	END CATCH
END
GO
