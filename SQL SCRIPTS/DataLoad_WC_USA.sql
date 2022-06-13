USE [WC_USA]
GO
SET IDENTITY_INSERT [dbo].[WhiskeyType] ON 

INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (1, N'Bourbon')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (2, N'Single Malt')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (3, N'Tennessee Whiskey')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (4, N'Irish')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (5, N'Blended Scotch')
INSERT [dbo].[WhiskeyType] ([id], [name]) VALUES (6, N'Blended Malt')
SET IDENTITY_INSERT [dbo].[WhiskeyType] OFF
GO
SET IDENTITY_INSERT [dbo].[Whiskey] ON 

INSERT [dbo].[Whiskey] ([id], [name], [description], [idWhiskeyTypeFK], [features_json]) VALUES (10, N'Noble Oak', N'Best whiskey in town', 1, N'{"Features" : {"Age": "25", "Distillery": "Whiskeys The grewat oak", "Image": "https://st.depositphotos.com/1184748/4732/i/950/depositphotos_47323215-stock-photo-barman-pouring-whiskey-in-front.jpg", "Presentation": "Black label"} }')
INSERT [dbo].[Whiskey] ([id], [name], [description], [idWhiskeyTypeFK], [features_json]) VALUES (11, N'The Macallan', N'Ahoy irish mate', 5, N'{"Features" : {"Age": "12", "Distillery": "Whiskeys La vallesanna", "Image": "https://st.depositphotos.com/1184748/4732/i/950/depositphotos_47323215-stock-photo-barman-pouring-whiskey-in-front.jpg", "Presentation": "Red label"} }')
SET IDENTITY_INSERT [dbo].[Whiskey] OFF
GO
SET IDENTITY_INSERT [dbo].[Money] ON 

INSERT [dbo].[Money] ([id], [name], [symbol]) VALUES (1, N'Dollar', N'$')
SET IDENTITY_INSERT [dbo].[Money] OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([id], [name], [location], [email], [phone], [idMoneyFK]) VALUES (1, N'Alabama', NULL, N'Alabama@WC.com', N'1111111', 1)
SET IDENTITY_INSERT [dbo].[Store] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([id], [quantity], [priceByUnit], [idWhiskeyFK], [idStoreFK]) VALUES (1, 20, 90.0000, 11, 1)
INSERT [dbo].[Inventory] ([id], [quantity], [priceByUnit], [idWhiskeyFK], [idStoreFK]) VALUES (5, 22, 24.0000, 10, 1)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([id], [name]) VALUES (2, N'Worker')
INSERT [dbo].[UserType] ([id], [name]) VALUES (3, N'User')
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscription] ON 

INSERT [dbo].[Subscription] ([id], [price], [duration], [discountShop], [discountDelivery], [specialWhiskeys], [notifications], [giftWhiskeys], [Gift_count], [name]) VALUES (1, 20.0000, 30, 5, 0, 0, 1, 0, 0, N'Short Glass')
INSERT [dbo].[Subscription] ([id], [price], [duration], [discountShop], [discountDelivery], [specialWhiskeys], [notifications], [giftWhiskeys], [Gift_count], [name]) VALUES (2, 50.0000, 30, 10, 20, 0, 1, 0, 0, N'Gleincairn')
INSERT [dbo].[Subscription] ([id], [price], [duration], [discountShop], [discountDelivery], [specialWhiskeys], [notifications], [giftWhiskeys], [Gift_count], [name]) VALUES (4, 70.0000, 30, 30, 100, 1, 1, 1, 0, N'Master Distiller')
SET IDENTITY_INSERT [dbo].[Subscription] OFF
GO
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'2', N'Testing@gaa.com', N'UnHash', 1, NULL, NULL)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'23', N'TryTest@sss.s', N'12356', 3, NULL, NULL)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'3', N'Testing@gaa.com', N'UnHash2', 3, NULL, NULL)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'5', N'DifTest@gaa.com', N'UnHash', 3, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (1, 0, CAST(N'2022-10-11' AS Date), 0.0000, 0, 1, N'2', 1, 1)
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO
SET IDENTITY_INSERT [dbo].[SaleDetail] ON 

INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (1, 1, 100.0000, 10, 1)
SET IDENTITY_INSERT [dbo].[SaleDetail] OFF
GO
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [idMoneyFK]) VALUES (N'2', N'Johana', N'Maria', N'Carmela', 20, NULL, N'1235679', 100.0000, 1)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [idMoneyFK]) VALUES (N'23', N'John', N'Johnny', N'Michael', 30, NULL, N'129356', 234.0000, 1)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [idMoneyFK]) VALUES (N'3', N'Marco', N'Madrigal', N'Mendoza', 45, NULL, N'1939199', 9222.0000, 1)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [idMoneyFK]) VALUES (N'5', N'Julian', N'Gonzales', N'Arraziaga', 23, NULL, N'1389193', 2822.0000, 1)
GO
SET IDENTITY_INSERT [dbo].[Claim] ON 

INSERT [dbo].[Claim] ([id], [dateClaim], [descriptionClaim], [resolved], [goodTerms]) VALUES (3, CAST(N'2022-03-20' AS Date), N'My item was half drank', 0, 0)
INSERT [dbo].[Claim] ([id], [dateClaim], [descriptionClaim], [resolved], [goodTerms]) VALUES (4, CAST(N'2022-03-20' AS Date), N'No Item was received', 0, 0)
SET IDENTITY_INSERT [dbo].[Claim] OFF
GO
