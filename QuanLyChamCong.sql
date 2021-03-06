create database QuanLyChamCong
USE QuanLyChamCong
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[tb_NhanVien] 
as
begin
select * from QL_NhanVien

end
GO
/****** Object:  Table [dbo].[QL_ChamCong]    Script Date: 12/9/2015 11:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QL_ChamCong](
	[MaPhieu] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](10) NULL,
	[Thang] [int] NULL,
	[Nam] [int] NULL,
	[SoNgayChamCong] [int] NULL,
	[SoGioTangCa] [int] NULL,
	[SoGioTre] [int] NULL,
 CONSTRAINT [PK_QL_ChamCong] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QL_ChiTietChamCong]    Script Date: 12/9/2015 11:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QL_ChiTietChamCong](
	[MaPhieu] [int] NOT NULL,
	[Ngay] [int] NULL,
	[NgayCong] [bit] NULL,
	[SoGioTangCa] [int] NULL,
	[SoGioTre] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QL_ChucVu]    Script Date: 12/9/2015 11:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QL_ChucVu](
	[MaChucVu] [varchar](10) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
	[HeSoChucVu] [float] NULL,
	[LuongCoBan] [float] NULL,
 CONSTRAINT [PK_QL_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QL_Luong]    Script Date: 12/9/2015 11:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QL_Luong](
	[MaNhanVien] [varchar](10) NOT NULL,
	[MaPhieu] [int] NOT NULL,
	[TongLuong] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QL_NguoiDung]    Script Date: 12/9/2015 11:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QL_NguoiDung](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [varchar](10) NULL,
	[MaNhom] [varchar](10) NULL,
 CONSTRAINT [PK_QL_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QL_NhanVien]    Script Date: 12/9/2015 11:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QL_NhanVien](
	[MaNhanVien] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[CMND] [varchar](12) NULL,
	[DienThoai] [varchar](13) NULL,
	[NgayVaoLam] [date] NULL,
	[MaPhongBan] [varchar](10) NULL,
	[MaChucVu] [varchar](10) NULL,
	[HeSoLuong] [float] NULL,
 CONSTRAINT [PK_QL_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QL_NhomNguoiDung]    Script Date: 12/9/2015 11:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QL_NhomNguoiDung](
	[MaNhom] [varchar](10) NOT NULL,
	[TenNhom] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_QL_NhomNguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QL_PhongBan]    Script Date: 12/9/2015 11:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QL_PhongBan](
	[MaPhongBan] [varchar](10) NOT NULL,
	[TenPhongBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_QL_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[QL_ChamCong] ON 

INSERT [dbo].[QL_ChamCong] ([MaPhieu], [MaNhanVien], [Thang], [Nam], [SoNgayChamCong], [SoGioTangCa], [SoGioTre]) VALUES (6, N'NV3', 11, 2015, 3, 6, 0)
INSERT [dbo].[QL_ChamCong] ([MaPhieu], [MaNhanVien], [Thang], [Nam], [SoNgayChamCong], [SoGioTangCa], [SoGioTre]) VALUES (7, N'NV1', 11, 2015, 1, 2, 0)
INSERT [dbo].[QL_ChamCong] ([MaPhieu], [MaNhanVien], [Thang], [Nam], [SoNgayChamCong], [SoGioTangCa], [SoGioTre]) VALUES (8, N'NV2', 11, 2015, 1, 0, 0)
INSERT [dbo].[QL_ChamCong] ([MaPhieu], [MaNhanVien], [Thang], [Nam], [SoNgayChamCong], [SoGioTangCa], [SoGioTre]) VALUES (9, N'NV8', 11, 2015, 26, 7, 2)
INSERT [dbo].[QL_ChamCong] ([MaPhieu], [MaNhanVien], [Thang], [Nam], [SoNgayChamCong], [SoGioTangCa], [SoGioTre]) VALUES (10, N'NV6', 12, 2015, 2, 10, 2)
INSERT [dbo].[QL_ChamCong] ([MaPhieu], [MaNhanVien], [Thang], [Nam], [SoNgayChamCong], [SoGioTangCa], [SoGioTre]) VALUES (11, N'NV7', 12, 2015, 2, 8, 1)
INSERT [dbo].[QL_ChamCong] ([MaPhieu], [MaNhanVien], [Thang], [Nam], [SoNgayChamCong], [SoGioTangCa], [SoGioTre]) VALUES (12, N'NV3', 12, 2015, 7, 5, 1)
SET IDENTITY_INSERT [dbo].[QL_ChamCong] OFF
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (6, 30, 1, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (6, 29, 1, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (7, 30, 1, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (8, 30, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 30, 1, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 1, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 2, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 3, 1, 3, 1)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 4, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 5, 0, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 6, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 7, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 8, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 9, 0, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 10, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 11, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 12, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 13, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (6, 14, 1, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 14, 1, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 15, 0, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 16, 0, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 17, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 18, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 19, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 20, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 21, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 22, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 23, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 24, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 25, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 26, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 27, 1, 0, 1)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 28, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (9, 29, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (10, 1, 1, 5, 1)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (10, 2, 1, 5, 1)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (11, 1, 1, 4, 1)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (11, 2, 1, 4, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (12, 1, 1, 1, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (12, 2, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (12, 3, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (12, 4, 1, 2, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (12, 5, 1, 0, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (12, 6, 1, 1, 0)
INSERT [dbo].[QL_ChiTietChamCong] ([MaPhieu], [Ngay], [NgayCong], [SoGioTangCa], [SoGioTre]) VALUES (12, 7, 1, 1, 1)
INSERT [dbo].[QL_ChucVu] ([MaChucVu], [TenChucVu], [HeSoChucVu], [LuongCoBan]) VALUES (N'CV1', N'Giám Đốc', 3, 5000000)
INSERT [dbo].[QL_ChucVu] ([MaChucVu], [TenChucVu], [HeSoChucVu], [LuongCoBan]) VALUES (N'CV2', N'Phó Giám Đốc', 2.5, 4000000)
INSERT [dbo].[QL_ChucVu] ([MaChucVu], [TenChucVu], [HeSoChucVu], [LuongCoBan]) VALUES (N'CV3', N'Trưởng Phòng', 2, 3000000)
INSERT [dbo].[QL_ChucVu] ([MaChucVu], [TenChucVu], [HeSoChucVu], [LuongCoBan]) VALUES (N'CV4', N'Nhân Viên', 1.2, 2000000)
INSERT [dbo].[QL_Luong] ([MaNhanVien], [MaPhieu], [TongLuong]) VALUES (N'NV1', 7, 1057584)
INSERT [dbo].[QL_Luong] ([MaNhanVien], [MaPhieu], [TongLuong]) VALUES (N'NV6', 10, 2240000)
INSERT [dbo].[QL_Luong] ([MaNhanVien], [MaPhieu], [TongLuong]) VALUES (N'NV2', 8, 153824)
INSERT [dbo].[QL_Luong] ([MaNhanVien], [MaPhieu], [TongLuong]) VALUES (N'NV3', 6, 634524)
INSERT [dbo].[QL_Luong] ([MaNhanVien], [MaPhieu], [TongLuong]) VALUES (N'NV3', 12, 1192136)
INSERT [dbo].[QL_NguoiDung] ([TenDangNhap], [MatKhau], [MaNhom]) VALUES (N'admin', N'123', N'N1')
INSERT [dbo].[QL_NguoiDung] ([TenDangNhap], [MatKhau], [MaNhom]) VALUES (N'mai', N'123', N'N2')
INSERT [dbo].[QL_NguoiDung] ([TenDangNhap], [MatKhau], [MaNhom]) VALUES (N'nhu', N'123', N'N2')
INSERT [dbo].[QL_NguoiDung] ([TenDangNhap], [MatKhau], [MaNhom]) VALUES (N'phuc', N'1234', N'N2')
INSERT [dbo].[QL_NguoiDung] ([TenDangNhap], [MatKhau], [MaNhom]) VALUES (N'phung', N'123', N'N2')
INSERT [dbo].[QL_NguoiDung] ([TenDangNhap], [MatKhau], [MaNhom]) VALUES (N'phuong', N'123', N'N2')
INSERT [dbo].[QL_NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [CMND], [DienThoai], [NgayVaoLam], [MaPhongBan], [MaChucVu], [HeSoLuong]) VALUES (N'NV1', N'Nguyễn Hồng Anh', CAST(0x0A110B00 AS Date), N'TpHCM', N'Nữ', N'023459856', N'0908567345', CAST(0xC1380B00 AS Date), N'PB1', N'CV1', 4)
INSERT [dbo].[QL_NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [CMND], [DienThoai], [NgayVaoLam], [MaPhongBan], [MaChucVu], [HeSoLuong]) VALUES (N'NV2', N'Lê Kim Hoa', CAST(0xC4160B00 AS Date), N'Ha Noi', N'Nữ', N'018945348', N'01265768567', CAST(0x97390B00 AS Date), N'PB4', N'CV3', 2)
INSERT [dbo].[QL_NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [CMND], [DienThoai], [NgayVaoLam], [MaPhongBan], [MaChucVu], [HeSoLuong]) VALUES (N'NV3', N'Phùng Ngọc Minh', CAST(0x74180B00 AS Date), N'Long An', N'Nam', N'127865763', N'0907176267', CAST(0x51390B00 AS Date), N'PB2', N'CV3', 2)
INSERT [dbo].[QL_NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [CMND], [DienThoai], [NgayVaoLam], [MaPhongBan], [MaChucVu], [HeSoLuong]) VALUES (N'NV4', N'Huỳnh Văn Thanh', CAST(0x27110B00 AS Date), N'TpHCM', N'Nữ', N'023478968', N'0908978567', CAST(0xC1380B00 AS Date), N'PB3', N'CV3', 2)
INSERT [dbo].[QL_NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [CMND], [DienThoai], [NgayVaoLam], [MaPhongBan], [MaChucVu], [HeSoLuong]) VALUES (N'NV5', N'Lê Hoàng Nam', CAST(0x0A110B00 AS Date), N'Cà Mau', N'Nam', N'120956784', N'0908567356', CAST(0xC1380B00 AS Date), N'PB2', N'CV4', 1)
INSERT [dbo].[QL_NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [CMND], [DienThoai], [NgayVaoLam], [MaPhongBan], [MaChucVu], [HeSoLuong]) VALUES (N'NV6', N'Bùi Thanh Hoàng', CAST(0x0A110B00 AS Date), N'Đồng Nai', N'Nam', N'317895674', N'01265345789', CAST(0xC1380B00 AS Date), N'PB3', N'CV4', 1)
INSERT [dbo].[QL_NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [CMND], [DienThoai], [NgayVaoLam], [MaPhongBan], [MaChucVu], [HeSoLuong]) VALUES (N'NV7', N'Mai Quốc Việt', CAST(0x0A110B00 AS Date), N'Nha Trang', N'Nam', N'324556877', N'0908678465', CAST(0xC1380B00 AS Date), N'PB4', N'CV4', 1)
INSERT [dbo].[QL_NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [DiaChi], [GioiTinh], [CMND], [DienThoai], [NgayVaoLam], [MaPhongBan], [MaChucVu], [HeSoLuong]) VALUES (N'NV8', N'Hoàng Thị Kim Lan', CAST(0x90110B00 AS Date), N'Đà Lạt', N'Nữ', N'785634126', N'0167456798', CAST(0xC7380B00 AS Date), N'PB2', N'CV4', 1)
INSERT [dbo].[QL_NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'N1', N'admin', NULL)
INSERT [dbo].[QL_NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'N2', N'user', NULL)
INSERT [dbo].[QL_PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'PB1', N'Phòng Giám Đốc')
INSERT [dbo].[QL_PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'PB2', N'Phòng Kế Toán')
INSERT [dbo].[QL_PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'PB3', N'Phòng Kỹ Thuật')
INSERT [dbo].[QL_PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'PB4', N'Phòng Dịch Vụ')
ALTER TABLE [dbo].[QL_ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_QL_ChamCong_QL_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[QL_NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[QL_ChamCong] CHECK CONSTRAINT [FK_QL_ChamCong_QL_NhanVien]
GO
ALTER TABLE [dbo].[QL_ChiTietChamCong]  WITH CHECK ADD  CONSTRAINT [FK_QL_ChiTietChamCong_QL_ChamCong] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[QL_ChamCong] ([MaPhieu])
GO
ALTER TABLE [dbo].[QL_ChiTietChamCong] CHECK CONSTRAINT [FK_QL_ChiTietChamCong_QL_ChamCong]
GO
ALTER TABLE [dbo].[QL_Luong]  WITH CHECK ADD  CONSTRAINT [FK_QL_Luong_QL_ChamCong] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[QL_ChamCong] ([MaPhieu])
GO
ALTER TABLE [dbo].[QL_Luong] CHECK CONSTRAINT [FK_QL_Luong_QL_ChamCong]
GO
ALTER TABLE [dbo].[QL_Luong]  WITH CHECK ADD  CONSTRAINT [FK_QL_Luong_QL_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[QL_NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[QL_Luong] CHECK CONSTRAINT [FK_QL_Luong_QL_NhanVien]
GO
ALTER TABLE [dbo].[QL_NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_QL_NguoiDung_QL_NhomNguoiDung] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[QL_NhomNguoiDung] ([MaNhom])
GO
ALTER TABLE [dbo].[QL_NguoiDung] CHECK CONSTRAINT [FK_QL_NguoiDung_QL_NhomNguoiDung]
GO
ALTER TABLE [dbo].[QL_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_QL_NhanVien_QL_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[QL_ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[QL_NhanVien] CHECK CONSTRAINT [FK_QL_NhanVien_QL_ChucVu]
GO
ALTER TABLE [dbo].[QL_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_QL_NhanVien_QL_PhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[QL_PhongBan] ([MaPhongBan])
GO
ALTER TABLE [dbo].[QL_NhanVien] CHECK CONSTRAINT [FK_QL_NhanVien_QL_PhongBan]
GO
