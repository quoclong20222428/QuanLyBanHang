USE [master]
GO
/****** Object:  Database [QUANLYBANHANG]    Script Date: 12/12/2024 7:53:44 PM ******/
CREATE DATABASE [QUANLYBANHANG]

ALTER DATABASE [QUANLYBANHANG] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [QUANLYBANHANG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLYBANHANG] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [QUANLYBANHANG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYBANHANG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYBANHANG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYBANHANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYBANHANG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYBANHANG] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYBANHANG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYBANHANG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYBANHANG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYBANHANG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYBANHANG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYBANHANG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QUANLYBANHANG] SET QUERY_STORE = OFF
GO
USE [QUANLYBANHANG]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/12/2024 7:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChatLieu]    Script Date: 12/12/2024 7:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChatLieu](
	[MaChatLieu] [nvarchar](50) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietHDBan]    Script Date: 12/12/2024 7:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHDBan](
	[MaHDBan] [nvarchar](30) NOT NULL,
	[MaSanPham] [nvarchar](50) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonGia] [float] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
	[PhuongThuc] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[MaHDBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHang]    Script Date: 12/12/2024 7:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHang](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MaChatLieu] [nvarchar](50) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonGiaNhap] [float] NOT NULL,
	[DonGiaBan] [float] NOT NULL,
	[Anh] [nvarchar](200) NOT NULL,
	[GhiChu] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHDBan]    Script Date: 12/12/2024 7:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHDBan](
	[MaHDBan] [nvarchar](30) NOT NULL,
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[NgayBan] [datetime] NOT NULL,
	[MaKhach ] [nvarchar](10) NOT NULL,
	[TongTien] [float] NOT NULL,
	[PhuongThuc] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhach]    Script Date: 12/12/2024 7:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhach](
	[MaKhach] [nvarchar](50) NOT NULL,
	[TenKhach] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 12/12/2024 7:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](15) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'admin', N'admin', N'1', 1)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'Long', N'Long', N'123', 2)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'Ngan', N'Ngan Thanh', N'123', 2)
GO
INSERT [dbo].[tblChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL1', N'Cotton')
INSERT [dbo].[tblChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL2', N'Nilon')
INSERT [dbo].[tblChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL3', N'Sợi nhân tạo')
GO
INSERT [dbo].[tblChiTietHDBan] ([MaHDBan], [MaSanPham], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB11162023_203654', N'MH01', 10, 20000, 45, 110000)
INSERT [dbo].[tblChiTietHDBan] ([MaHDBan], [MaSanPham], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB12122023_130409', N'MH01', 2, 20000, 15, 34000)
INSERT [dbo].[tblChiTietHDBan] ([MaHDBan], [MaSanPham], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB12122023_141856', N'MH01', 3, 40000, 15, 102000)
INSERT [dbo].[tblChiTietHDBan] ([MaHDBan], [MaSanPham], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB1222023_234404', N'MH01', 1, 20000, 0, 20000)
INSERT [dbo].[tblChiTietHDBan] ([MaHDBan], [MaSanPham], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB11162023_203654', N'MH02', 1, 50000, 30, 35000)
INSERT [dbo].[tblChiTietHDBan] ([MaHDBan], [MaSanPham], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB12122023_130409', N'MH02', 4, 50000, 0, 200000)
INSERT [dbo].[tblChiTietHDBan] ([MaHDBan], [MaSanPham], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB12172023_0103512', N'MH02', 2, 40000000, 30, 56000000)
INSERT [dbo].[tblChiTietHDBan] ([MaHDBan], [MaSanPham], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HDB12172023_0103512', N'MH03', 1, 1000000000, 0, 1000000000)
GO
INSERT [dbo].[tblHang] ([MaSanPham], [TenSanPham], [MaChatLieu], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'MH01', N'Quần Cotton', N'CL1', 20, 30000, 40000, N'D:\gaubong.jpg', N'ảnh gấu')
INSERT [dbo].[tblHang] ([MaSanPham], [TenSanPham], [MaChatLieu], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'MH02', N'Quần Nilon', N'CL2', 3, 30000000, 40000000, N'D:\chua-mot-cot-ma-vang (1).jpg', N'Hàng siêu cấp cấp cấp sang trọng dành cho khách vip')
INSERT [dbo].[tblHang] ([MaSanPham], [TenSanPham], [MaChatLieu], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu]) VALUES (N'MH03', N'Áo', N'CL3', 9, 25000000, 1000000000, N'D:\b12b01134a70992c8e57dd3a7969db28.jpg', N'hàng tặng không bán')
GO
INSERT [dbo].[tblHDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhach ], [TongTien]) VALUES (N'HDB11162023_203654', N'NV02', CAST(N'2023-11-16T20:36:54.000' AS DateTime), N'KH03', 145000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhach ], [TongTien]) VALUES (N'HDB12122023_130409', N'NV02', CAST(N'2023-12-12T13:04:09.000' AS DateTime), N'KH02', 234000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhach ], [TongTien]) VALUES (N'HDB12122023_141856', N'NV01', CAST(N'2023-12-12T14:18:56.000' AS DateTime), N'KH01', 102000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhach ], [TongTien]) VALUES (N'HDB12172023_0103512', N'NV01', CAST(N'2023-12-17T10:35:12.000' AS DateTime), N'KH01', 1056000000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [MaNhanVien], [NgayBan], [MaKhach ], [TongTien]) VALUES (N'HDB1222023_234404', N'NV01', CAST(N'2023-12-05T23:44:04.000' AS DateTime), N'KH01', 20000)
GO
INSERT [dbo].[tblKhach] ([MaKhach], [TenKhach], [DiaChi], [DienThoai]) VALUES (N'KH01', N'Quốc Long', N'176A Thủ Đức', N'(012) 345-6789')
INSERT [dbo].[tblKhach] ([MaKhach], [TenKhach], [DiaChi], [DienThoai]) VALUES (N'KH02', N'Ngọc Loan', N'Tòa B', N'(012) 345-6789')
INSERT [dbo].[tblKhach] ([MaKhach], [TenKhach], [DiaChi], [DienThoai]) VALUES (N'KH03', N'Trúc Linh', N'351A Lạc Long Quân', N'(012) 345-6789')
GO
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV01', N'Long Nguyen', N'Nam', N'Biên Hòa', N'(012) 345-6789', CAST(N'2004-03-09T14:30:59.000' AS DateTime))
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV02', N'Truc Linh', N'Nữ', N'351', N'(012) 345-6789', CAST(N'2004-07-09T17:19:08.000' AS DateTime))
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'NV03', N'Loan Ngoc', N'Nữ', N'Tân Hòa Đông', N'(012) 345-6789', CAST(N'2004-06-09T18:23:32.000' AS DateTime))
GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 12/12/2024 7:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Login]
	@userName nvarchar(50),
	@passsWord nvarchar(50)
AS
BEGIN
	SELECT * FROM dbo.Account where UserName = @userName and PassWord = @passsWord
END
GO
USE [master]
GO
ALTER DATABASE [QUANLYBANHANG] SET  READ_WRITE 
GO
