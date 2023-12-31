USE [master]
GO
/****** Object:  Database [ProjectPRJ_W9]    Script Date: 11/22/2023 9:27:32 AM ******/
CREATE DATABASE [ProjectPRJ_W9]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectPRJ_W9', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectPRJ_W9.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectPRJ_W9_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectPRJ_W9_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectPRJ_W9] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectPRJ_W9].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectPRJ_W9] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjectPRJ_W9] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectPRJ_W9] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectPRJ_W9] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectPRJ_W9] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectPRJ_W9] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectPRJ_W9] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectPRJ_W9] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectPRJ_W9] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectPRJ_W9] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectPRJ_W9] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectPRJ_W9] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectPRJ_W9] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProjectPRJ_W9] SET QUERY_STORE = OFF
GO
USE [ProjectPRJ_W9]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/22/2023 9:27:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 11/22/2023 9:27:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/22/2023 9:27:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[cid] [int] NOT NULL,
	[totalmoney] [money] NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 11/22/2023 9:27:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[oid] [int] NOT NULL,
	[pid] [int] NOT NULL,
	[quantity] [float] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_OrderLine] PRIMARY KEY CLUSTERED 
(
	[oid] ASC,
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/22/2023 9:27:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[catalog_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [nvarchar](4000) NOT NULL,
	[discount] [int] NULL,
	[image_link] [nvarchar](4000) NOT NULL,
	[created] [date] NOT NULL,
	[sold] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/22/2023 9:27:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [username], [password], [name]) VALUES (1, N'admin', N'admin', N'Xuân HIệp')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog] ON 

