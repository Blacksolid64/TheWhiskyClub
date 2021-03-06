USE [WC_IR]
GO
SET IDENTITY_INSERT [dbo].[Currency] ON 

INSERT [dbo].[Currency] ([id], [name], [exchange_rate]) VALUES (1, N'Dollar', 1.0005)
INSERT [dbo].[Currency] ([id], [name], [exchange_rate]) VALUES (2, N'Pound sterling', 0.8600)
INSERT [dbo].[Currency] ([id], [name], [exchange_rate]) VALUES (3, N'Euro', 1.0000)
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([id], [name], [location], [email], [phone], [currencyFK]) VALUES (2000, N'Dublin', NULL, N'Dublin@dublin.com', N'654321', 3)
SET IDENTITY_INSERT [dbo].[Store] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscription] ON 

INSERT [dbo].[Subscription] ([id], [price], [duration], [discountShop], [discountDelivery], [specialWhiskeys], [notifications], [giftWhiskeys], [Gift_count], [name]) VALUES (1, 20.0000, 30, 5, 0, 0, 1, 0, 0, N'Short Glass')
INSERT [dbo].[Subscription] ([id], [price], [duration], [discountShop], [discountDelivery], [specialWhiskeys], [notifications], [giftWhiskeys], [Gift_count], [name]) VALUES (2, 50.0000, 30, 10, 20, 0, 1, 0, 0, N'Gleincairn')
INSERT [dbo].[Subscription] ([id], [price], [duration], [discountShop], [discountDelivery], [specialWhiskeys], [notifications], [giftWhiskeys], [Gift_count], [name]) VALUES (4, 70.0000, 30, 30, 100, 1, 1, 1, 0, N'Master Distiller')
SET IDENTITY_INSERT [dbo].[Subscription] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([id], [name]) VALUES (2, N'Worker')
INSERT [dbo].[UserType] ([id], [name]) VALUES (3, N'User')
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'222222', N'IR@jim.com', N'12345', 3, NULL, 2000)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'654321', N'IR2@jim.com', N'12345', 3, NULL, 2000)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'252525', N'adminIR@wc.com', N'1234', 1, NULL, 2000)
GO
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [currencyFK]) VALUES (N'222222', N'Johnny', N'Cranston', N'Voley', 29, 0xE6100000010C7DE882FA96313340C6C4E6E3DAF83CC0, N'6554321', 100000.0000, 3)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [currencyFK]) VALUES (N'654321', N'Jim', N'Charles', N'Makintosh', 29, 0xE6100000010CFAD005F52D632A4031B1F9B836BE58C0, N'6877321', 100000.0000, 3)
GO
SET IDENTITY_INSERT [dbo].[Distillery] ON 

INSERT [dbo].[Distillery] ([id], [name]) VALUES (1, N'American Freedom')
INSERT [dbo].[Distillery] ([id], [name]) VALUES (2, N'Yellow Rose')
INSERT [dbo].[Distillery] ([id], [name]) VALUES (3, N'Cotherman Co.')
INSERT [dbo].[Distillery] ([id], [name]) VALUES (4, N'Old Bushmills')
INSERT [dbo].[Distillery] ([id], [name]) VALUES (5, N'Kilbeggan')
INSERT [dbo].[Distillery] ([id], [name]) VALUES (6, N'Ardbeg')
INSERT [dbo].[Distillery] ([id], [name]) VALUES (7, N'Hazelburn')
INSERT [dbo].[Distillery] ([id], [name]) VALUES (8, N'Four roses')
SET IDENTITY_INSERT [dbo].[Distillery] OFF
GO
SET IDENTITY_INSERT [dbo].[Presentation] ON 

INSERT [dbo].[Presentation] ([id], [name]) VALUES (1, N'Red')
INSERT [dbo].[Presentation] ([id], [name]) VALUES (2, N'Blue')
INSERT [dbo].[Presentation] ([id], [name]) VALUES (3, N'White')
INSERT [dbo].[Presentation] ([id], [name]) VALUES (4, N'Black')
INSERT [dbo].[Presentation] ([id], [name]) VALUES (5, N'Green')
SET IDENTITY_INSERT [dbo].[Presentation] OFF
GO
SET IDENTITY_INSERT [dbo].[WhiskeyType] ON 

INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (1, N'Bourbon')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (2, N'Single Malt')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (3, N'Tennessee Whiskey')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (4, N'Irish')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (5, N'Blended Scotch')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (7, N'Japanese')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (8, N'DragonBorn')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (9, N'Wakandian')
SET IDENTITY_INSERT [dbo].[WhiskeyType] OFF
GO
SET IDENTITY_INSERT [dbo].[Whiskey] ON 

INSERT [dbo].[Whiskey] ([id], [image], [name], [description], [special], [idWhiskeyTypeFK], [idPresentationFK], [idDistilleryFK], [features_json]) VALUES (20000, NULL, N'Humble irish', N'A good whiskey', 0, 3, 2, 2, N'{"Features":[{"Name":"Great valor","Distillery":1,"Presentation":1}]}')
INSERT [dbo].[Whiskey] ([id], [image], [name], [description], [special], [idWhiskeyTypeFK], [idPresentationFK], [idDistilleryFK], [features_json]) VALUES (20001, NULL, N'Jim jane', N'Finest Irish whiskey', 0, 5, 1, 3, N'{"Features":[{"Name":"Bomboclat","Distillery":2,"Presentation":3}]}')
SET IDENTITY_INSERT [dbo].[Whiskey] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([id], [quantity], [priceByUnit], [idWhiskeyFK], [idStoreFK]) VALUES (1, 35, 25.0000, 20000, 2000)
INSERT [dbo].[Inventory] ([id], [quantity], [priceByUnit], [idWhiskeyFK], [idStoreFK]) VALUES (2, 25, 30.0000, 20001, 2000)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
