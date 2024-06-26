USE [master]
GO
/****** Object:  Database [Shopping]    Script Date: 5/19/2024 4:14:00 PM ******/
CREATE DATABASE [Shopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Shopping.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Shopping_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Shopping] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Shopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shopping] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shopping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shopping] SET  MULTI_USER 
GO
ALTER DATABASE [Shopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shopping] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shopping] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shopping] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Shopping] SET QUERY_STORE = OFF
GO
USE [Shopping]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTietDh] [int] IDENTITY(1,1) NOT NULL,
	[MaDh] [int] NULL,
	[MaSp] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [float] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaYt] [int] IDENTITY(1,1) NOT NULL,
	[SoSao] [int] NULL,
	[MaSp] [int] NULL,
	[MaKh] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaYt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDh] [int] IDENTITY(1,1) NOT NULL,
	[TenKh] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[TongTien] [float] NULL,
	[NgayMua] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
	[MaKh] [int] NULL,
	[MaTt] [int] NULL,
	[MaVc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKh] [int] IDENTITY(1,1) NOT NULL,
	[TenKh] [nvarchar](100) NULL,
	[TenTk] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNcc] [int] IDENTITY(1,1) NOT NULL,
	[TenNcc] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNcc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomSanPham]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSanPham](
	[MaNhomSp] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomSp] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhomSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[MaQc] [int] IDENTITY(1,1) NOT NULL,
	[TenQc] [nvarchar](100) NULL,
	[Anh] [nvarchar](max) NULL,
	[Gia] [float] NULL,
	[NhaSanXuat] [nvarchar](100) NULL,
	[Mota] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanTri]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanTri](
	[MaQt] [int] IDENTITY(1,1) NOT NULL,
	[TenQt] [nvarchar](100) NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSp] [int] IDENTITY(1,1) NOT NULL,
	[TenSp] [nvarchar](100) NULL,
	[Anh] [nvarchar](max) NULL,
	[Gia] [float] NULL,
	[MaNcc] [int] NULL,
	[Mota] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
	[MaNhomSp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaTt] [int] IDENTITY(1,1) NOT NULL,
	[TenTt] [nvarchar](100) NULL,
	[Mota] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UaThich]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UaThich](
	[MaUt] [int] IDENTITY(1,1) NOT NULL,
	[MaKh] [int] NULL,
	[MaSp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaUt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VanChuyen]    Script Date: 5/19/2024 4:14:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VanChuyen](
	[MaVc] [int] IDENTITY(1,1) NOT NULL,
	[TenVc] [nvarchar](100) NULL,
	[Gia] [float] NULL,
	[Mota] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaChiTietDh], [MaDh], [MaSp], [SoLuong], [GiaTien], [TrangThai]) VALUES (1, 1, 8, 1, 1000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDh], [MaDh], [MaSp], [SoLuong], [GiaTien], [TrangThai]) VALUES (2, 2, 2, 1, 1000000, 1)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDh], [TenKh], [Email], [DiaChi], [SoDienThoai], [TongTien], [NgayMua], [TrangThai], [MaKh], [MaTt], [MaVc]) VALUES (1, N'Lâm Bá Phúc', N'lambaphuc123@gmail.com', N'Long An', N'983760405', 1030000, N'2024-05-19 15:42:57.576', 1, 1, 1, 1)
INSERT [dbo].[DonHang] ([MaDh], [TenKh], [Email], [DiaChi], [SoDienThoai], [TongTien], [NgayMua], [TrangThai], [MaKh], [MaTt], [MaVc]) VALUES (2, N'Lâm Bá Phúc', N'lambaphuc123@gmail.com', N'Long An', N'983760405', 1030000, N'2024-05-19 15:45:08.41', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKh], [TenKh], [TenTk], [MatKhau], [DiaChi], [SoDienThoai], [Email], [TrangThai]) VALUES (1, N'Lâm Bá Phúc', N'lbp111', N'123456', N'Long An', 983760405, N'lambaphuc123@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNcc], [TenNcc], [TrangThai]) VALUES (1, N'Asus', 1)
INSERT [dbo].[NhaCungCap] ([MaNcc], [TenNcc], [TrangThai]) VALUES (2, N'Samsung', 1)
INSERT [dbo].[NhaCungCap] ([MaNcc], [TenNcc], [TrangThai]) VALUES (3, N'LG', 1)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhomSanPham] ON 