INSERT [dbo].[Catalog] ([id], [name]) VALUES (1, N'flower')
INSERT [dbo].[Catalog] ([id], [name]) VALUES (2, N'bouquet')
INSERT [dbo].[Catalog] ([id], [name]) VALUES (3, N'basket')
INSERT [dbo].[Catalog] ([id], [name]) VALUES (4, N'wedding')
SET IDENTITY_INSERT [dbo].[Catalog] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (1, CAST(N'2023-07-18' AS Date), 1, 125000.0000, N'Received')
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (2, CAST(N'2023-07-19' AS Date), 1, 0.0000, N'Received')
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (3, CAST(N'2023-07-19' AS Date), 1, 0.0000, N'Received')
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (4, CAST(N'2023-07-19' AS Date), 1, 12000.0000, N'Received')
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (5, CAST(N'2023-07-19' AS Date), 1, 50000.0000, N'Received')
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (6, CAST(N'2023-07-19' AS Date), 2, 0.0000, N'Received')
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (7, CAST(N'2023-07-19' AS Date), 2, 10000.0000, N'Received')
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (8, CAST(N'2023-07-19' AS Date), 1, 680000.0000, N'Received')
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney], [status]) VALUES (9, CAST(N'2023-07-19' AS Date), 1, 11000.0000, N'Received')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1, 1, 5, 6000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1, 2, 5, 5000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1, 24, 1, 70000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4, 1, 2, 6000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5, 2, 10, 5000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (7, 2, 1, 5000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (7, 3, 1, 5000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (8, 20, 1, 300000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (8, 21, 1, 50000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (8, 22, 1, 300000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (8, 23, 1, 30000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (9, 1, 1, 6000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (9, 2, 1, 5000)
GO
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (1, 1, N'Pink rose', 6000, 92, N'Hoa hồng phấn', NULL, N'hongphan.jpg', CAST(N'2023-07-09' AS Date), 56)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (2, 1, N'Yellow rose', 5000, 78, N'Hoa hồng vàng', NULL, N'hongvang.jpg', CAST(N'2023-07-09' AS Date), 41)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (3, 1, N'White rose', 5000, 97, N'Hoa hồng trắng', NULL, N'bachhong.jpg', CAST(N'2023-07-09' AS Date), 27)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (4, 1, N'Red lily', 20000, 99, N'Hoa ly đỏ 5 tai', NULL, N'lydo.jpg', CAST(N'2023-07-09' AS Date), 46)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (5, 1, N'Yellow lily', 15000, 100, N'Hoa ly vàng 3 tai', NULL, N'lyvang.jpg', CAST(N'2023-07-09' AS Date), 20)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (6, 1, N'Yellow chrysanthemum', 4000, 100, N'Hoa cúc đại đóa', NULL, N'cucvang.jpg', CAST(N'2023-07-09' AS Date), 60)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (7, 1, N'White chrysanthemum', 4000, 100, N'Hoa cúc trắng', NULL, N'cuctrang.jpg', CAST(N'2023-07-09' AS Date), 32)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (8, 1, N'Pink lisianthus', 100000, 100, N'1 bó 10 cành hoa lan tường hồng', NULL, N'lantuonghong.jpg', CAST(N'2023-07-09' AS Date), 26)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (9, 1, N'Purple lisianthus', 100000, 100, N'1 bó 10 cành hoa lan tường tím', NULL, N'lantuongtim.jpg', CAST(N'2023-07-09' AS Date), 17)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (10, 1, N'Green lisianthus', 100000, 100, N'1 bó 10 cành hoa lan tường xanh', NULL, N'lantuongxanh.jpg', CAST(N'2023-07-09' AS Date), 22)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (11, 1, N'Tuberose', 70000, 50, N'1 bó 5 cành hoa huệ ta', NULL, N'hoahue.jpg', CAST(N'2023-07-09' AS Date), 8)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (12, 2, N'Cabbage flowers', 150000, 5, N'Bông bắp cải tím được bó xung quanh bởi hoa baby trắng thành bó tròn', NULL, N'bobapcai.jpg', CAST(N'2023-07-09' AS Date), 5)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (13, 2, N'Red lily', 120000, 2, N'Hoa ly đỏ cắm cao với hoa baby che phần gốc cúng lá cắm hoa ', NULL, N'boly.jpg', CAST(N'2023-07-09' AS Date), 2)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (14, 2, N'Rose bouquet', 100000, 4, N'Hoa ha≫“ng bA3 xem lao≪n va≫?i lan tA°a≫?ng vA? hoa baby', NULL, N'bohong.jpg', CAST(N'2023-07-09' AS Date), 7)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (15, 2, N'Purple orchids and rose', 200000, 6, N'Hoa lan tA-m cao￣m cao, dA°a≫?i chA￠n lA? hoa ha≫“ng', NULL, N'bolantimvahong.jpg', CAST(N'2023-07-09' AS Date), 5)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (16, 3, N'Rose heartshape', 250000, 5, N'Hoa ha≫“ng A‘a≫? cao￣m thA?nh hA￢nh trA!i tim, bao quanh lA? hoa baby', NULL, N'heartshape.jpg', CAST(N'2023-07-09' AS Date), 10)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (17, 3, N'White and pink rose', 200000, 2, N'Hoa ha≫“ng trao￣ng vA? ha≫“ng cao￣m xA2e ra≫?ng, A‘an xen hoa baby vA? lA! cao￣m hoa a≫? xung quanh', NULL, N'langhong.jpg', CAST(N'2023-07-09' AS Date), 7)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (18, 3, N'Orchids and sunflower', 200000, 3, N'Laoμng 2 tao§ng va≫?i tao§ng trAan lA? hoa lan vA?ng, tao§ng dA°a≫?i cha≫§ A‘ao!o lA? hoa hA°a≫?ng dA°A!ng cA1ng va≫?i ly vA?ng', NULL, N'langlanvaly.jpg', CAST(N'2023-07-09' AS Date), 6)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (19, 3, N'Orchids and rose', 180000, 4, N'Tao§ng trAan lA? hoa lan tA-m, tao§ng dA°a≫?i lA? hoa ly A‘a≫? vA? ha≫“ng via≫?n, hoa lan vA?ng xA2e ra≫?ng ', NULL, N'langlanvahong.jpg', CAST(N'2023-07-09' AS Date), 5)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (20, 4, N'Wedding car', 300000, 0, N'Hoa trang trA- A‘ao§u xe ', NULL, N'xehoa.jpg', CAST(N'2023-07-09' AS Date), 2)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (21, 4, N'Wedding bouquet', 50000, 0, N'Hoa cao§m tay ca≫§a cA´ dA￠u va≫?i mA?u cha≫§ A‘ao!o lA? mA?u ha≫“ng ta≫≪ hoa ha≫“ng nhao!t vA? hoa A‘a≫“ng tia≫?n mA?u ha≫“ng', NULL, N'hoacodau.jpg', CAST(N'2023-07-09' AS Date), 2)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (22, 4, N'Flower gate', 300000, 0, N'Ca≫?ng hoa cA°a≫?i ga≫“m 1 bAan cao 1 bAan thao\p hA!n nhA°ng vao≪n tao!o thA?nh hA￢nh vA2ng cung	', NULL, N'conghoa.jpg', CAST(N'2023-07-09' AS Date), 2)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (23, 4, N'Table flower', 30000, 9, N'BA!t hoa nha≫? A‘a≫? a≫? bA?n tiao?p khA!ch', NULL, N'hoadeban.jpg', CAST(N'2023-07-09' AS Date), 2)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (24, 4, N'Big table flower', 70000, 1, N'BA!t hoa la≫?n A‘a≫? a≫? bA?n thA´ng gia 2 gia A‘A￢nh', NULL, N'hoadeban2.jpg', CAST(N'2023-07-09' AS Date), 2)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (25, 3, N'Yellow orchid and lily', 250000, 1, N'Laoμng hoa thao\p nhA°ng xA2e ra≫?ng sang 2 bAan, tA´ng mA?u vA?ng A‘ao?n ta≫≪ hoa ly vA? lan, A‘ia≫?m thAam 1 vA?i bA´ng hoa ha≫“ng vA? tAo cao§u', NULL, N'langlanlyvang.jpg', CAST(N'2023-07-09' AS Date), 1)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (26, 1, N'Rose', 5000, 100, N'Hoa hồng đỏ', NULL, N'hongdo.jpg', CAST(N'2023-09-07' AS Date), 50)
INSERT [dbo].[Product] ([id], [catalog_id], [name], [price], [quantity], [description], [discount], [image_link], [created], [sold]) VALUES (27, 1, N'aaa', 1000, 1, N'aaa', 0, N'aaa', CAST(N'2023-07-18' AS Date), 0)
GO
INSERT [dbo].[Users] ([id], [name], [email], [phone], [username], [password], [created]) VALUES (1, N'AAA', N'abc@gmail.com', N'0321681656', N'abc', N'1234', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Users] ([id], [name], [email], [phone], [username], [password], [created]) VALUES (2, N'ABC', N'abc1234@gmail.com', N'0928737331', N'user2', N'123', CAST(N'2023-04-12' AS Date))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Admin__F3DBC57251960D10]    Script Date: 11/22/2023 9:27:32 AM ******/
ALTER TABLE [dbo].[Admin] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E6164F4E04206]    Script Date: 11/22/2023 9:27:32 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__F3DBC5727C5DDF58]    Script Date: 11/22/2023 9:27:32 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([cid])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_Order] FOREIGN KEY([oid])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_Order]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_Product] FOREIGN KEY([pid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([catalog_id])
REFERENCES [dbo].[Catalog] ([id])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [ProjectPRJ_W9] SET  READ_WRITE 
GO
