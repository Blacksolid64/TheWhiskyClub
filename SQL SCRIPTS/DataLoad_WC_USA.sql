USE [WC_USA]
GO
SET IDENTITY_INSERT [dbo].[Currency] ON 

INSERT [dbo].[Currency] ([id], [name], [exchange_rate]) VALUES (1, N'Dollar', 1.0000)
INSERT [dbo].[Currency] ([id], [name], [exchange_rate]) VALUES (2, N'Pound sterling', 0.8200)
INSERT [dbo].[Currency] ([id], [name], [exchange_rate]) VALUES (3, N'Euro', 0.9500)
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([id], [name], [location], [email], [phone], [currencyFK]) VALUES (1000, N'Alabama', 0xE6100000010CCC5D4BC807554440F2D24D62107C52C0, N'Alabama@WC.com', N'1111111', 1)
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
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'', N'donperignon@wembley.site', N'123', 3, NULL, 1000)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'102939', N'jiwojd@sjd.com', N'oiaoija', 3, NULL, 1000)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'111', N'UsaUser@USA.com', N'132', 3, NULL, 1000)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'2', N'Testing@gaa.com', N'UnHash', 1, NULL, 1000)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'23', N'TryTest@sss.s', N'12356', 3, NULL, 1000)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'3', N'Testing@gaa.com', N'UnHash2', 3, NULL, 1000)
INSERT [dbo].[User] ([identification], [email], [password], [idUserTypeFK], [idSubscriptionFK], [idStoreFK]) VALUES (N'5', N'DifTest@gaa.com', N'UnHash', 3, NULL, 1000)
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (1, 100.0000, CAST(N'2022-10-11' AS Date), 55224836.0000, 1, 1000, N'2', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (2, 90.0000, CAST(N'2022-11-11' AS Date), 111735.0000, 1, 1000, N'23', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (3, 0.0000, CAST(N'2022-06-18' AS Date), 0.0000, 0, 1000, NULL, 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (5, 0.0000, CAST(N'2022-06-18' AS Date), 0.0000, 0, 1000, N'', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (13, 0.0000, CAST(N'2022-06-18' AS Date), 0.0000, 0, 1000, N'111', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (14, 90.0000, CAST(N'2022-06-19' AS Date), 111735.0000, 1, 1000, N'23', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (15, 90.0000, CAST(N'2022-06-19' AS Date), 111735.0000, 1, 1000, N'23', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (16, 90.0000, CAST(N'2022-06-19' AS Date), 111735.0000, 1, 1000, N'23', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (17, 123.0000, CAST(N'2022-06-19' AS Date), 111734.0000, 1, 1000, N'23', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (18, 820.0000, CAST(N'2022-06-19' AS Date), 111735.0000, 1, 1000, N'23', 1, 1)
INSERT [dbo].[Sale] ([id], [total], [date], [deliveryCost], [Paid], [idStoreFK], [idUserFK], [EmployeeSalesMan_identifiication], [EmployeeDelivery_identifiication]) VALUES (19, 687.0000, CAST(N'2022-06-21' AS Date), 111735.0000, 1, 1000, N'23', 1, 1)
SET IDENTITY_INSERT [dbo].[Sale] OFF
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

INSERT [dbo].[Whiskey] ([id], [image], [name], [description], [special], [idWhiskeyTypeFK], [idPresentationFK], [idDistilleryFK], [features_json]) VALUES (10, NULL, N'Noble Oak', N'Best whiskey in town', 0, 1, 2, 1, N'{"Features" : [{"Age": 25, "Distillery": "Whiskeys The grewat oak", "Image": "https:\/\/st.depositphotos.com\/1184748\/4732\/i\/950\/de", "Presentation": "Black label"}] }')
INSERT [dbo].[Whiskey] ([id], [image], [name], [description], [special], [idWhiskeyTypeFK], [idPresentationFK], [idDistilleryFK], [features_json]) VALUES (13, NULL, N'Burning Tonic', N'Donec eget dolor malesuada, aliquet. ', 0, 3, 1, 4, NULL)
INSERT [dbo].[Whiskey] ([id], [image], [name], [description], [special], [idWhiskeyTypeFK], [idPresentationFK], [idDistilleryFK], [features_json]) VALUES (14, NULL, N'Drunkon', N'Aenean in semper dui, a. ', 1, 5, 4, 2, NULL)
INSERT [dbo].[Whiskey] ([id], [image], [name], [description], [special], [idWhiskeyTypeFK], [idPresentationFK], [idDistilleryFK], [features_json]) VALUES (15, NULL, N'Hard at night', N'Aenean in semper dui, a. ', 0, 7, 3, 3, NULL)
SET IDENTITY_INSERT [dbo].[Whiskey] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([id], [quantity], [priceByUnit], [idWhiskeyFK], [idStoreFK]) VALUES (1, 9, 90.0000, 14, 1000)
INSERT [dbo].[Inventory] ([id], [quantity], [priceByUnit], [idWhiskeyFK], [idStoreFK]) VALUES (5, 17, 24.0000, 10, 1000)
INSERT [dbo].[Inventory] ([id], [quantity], [priceByUnit], [idWhiskeyFK], [idStoreFK]) VALUES (6, 4, 5.0000, 15, 1000)
INSERT [dbo].[Inventory] ([id], [quantity], [priceByUnit], [idWhiskeyFK], [idStoreFK]) VALUES (7, 8, 123.0000, 13, 1000)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [currencyFK]) VALUES (N'', N'Johnny', N'Maccaroni', N'Cheese', 24, 0xE6100000010CB70BCD751AC14B408CF84ECC7AF94640, N'6666666', 1000.0000, 1)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [currencyFK]) VALUES (N'102939', N'Johnn', N'Johhn', N'joaaan', 92, NULL, N'1293566', 100000.0000, NULL)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [currencyFK]) VALUES (N'2', N'Johana', N'Maria', N'Carmela', 20, NULL, N'1235679', 100.0000, 1)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [currencyFK]) VALUES (N'23', N'John', N'Johnny', N'Michael', 30, 0xE6100000010C475A2A6F47644440A4703D0AD77D52C0, N'129356', 234.0000, 1)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [currencyFK]) VALUES (N'3', N'Marco', N'Madrigal', N'Mendoza', 45, NULL, N'1939199', 9222.0000, 1)
INSERT [dbo].[UserInformation] ([identification], [name], [surname_1], [surname_2], [age], [location], [phone], [cash], [currencyFK]) VALUES (N'5', N'Julian', N'Gonzales', N'Arraziaga', 23, NULL, N'1389193', 2822.0000, 1)
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([id], [description], [ReviewDate], [rating], [idWhiskeyFK], [idUserFK]) VALUES (4, N'Very good whiskey!', CAST(N'2022-06-19' AS Date), 10, 13, N'23')
INSERT [dbo].[Review] ([id], [description], [ReviewDate], [rating], [idWhiskeyFK], [idUserFK]) VALUES (5, N'Very good whiskey!', CAST(N'2022-06-19' AS Date), 10, 10, N'23')
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[Claim] ON 

INSERT [dbo].[Claim] ([id], [dateClaim], [descriptionClaim], [resolved], [goodTerms]) VALUES (3, CAST(N'2022-03-20' AS Date), N'My item was half drank', 0, 0)
INSERT [dbo].[Claim] ([id], [dateClaim], [descriptionClaim], [resolved], [goodTerms]) VALUES (4, CAST(N'2022-03-20' AS Date), N'No Item was received', 0, 0)
SET IDENTITY_INSERT [dbo].[Claim] OFF
GO
SET IDENTITY_INSERT [dbo].[SaleDetail] ON 

INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (1, 1, 100.0000, 10, 1)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (2, 3, 0.0000, NULL, 1)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (3, 4, 0.0000, 14, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (4, 2, 123.0000, 15, NULL)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (5, 2, 123.0000, 15, 5)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (6, 2, 123.0000, 15, NULL)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (8, 3, 123.0000, 10, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (10, 3, 123.0000, 10, 13)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (12, 10, 123.0000, 10, 13)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (13, 6, 123.0000, 10, 13)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (14, 10, 24.0000, 10, 13)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (15, 3, 123.0000, 13, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (16, 1, 90.0000, 14, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (17, 23, 5.0000, 15, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (18, 9, 24.0000, 10, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (19, 25, 24.0000, 10, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (20, 99, 24.0000, 10, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (21, 2, 90.0000, 14, 2)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (22, 1, 24.0000, 10, 14)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (23, 1, 5.0000, 15, 15)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (24, 1, 90.0000, 14, 16)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (25, 1, 123.0000, 13, 17)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (26, 2, 5.0000, 15, 18)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (1026, 9, 90.0000, 14, 18)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (1027, 3, 24.0000, 10, 19)
INSERT [dbo].[SaleDetail] ([id], [quantity], [price], [idWhiskeyFK], [idSaleFK]) VALUES (1028, 5, 123.0000, 13, 19)
SET IDENTITY_INSERT [dbo].[SaleDetail] OFF
GO