INSERT [dbo].[NhomSanPham] ([MaNhomSp], [TenNhomSp], [TrangThai]) VALUES (1, N'Laptop', 1)
INSERT [dbo].[NhomSanPham] ([MaNhomSp], [TenNhomSp], [TrangThai]) VALUES (2, N'Điện thoại', 1)
INSERT [dbo].[NhomSanPham] ([MaNhomSp], [TenNhomSp], [TrangThai]) VALUES (3, N'TV', 1)
SET IDENTITY_INSERT [dbo].[NhomSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[QuangCao] ON 

INSERT [dbo].[QuangCao] ([MaQc], [TenQc], [Anh], [Gia], [NhaSanXuat], [Mota], [TrangThai]) VALUES (1, N'Dell-Insprison', N'https://cdn.tgdd.vn/Products/Images/44/321192/dell-inspiron-15-3520-i5-25p231-250424-020344-600x600.jpg', 100000000, N'Dell', N'...', 1)
INSERT [dbo].[QuangCao] ([MaQc], [TenQc], [Anh], [Gia], [NhaSanXuat], [Mota], [TrangThai]) VALUES (2, N'ASUS Expertbook', N'https://product.hstatic.net/200000722513/product/avaa_30445ba7fd854cf3bd3466ced4524345_1024x1024.png', 1000000, N'Asus', N'...', 1)
SET IDENTITY_INSERT [dbo].[QuangCao] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [MaNcc], [Mota], [TrangThai], [MaNhomSp]) VALUES (1, N'Laptop Asus Vivobook', N'https://cdn.mediamart.vn/images/product/laptop-asus-vivobook-a515ea-bq1530w_9f8ffa98.jpg', 2500000, 1, N'...', 1, 1)
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [MaNcc], [Mota], [TrangThai], [MaNhomSp]) VALUES (2, N'Laptop Asus TUF Gaming A15', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_20__4_7.png', 1040000, 1, N'...', 1, 1)
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [MaNcc], [Mota], [TrangThai], [MaNhomSp]) VALUES (3, N'Laptop ASUS ROG Zephyrus', N'https://product.hstatic.net/1000233206/product/laptop-asus-rog-zephyrus-g16-gu605my-qr041x_3ca108950ece4f7caa4f6339d94711b8.png', 3300000, 1, N'...', 1, 1)
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [MaNcc], [Mota], [TrangThai], [MaNhomSp]) VALUES (4, N'Samsung Galaxy M14', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-m14.png', 500000, 2, N'...', 1, 2)
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [MaNcc], [Mota], [TrangThai], [MaNhomSp]) VALUES (5, N'Samsung Galaxy S24 Ultra', N'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/s/ss-s24-ultra-xam-222.png', 1000000, 2, N'...', 1, 2)
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [MaNcc], [Mota], [TrangThai], [MaNhomSp]) VALUES (6, N'Samsung Galaxy A54 5G', N'https://cdn.hoanghamobile.com/i/preview/Uploads/2023/05/27/anh-chup-man-hinh-2023-05-27-luc-21-07-51-removebg-preview.png', 450000, 2, N'...', 1, 2)
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [MaNcc], [Mota], [TrangThai], [MaNhomSp]) VALUES (7, N'LG Tivi LG UHD UQ7550', N'https://www.lg.com/vn/images/tivi/md07551233/gallery/D-01.jpg', 10000000, 3, N'...', 1, 3)
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [MaNcc], [Mota], [TrangThai], [MaNhomSp]) VALUES (8, N'LG 86UR811C0SB', N'https://www.lg.com/vn/images/tivi/md07585982/gallery/D-01.jpg', 42000000, 3, N'...', 1, 3)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([MaTt], [TenTt], [Mota], [TrangThai]) VALUES (1, N'Thanh toán bằng thẻ tín dụng', N'Bạn có thể trả phí trực tiếp thông qua số tài khoản ATM', 1)
INSERT [dbo].[ThanhToan] ([MaTt], [TenTt], [Mota], [TrangThai]) VALUES (2, N'Thanh toán trực tiếp', N'Bạn có thể trả phí khi nhận được hàng', 1)
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[VanChuyen] ON 

INSERT [dbo].[VanChuyen] ([MaVc], [TenVc], [Gia], [Mota], [TrangThai]) VALUES (1, N'Viettel port', 30000, N'Giao Hàng từ 5 - 10 ngày', 1)
INSERT [dbo].[VanChuyen] ([MaVc], [TenVc], [Gia], [Mota], [TrangThai]) VALUES (2, N'Speed Method', 50000, N'Giao Hàng từ 3 - 5 ngày', 1)
INSERT [dbo].[VanChuyen] ([MaVc], [TenVc], [Gia], [Mota], [TrangThai]) VALUES (3, N'Go Viet', 70000, N'Giao Hàng từ 1 - 3 ngày', 1)
SET IDENTITY_INSERT [dbo].[VanChuyen] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDh])
REFERENCES [dbo].[DonHang] ([MaDh])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSp])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaKh])
REFERENCES [dbo].[KhachHang] ([MaKh])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSp])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKh])
REFERENCES [dbo].[KhachHang] ([MaKh])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaTt])
REFERENCES [dbo].[ThanhToan] ([MaTt])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaVc])
REFERENCES [dbo].[VanChuyen] ([MaVc])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNcc])
REFERENCES [dbo].[NhaCungCap] ([MaNcc])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNhomSp])
REFERENCES [dbo].[NhomSanPham] ([MaNhomSp])
GO
ALTER TABLE [dbo].[UaThich]  WITH CHECK ADD FOREIGN KEY([MaKh])
REFERENCES [dbo].[KhachHang] ([MaKh])
GO
ALTER TABLE [dbo].[UaThich]  WITH CHECK ADD FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSp])
GO
USE [master]
GO
ALTER DATABASE [Shopping] SET  READ_WRITE 
GO
