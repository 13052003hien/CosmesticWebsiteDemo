USE [WebBanMiPham]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ShippingAddress] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/18/2024 9:20:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240417040223_initdb', N'8.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'{D0AA56BC-C559-409E-A23B-5D3F7C96E829}', N'Admin', NULL, NULL)
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'990417959175733', N'Facebook', N'7c85c7f9-af7b-4b53-b43c-57fb523fb6bc')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1e5b9296-f275-4535-b2a2-6a2adf679088', N'{D0AA56BC-C559-409E-A23B-5D3F7C96E829}')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [FirstName], [LastName], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1e5b9296-f275-4535-b2a2-6a2adf679088', NULL, NULL, NULL, NULL, N'hienxadoi2021@gmail.com', N'HIENXADOI2021@GMAIL.COM', N'hienxadoi2021@gmail.com', N'HIENXADOI2021@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFSiaRaE/S8sWYhqTJm6L9KO4XRb+JdZmaCHnJ3c9Fa6WjCZxPBQpw/Y/7bsJoHJ0g==', N'IXHWUHPIGVFQVBRDIXKYUSH7KHZDDLQI', N'fac222a8-bc12-496f-8516-517641502847', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [FirstName], [LastName], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5a1bfe85-7a79-4115-8cb8-34cd8d66964c', NULL, NULL, NULL, NULL, N'hienxadoi2020@gmail.com', N'HIENXADOI2020@GMAIL.COM', N'hienxadoi2020@gmail.com', N'HIENXADOI2020@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJ1ZJLP3JodsPQ13fLNcJ+8rcNXyy0USlF5CLAGmYoMbsOLl5l1Rnb0XEGQJLuOZKA==', N'53UGRXUVTPQEBZVAFZHF5KD65NB22SFS', N'2b8de3ce-24cb-48d9-8d2a-700844336b84', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [FirstName], [LastName], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7c85c7f9-af7b-4b53-b43c-57fb523fb6bc', NULL, NULL, NULL, NULL, N'tranthanhhien1305@gmail.com', N'TRANTHANHHIEN1305@GMAIL.COM', N'tranthanhhien1305@gmail.com', N'TRANTHANHHIEN1305@GMAIL.COM', 0, NULL, N'SLXDZP42C3RXTGMWR5NKA6YT7B2L5MPW', N'5e9662e0-4601-41fa-8539-57848b3a453b', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [FirstName], [LastName], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'97fde04c-35e8-4bf1-bffc-e6a54591e56d', NULL, NULL, NULL, NULL, N'hienxadoi2022@gmail.com', N'HIENXADOI2022@GMAIL.COM', N'hienxadoi2022@gmail.com', N'HIENXADOI2022@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGh6dHlqvexkzxtwatevBpIdWtDXZaFhjnzZWj0bjU0pV+8CA/ANnnSS/dDil5Fv7w==', N'23HRVIWSO7NEJJPEBC4OWCYBJL2ZJV2Z', N'1d2384ef-b3a9-452d-aefd-0e01315d19ba', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [FirstName], [LastName], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bee5777d-d1cb-4604-a0e0-cd5a4d9de5d1', NULL, NULL, NULL, NULL, N'bichceo@gmail.com', N'BICHCEO@GMAIL.COM', N'bichceo@gmail.com', N'BICHCEO@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEA2Neuhunbz1dMfSvVk7KAGrnOtMLkxNF51iIhqHa5Rlq3JVsis3QQ2WJL35tS2fuQ==', N'JJTACB7OJKETQFOZC6KCPAO6YQWFT527', N'72cad679-4fe9-4137-9f0e-00303164be97', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Bí Đao ')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Nghệ Hưng Yên')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Cà phế Dắk Lắk')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Hoa Hồng')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Bưởi ')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 
GO
INSERT [dbo].[Contacts] ([Id], [Email], [Name], [Phone], [Message]) VALUES (1, N'bichceo1@gmail.com', N'bich ', N'0127617823', N'do an 10 diem 
')
GO
INSERT [dbo].[Contacts] ([Id], [Email], [Name], [Phone], [Message]) VALUES (2, N'kieuceo100@gmail.com', N'kieu', N'06237812', N'kieu dam bome bon m h ')
GO
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Phone], [Notes]) VALUES (8, N'1e5b9296-f275-4535-b2a2-6a2adf679088', CAST(N'2024-04-17T09:37:05.3571087' AS DateTime2), CAST(295000.00 AS Decimal(18, 2)), N'ninh bình', N'02878937', N'COD')
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Phone], [Notes]) VALUES (9, N'1e5b9296-f275-4535-b2a2-6a2adf679088', CAST(N'2024-04-17T09:38:13.0790463' AS DateTime2), CAST(375000.00 AS Decimal(18, 2)), N'tphcm', N'0981741', N'vnpay ')
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Phone], [Notes]) VALUES (10, N'1e5b9296-f275-4535-b2a2-6a2adf679088', CAST(N'2024-04-17T09:39:57.2815624' AS DateTime2), CAST(295000.00 AS Decimal(18, 2)), N'ha noi ', N'018931873716', N'bom hang')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (20, N'Nước tẩy trang bí đao ml', CAST(295000.00 AS Decimal(18, 2)), N'"Làn da dầu và mụn rất nhạy cảm nên cần được thiết kế một loại nước tẩy trang phù hợp.  Với công nghệ Micellar, nước tẩy trang bí đao giúp làm sạch hiệu quả lớp trang điểm, bụi bẩn và dầu thừa, mang lại làn da sạch hoàn toàn và dịu nhẹ. Thích hợp với  Da dầu, da mụn, da hỗn hợp thiên dầu Thành phần chính Với chiết xuất bí đao, Rau má và Tràm trà"', N'/images/Nước tẩy trang bí đao.jpg', 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (21, N'Gel bí đao rửa mặt 310ml', CAST(295000.00 AS Decimal(18, 2)), N'"Với các thành phần gồm bí đao, rau má, tràm trà, bổ sung thêm Vitamin B3, B5 và Betaine.  Gel bí đao có pH 5.5 giúp làm sạch sâu bụi bẩn và dầu thừa, làm giảm việc hình thành mụn mà vẫn giữ được độ ẩm mịn tự nhiên và không gây khô da sau khi sử dụng. Thích hợp với Da dầu, da hỗn hợp thiên dầu, da mụn Thành phần chính Với bí đao, rau má và tràm trà"', N'/images/Gel bí đao rửa mặt 310ml.jpg', 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (22, N'Nước bí đao cân bằng da 310ml', CAST(295000.00 AS Decimal(18, 2)), N'"Nhờ các thành phần gồm bí đao, rau má và tràm trà, nước bí đao với công thức không chứa cồn có tác dụng cân bằng pH,  giảm dầu, làm sạch lỗ chân lông, cải thiện tình trạng mụn. Sản phẩm còn được bổ sung thêm Vitamin B3, HA  và chiết xuất cam thảo giúp cấp ẩm cho làn da luôn mịn màng và giảm thiểu các vết đỏ trên da. Thích hợp với Da dầu, da mụn, da hỗn hợp thiên dầu Thành phần chính Với rau má và Tràm trà"', N'/images/Nước bí đao cân bằng da 310ml.jpg', 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (23, N'Mặt nạ bí đao 100ml', CAST(345000.00 AS Decimal(18, 2)), N'"Mặt nạ bí đao gồm thành phần chính là bí đao thanh mát,  bổ sung thêm rau má và tinh dầu tràm trà giúp giảm nhờn,  làm thông thoáng lỗ chân lông, cải thiện nhanh tình trạng mụn, làm dịu vết đỏ, mang lại làn da sạch mụn và mịn màng. Thích hợp với Da dầu, da mụn, da hỗn hợp thiên dầu Thành phần chính Với chiết xuất bí đao, Rau má và Tràm trà"', N'/images/Mặt nạ bí đao 100ml.jpg', 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (24, N'Nước tẩy trang hoa hồng 310ml', CAST(245000.00 AS Decimal(18, 2)), N'"Một công thức có tỉ lệ cân bằng từ nước cất hoa hồng hữu cơ, vitamin B5 và astaxanthin hoà quyện trong hệ nhũ hoá siêu nhỏ giúp tẩy sạch lớp trang điểm lâu trôi chỉ trong một bước,  hỗ trợ cấp ẩm, làm mềm và làm dịu, mang lại làn da sạch sẽ và tươi mới. Thích hợp với Mọi loại da Thành phần chính Nước cất hoa hồng hữu cơ, Vitamin B5 & Astaxanthin"', N'/images/Nước tẩy trang hoa hồng 310ml.jpg', 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (25, N'Gel rửa mặt hoa hồng 140ml', CAST(195000.00 AS Decimal(18, 2)), N'"Với công thức dịu nhẹ không sulfate, đây là sản phẩm rửa mặt lý tưởng hàng ngày giúp làm sạch bụi bẩn  và các tạp chất mà không làm mất đi độ ẩm cần thiết của da, giúp bổ sung ẩm và mang lại làn da mềm mịn sau khi sử dụng. Thích hợp với Da khô, Da hỗn hợp thiên khô, Da thường Thành phần chính Nước cất hoa hồng hữu cơ, Betaine, Chiết xuất hoa hồng"', N'/images/Gel rửa mặt hoa hồng 140ml.jpg', 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (26, N'Thạch hoa hồng dưỡng ẩm 100ml', CAST(385000.00 AS Decimal(18, 2)), N'"Với kết cấu mọng nước mang nhiều dưỡng chất từ nước hoa hồng hữu cơ kết hợp với nam châm dưỡng ẩm Pentavitin,  các axit amin và HA, thạch hoa hồng sẽ nuôi dưỡng và khóa ẩm suốt 24 giờ, mang lại làn da đầy đặn, mềm mượt và mịn màng. Thích hợp với Da khô, Da hỗn hợp thiên khô, Da thường Thành phần chính Nước hoa hồng hữu cơ, Axit amin, Pentavitin và HA"', N'/images/Thạch hoa hồng dưỡng ẩm 100ml.jpg', 4)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (27, N'Gel rửa mặt cà phê Đắk Lắk 310ml', CAST(295000.00 AS Decimal(18, 2)), N'"Với công thức dịu nhẹ không chứa sulfate, gel rửa mặt cà phê Đắk Lắk có khả năng làm sạch hiệu quả mà không gây khô da,  mang lại cảm giác sảng khoái cùng một làn da tươi mới, sạch thoáng và trông tràn đầy sinh lực để bắt đầu một ngày mới. Thích hợp với Mọi loại da Thành phần chính Dầu cà phê, caffeine & các axít amin."', N'/images/Gel rửa mặt cà phê Đắk Lắk 310ml.jpg', 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (28, N'Cà phê Đắk Lắk làm sạch da chết mặt 150ml', CAST(165000.00 AS Decimal(18, 2)), N'"Những hạt cà phê Đắk Lắk xay nhuyễn giàu cafeine hòa quyện với bơ cacao Tiền Giang giúp bạn loại bỏ lớp tế bào chết già cỗi và xỉn màu,  đánh thức làn da tươi mới đầy năng lượng cùng cảm giác mượt mà và mềm mịn lan tỏa. Thích hợp với Mọi loại da Thành phần chính Hạt cà phê nguyên chất và bơ ca cao "', N'/images/Cà phê Đắk Lắk làm sạch da chết mặt 150ml.jpg', 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (29, N'Cà phê Đắk Lắk làm sạch da chết môi 5g', CAST(75000.00 AS Decimal(18, 2)), N'"Chúng tôi tự hào khi mang những hạt cà phê Đắk Lắk được rang xay bằng tay vào sản phẩm chăm sóc môi đặc biệt này,  những hạt cà phê li ti hòa quyện vào dầu mắc-ca và bơ hạt mỡ sẽ nhẹ nhàng làm bong những tế bào da chết ở môi, đem lại làn môi mềm và mịn màng. Thích hợp với Da môi Thành phần chính Với hạt cà phê nguyên chất xay mịn, dầu mắc - ca và bơ hạt mỡ"', N'/images/Cà phê Đắk Lắk làm sạch da chết môi 5g.jpg', 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (30, N'Cà phê Đắk Lắk làm sạch da chết cơ thể 200ml', CAST(99000.00 AS Decimal(18, 2)), N'"Hạt cà phê nguyên chất từ Đắk Lắk kết hợp với bơ ca cao Tiền Giang giúp làm sạch da chết cơ thể hiệu quả,  làm đều màu da, khơi dậy năng lượng giúp da trở nên mềm mịn và rạng rỡ. Thích hợp với Mọi loại da cơ thể Thành phần chính Với hạt cà phê nguyên chất và Bơ ca cao"', N'/images/Cà phê Đắk Lắk làm sạch da chết cơ thể 200ml.jpg', 3)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (31, N'Nước dưỡng tóc tinh dầu bưởi 310ml', CAST(325000.00 AS Decimal(18, 2)), N'"Từ tinh dầu vỏ bưởi truyền thống Việt Nam kết hợp với hoạt chất Xylishine, Baicapil, Vitamin B5 và Bisabolol,  nước dưỡng tóc tinh dầu bưởi giúp cải thiện trình trạng tóc gãy rụng, nuôi dưỡng chân tóc  và cung cấp độ ẩm cần thiết cho mái tóc luôn suôn mượt, mềm mại. Thích hợp với Tóc yếu gãy rụng Thành phần chính Tinh dầu vỏ bưởi nguyên chất, Vitamin B5 (Panthenol), Xylishine, Baicapil, Bisabolol."', N'/images/Nước dưỡng tóc tinh dầu bưởi 310ml.jpg', 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (32, N'Dầu gội bưởi không sulfate 500ml', CAST(375000.00 AS Decimal(18, 2)), N'"Từ tinh dầu vỏ bưởi Việt Nam truyền thống kết hợp với vitamin B5, hoạt chất dưỡng ẩm Xylishine™ cùng công thức dịu nhẹ không chứa sulfate,  dầu gội bưởi giúp làm sạch tóc và giảm gãy rụng, mang lại mái tóc đen dày, chắc khoẻ và mượt mà. Thích hợp với Mọi loại tóc Thành phần chính Tinh dầu bưởi, Vitamin B5, Xylishine™ và Axít amin"', N'/images/Dầu gội bưởi không sulfate 500ml.jpg', 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (33, N'Dầu xả bưởi 310ml', CAST(185000.00 AS Decimal(18, 2)), N'"Sự kết hợp hài hoà giữa tinh dầu bưởi Việt Nam truyền thống, vitamin B5 và hoạt chất dưỡng ẩm Xylishine™ đã tạo nên dầu xả bưởi giàu dưỡng chất  giúp giảm gãy rụng và làm mềm từng sợi tóc, mang lại mái tóc mượt mà và nhẹ nhàng sau khi xả. Thích hợp với Mọi loại tóc Thành phần chính Tinh dầu vỏ bưởi, Xylishine™, Vitamin B5 (D-panthenol), Axít amin"', N'/images/Dầu xả bưởi 310ml.jpg', 5)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (34, N'Sữa rửa mặt nghệ Hưng Yên 310ml', CAST(295000.00 AS Decimal(18, 2)), N'"Với công thức dịu nhẹ không Sulfate, sữa rửa mặt từ nghệ Hưng Yên giúp làm sạch hiệu quả mà khôn Thích hợp với Mọi loại da Thành phần chính Chiết xuất nghệ, cà rốt và AHAg gây khô da,  đồng thời hỗ trợ làm sạch tế bào chết, mang lại làn da đều màu, mềm mịn và tươi sáng rạng rỡ. "', N'/images/Sữa rửa mặt nghệ Hưng Yên 310ml.jpg', 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (35, N'Nước nghệ Hưng Yên 310ml', CAST(295000.00 AS Decimal(18, 2)), N'"Được chiết xuất từ củ nghệ canh tác tại Hưng Yên, kết hợp với AHA và hoạt chất dưỡng ẩm betaine,  nước nghệ cung cấp độ ẩm cần thiết, mang lại làn da sáng mịn và đều màu. Thích hợp với Mọi loại da Thành phần chính Chiết xuất nghệ, AHA 5%, Betaine"', N'/images/Nước nghệ Hưng Yên 310ml.jpg', 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (36, N'Mặt nạ nghệ Hưng Yên 100ml', CAST(345000.00 AS Decimal(18, 2)), N'"Mặt nạ từ tinh bột nghệ giàu Curcuminoid kết hợp với Vitamin B3 và chiết xuất yến mạch rất phù hợp cho làn da xỉn màu và có nhiều vết thâm.  Sau khi rửa đi lớp mặt nạ, bạn sẽ nhìn thấy một làn da tươi mới, sáng rạng rỡ và đều màu. Thích hợp với Mọi loại da Thành phần chính Với tinh bột nghệ, Yến mạch và Vitamin B3"', N'/images/Mặt nạ nghệ Hưng Yên 100ml.jpg', 2)
GO
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [CategoryId]) VALUES (37, N'Tinh chất nghệ Hưng Yên C22 30ml', CAST(465000.00 AS Decimal(18, 2)), N'"Chiết xuất nghệ Hưng Yên cùng các thành phần hoạt tính gồm 22% dẫn xuất vitamin C EAA bền vững, 1% hexylresorcinol và 4% vitamin B3 giúp làm sáng da và mờ vết thâm nhanh chóng.  Làn da trở nên đều màu và sáng rạng rỡ trông thấy. Thích hợp với Mọi loại da Thành phần chính Chiết xuất nghệ, 22% Vitamin C (3-O-Ethyl Ascorbic Acid), 1% Hexylresorcinol, 4% Vitamin B3 (Niacinamide), 2% Acetyl Glucosamine (NAG) và 0.5% Ferulic Acid."', N'/images/Tinh chất nghệ Hưng Yên C22 30ml.jpg', 2)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO