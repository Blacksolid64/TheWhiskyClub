--User Type
INSERT INTO [dbo].[UserType]
           ([name])
     VALUES
           ('Admin')

		   
INSERT INTO [dbo].[UserType]
           ([name])
     VALUES
           ('Worker')


INSERT INTO [dbo].[UserType]
           ([name])
     VALUES
           ('User')
--Subscription Type

INSERT INTO [dbo].[Subscription]
           ([price]
           ,[duration]
           ,[discountShop]
           ,[discountDelivery]
           ,[specialWhiskeys]
           ,[notifications]
           ,[giftWhiskeys]
           ,[Gift_count],
		   [name])
     VALUES
           (20
           ,30
           ,5
           ,0
           ,0
           ,1
           ,0
           ,0
		   ,'Short Glass')


--User
INSERT INTO [dbo].[User]
           ([email]
           ,[password]
           ,[idUserTypeFK]
           )
     VALUES
           ('Testing@gaa.com'
           ,'UnHash'
           ,3
            )


