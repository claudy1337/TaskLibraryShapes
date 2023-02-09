USE [ProductsCategoriesDBTask]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09.02.2023 4:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IDCategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IDCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09.02.2023 4:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IDProduct] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsCategories]    Script Date: 09.02.2023 4:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDProduct] [int] NOT NULL,
	[IDCategory] [int] NULL,
 CONSTRAINT [PK_ProductsCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([IDCategory], [Name]) VALUES (1, N'fresh bakery')
INSERT [dbo].[Category] ([IDCategory], [Name]) VALUES (2, N'bakery')
INSERT [dbo].[Category] ([IDCategory], [Name]) VALUES (3, N'milk products')
INSERT [dbo].[Category] ([IDCategory], [Name]) VALUES (4, N'discount')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IDProduct], [Name], [Price]) VALUES (1, N'bread', 30.0000)
INSERT [dbo].[Product] ([IDProduct], [Name], [Price]) VALUES (2, N'milk', 50.0000)
INSERT [dbo].[Product] ([IDProduct], [Name], [Price]) VALUES (3, N'bun', 30.0000)
INSERT [dbo].[Product] ([IDProduct], [Name], [Price]) VALUES (4, N'cheese', 80.0000)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsCategories] ON 

INSERT [dbo].[ProductsCategories] ([ID], [IDProduct], [IDCategory]) VALUES (1, 1, 2)
INSERT [dbo].[ProductsCategories] ([ID], [IDProduct], [IDCategory]) VALUES (2, 3, 1)
INSERT [dbo].[ProductsCategories] ([ID], [IDProduct], [IDCategory]) VALUES (3, 2, 3)
INSERT [dbo].[ProductsCategories] ([ID], [IDProduct], [IDCategory]) VALUES (4, 4, NULL)
INSERT [dbo].[ProductsCategories] ([ID], [IDProduct], [IDCategory]) VALUES (5, 1, 4)
INSERT [dbo].[ProductsCategories] ([ID], [IDProduct], [IDCategory]) VALUES (6, 1, 1)
SET IDENTITY_INSERT [dbo].[ProductsCategories] OFF
GO
ALTER TABLE [dbo].[ProductsCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductsCategories_Category] FOREIGN KEY([IDCategory])
REFERENCES [dbo].[Category] ([IDCategory])
GO
ALTER TABLE [dbo].[ProductsCategories] CHECK CONSTRAINT [FK_ProductsCategories_Category]
GO
ALTER TABLE [dbo].[ProductsCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductsCategories_Product] FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([IDProduct])
GO
ALTER TABLE [dbo].[ProductsCategories] CHECK CONSTRAINT [FK_ProductsCategories_Product]
GO
