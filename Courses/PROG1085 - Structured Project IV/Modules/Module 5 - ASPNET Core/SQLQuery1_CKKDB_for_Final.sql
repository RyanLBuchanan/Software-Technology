USE [CKKDB]
GO
/****** Object:  Table [dbo].[CategoryTbl]    Script Date: 10/10/2022 1:48:37 PM 
******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTbl](
[CategoryId] [int] NOT NULL,
[CategoryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_CategoryTbl] PRIMARY KEY CLUSTERED 
(
[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTbl]    Script Date: 10/10/2022 1:48:37 PM 
******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTbl](
[CustomerId] [int] NOT NULL,
[CustomerName] [nvarchar](max) NULL,
[CustomerTelephone] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomerTbl_1] PRIMARY KEY CLUSTERED 
(
[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameTbl]    Script Date: 10/10/2022 1:48:37 PM 
******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameTbl](
[NameId] [int] NOT NULL,
[ProductName] [nvarchar](max) NULL,
 CONSTRAINT [PK_NameTbl] PRIMARY KEY CLUSTERED 
(
[NameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/10/2022 1:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
[OrderId] [int] NOT NULL,
[OrderNumber] [varchar](50) NOT NULL,
[CustomerId] [int] NOT NULL,
[ShoppingCartId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/10/2022 1:48:37 PM 
******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
[Id] [int] IDENTITY(1,1) NOT NULL,
[Name] [nvarchar](max) NULL,
[Description] [nvarchar](max) NULL,
[Price] [decimal](19, 2) NOT NULL,
[Quantity] [int] NOT NULL,
[Category] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 10/10/2022 1:48:37
PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItems](
[Id] [int] IDENTITY(1,1) NOT NULL,
[ShoppingCartId] [int] NOT NULL,
[ProductId] [int] NOT NULL,
[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCartItems] PRIMARY KEY CLUSTERED 
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTbl]    Script Date: 10/10/2022 1:48:37 PM 
******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTbl](
[UId] [int] IDENTITY(1,1) NOT NULL,
[Username] [nvarchar](max) NULL,
[Upassword] [nvarchar](max) NOT NULL,
[Utelephone] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserTbl] PRIMARY KEY CLUSTERED 
(
[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO