USE [WC_USA]
GO
ALTER TABLE [dbo].[Whiskey] DROP CONSTRAINT [FK_Whiskey_Presentation]
GO
ALTER TABLE [dbo].[Whiskey] DROP CONSTRAINT [FK_Whiskey_Distillery]
GO
ALTER TABLE [dbo].[Whiskey] DROP CONSTRAINT [FK_Whiskey.idWhiskeyTypeFK]
GO
ALTER TABLE [dbo].[UserInformation] DROP CONSTRAINT [FK_UserInformation_User]
GO
ALTER TABLE [dbo].[UserInformation] DROP CONSTRAINT [FK_UserInformation.idMoneyFK]
GO
ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_User_Store]
GO
ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_User.idUserTypeFK]
GO
ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_User.idSubscriptionFK]
GO
ALTER TABLE [dbo].[Store] DROP CONSTRAINT [FK_Store.idMoneyFK]
GO
ALTER TABLE [dbo].[SaleDetail] DROP CONSTRAINT [FK_SaleDetail.idWhiskeyFK]
GO
ALTER TABLE [dbo].[SaleDetail] DROP CONSTRAINT [FK_SaleDetail.idSaleFK]
GO
ALTER TABLE [dbo].[Sale] DROP CONSTRAINT [FK_Sale.idUserFK]
GO
ALTER TABLE [dbo].[Sale] DROP CONSTRAINT [FK_Sale.idStoreFK]
GO
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FK_Review.idUserFK]
GO
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT [FK_Messages.Usersender]
GO
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT [FK_Messages.Usereceiver]
GO
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT [FK_Messages.idClaimFK]
GO
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory.idWhiskeyFK]
GO
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory.idStoreFK]
GO
/****** Object:  Table [dbo].[WhiskeyType]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WhiskeyType]') AND type in (N'U'))
DROP TABLE [dbo].[WhiskeyType]
GO
/****** Object:  Table [dbo].[Whiskey]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Whiskey]') AND type in (N'U'))
DROP TABLE [dbo].[Whiskey]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserType]') AND type in (N'U'))
DROP TABLE [dbo].[UserType]
GO
/****** Object:  Table [dbo].[UserInformation]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInformation]') AND type in (N'U'))
DROP TABLE [dbo].[UserInformation]
GO
/****** Object:  Table [dbo].[User]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subscription]') AND type in (N'U'))
DROP TABLE [dbo].[Subscription]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Store]') AND type in (N'U'))
DROP TABLE [dbo].[Store]
GO
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleDetail]') AND type in (N'U'))
DROP TABLE [dbo].[SaleDetail]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sale]') AND type in (N'U'))
DROP TABLE [dbo].[Sale]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Review]') AND type in (N'U'))
DROP TABLE [dbo].[Review]
GO
/****** Object:  Table [dbo].[Presentation]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Presentation]') AND type in (N'U'))
DROP TABLE [dbo].[Presentation]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
DROP TABLE [dbo].[Messages]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inventory]') AND type in (N'U'))
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[Distillery]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Distillery]') AND type in (N'U'))
DROP TABLE [dbo].[Distillery]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currency]') AND type in (N'U'))
DROP TABLE [dbo].[Currency]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 21/06/2022 18:55:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Claim]') AND type in (N'U'))
DROP TABLE [dbo].[Claim]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 21/06/2022 18:55:36 ******/
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
/****** Object:  Table [dbo].[Currency]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[exchange_rate] [money] NULL,
 CONSTRAINT [PK__Money__3213E83F20C6CD31] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distillery]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distillery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Distillery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[priceByUnit] [money] NOT NULL,
	[idWhiskeyFK] [int] NULL,
	[idStoreFK] [int] NULL,
 CONSTRAINT [PK__Inventor__3213E83F10B5564C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usersender] [varchar](50) NULL,
	[Usereceiver] [varchar](50) NULL,
	[description] [bit] NOT NULL,
	[date] [bit] NOT NULL,
	[idClaimFK] [int] NULL,
 CONSTRAINT [PK__Messages__3213E83FE5894B13] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presentation]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Presentation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](200) NOT NULL,
	[ReviewDate] [date] NOT NULL,
	[rating] [int] NOT NULL,
	[idWhiskeyFK] [int] NULL,
	[idUserFK] [varchar](50) NULL,
 CONSTRAINT [PK__Review__3213E83F68201EAD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[total] [money] NOT NULL,
	[date] [date] NOT NULL,
	[deliveryCost] [money] NOT NULL,
	[Paid] [bit] NOT NULL,
	[idStoreFK] [int] NULL,
	[idUserFK] [varchar](50) NULL,
	[EmployeeSalesMan_identifiication] [int] NULL,
	[EmployeeDelivery_identifiication] [int] NULL,
 CONSTRAINT [PK__Sale__3213E83FB8754006] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NOT NULL,
	[idWhiskeyFK] [int] NULL,
	[idSaleFK] [int] NULL,
 CONSTRAINT [PK__SaleDeta__3213E83FCBE0E3D4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[id] [int] IDENTITY(1000,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[location] [geography] NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[currencyFK] [int] NULL,
 CONSTRAINT [PK__Store__3213E83F6228AE0B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 21/06/2022 18:55:36 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[identification] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[idUserTypeFK] [int] NULL,
	[idSubscriptionFK] [int] NULL,
	[idStoreFK] [int] NULL,
 CONSTRAINT [PK__User__3213E83F967A35F1] PRIMARY KEY CLUSTERED 
(
	[identification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInformation]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInformation](
	[identification] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[surname_1] [varchar](50) NOT NULL,
	[surname_2] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[location] [geography] NULL,
	[phone] [varchar](50) NOT NULL,
	[cash] [money] NOT NULL,
	[currencyFK] [int] NULL,
 CONSTRAINT [PK__UserInfo__3213E83FBF94A0D6] PRIMARY KEY CLUSTERED 
(
	[identification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 21/06/2022 18:55:36 ******/
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
/****** Object:  Table [dbo].[Whiskey]    Script Date: 21/06/2022 18:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Whiskey](
	[id] [int] IDENTITY(10000,1) NOT NULL,
	[image] [varbinary](max) NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](200) NOT NULL,
	[special] [bit] NULL,
	[idWhiskeyTypeFK] [int] NULL,
	[idPresentationFK] [int] NULL,
	[idDistilleryFK] [int] NULL,
	[features_json] [varchar](max) NULL,
 CONSTRAINT [PK__Whiskey__3213E83FBDEEA6C1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhiskeyType]    Script Date: 21/06/2022 18:55:36 ******/
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
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory.idWhiskeyFK]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages.idClaimFK] FOREIGN KEY([idClaimFK])
REFERENCES [dbo].[Claim] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages.idClaimFK]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages.Usereceiver] FOREIGN KEY([Usereceiver])
REFERENCES [dbo].[User] ([identification])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages.Usereceiver]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages.Usersender] FOREIGN KEY([Usersender])
REFERENCES [dbo].[User] ([identification])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages.Usersender]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review.idUserFK] FOREIGN KEY([idUserFK])
REFERENCES [dbo].[User] ([identification])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review.idUserFK]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale.idStoreFK] FOREIGN KEY([idStoreFK])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale.idStoreFK]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale.idUserFK] FOREIGN KEY([idUserFK])
REFERENCES [dbo].[User] ([identification])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale.idUserFK]
GO
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail.idSaleFK] FOREIGN KEY([idSaleFK])
REFERENCES [dbo].[Sale] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail.idSaleFK]
GO
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail.idWhiskeyFK] FOREIGN KEY([idWhiskeyFK])
REFERENCES [dbo].[Whiskey] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail.idWhiskeyFK]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store.idMoneyFK] FOREIGN KEY([currencyFK])
REFERENCES [dbo].[Currency] ([id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store.idMoneyFK]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User.idSubscriptionFK] FOREIGN KEY([idSubscriptionFK])
REFERENCES [dbo].[Subscription] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User.idSubscriptionFK]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User.idUserTypeFK] FOREIGN KEY([idUserTypeFK])
REFERENCES [dbo].[UserType] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User.idUserTypeFK]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Store] FOREIGN KEY([idStoreFK])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Store]
GO
ALTER TABLE [dbo].[UserInformation]  WITH CHECK ADD  CONSTRAINT [FK_UserInformation.idMoneyFK] FOREIGN KEY([currencyFK])
REFERENCES [dbo].[Currency] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[UserInformation] CHECK CONSTRAINT [FK_UserInformation.idMoneyFK]
GO
ALTER TABLE [dbo].[UserInformation]  WITH CHECK ADD  CONSTRAINT [FK_UserInformation_User] FOREIGN KEY([identification])
REFERENCES [dbo].[User] ([identification])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserInformation] CHECK CONSTRAINT [FK_UserInformation_User]
GO
ALTER TABLE [dbo].[Whiskey]  WITH CHECK ADD  CONSTRAINT [FK_Whiskey.idWhiskeyTypeFK] FOREIGN KEY([idWhiskeyTypeFK])
REFERENCES [dbo].[WhiskeyType] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Whiskey] CHECK CONSTRAINT [FK_Whiskey.idWhiskeyTypeFK]
GO
ALTER TABLE [dbo].[Whiskey]  WITH CHECK ADD  CONSTRAINT [FK_Whiskey_Distillery] FOREIGN KEY([idDistilleryFK])
REFERENCES [dbo].[Distillery] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Whiskey] CHECK CONSTRAINT [FK_Whiskey_Distillery]
GO
ALTER TABLE [dbo].[Whiskey]  WITH CHECK ADD  CONSTRAINT [FK_Whiskey_Presentation] FOREIGN KEY([idPresentationFK])
REFERENCES [dbo].[Presentation] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Whiskey] CHECK CONSTRAINT [FK_Whiskey_Presentation]
GO
