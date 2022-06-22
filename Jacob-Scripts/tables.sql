USE [WC_USA]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 21/6/2022 20:12:28 ******/
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
	[idSaleFK] [int] NULL,
 CONSTRAINT [PK__Claim__3213E83F7CB088D2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 21/6/2022 20:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usersender] [varchar](50) NULL,
	[Usereceiver] [varchar](50) NULL,
	[description] [varchar](200) NOT NULL,
	[date] [date] NOT NULL,
	[idClaimFK] [int] NULL,
 CONSTRAINT [PK__Messages__3213E83FE5894B13] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD  CONSTRAINT [FK_Claim_Sale] FOREIGN KEY([idSaleFK])
REFERENCES [dbo].[Sale] ([id])
GO
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK_Claim_Sale]
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
