USE [HastaneProje]
GO
/****** Object:  Table [dbo].[Tbl_Brans]    Script Date: 7.10.2024 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Brans](
	[Bransid] [tinyint] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 7.10.2024 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[Doktorid] [tinyint] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](10) NULL,
	[DoktorSoyad] [varchar](10) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTc] [char](11) NULL,
	[DoktorSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Duyurular]    Script Date: 7.10.2024 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Duyurular](
	[Duyuruid] [smallint] IDENTITY(1,1) NOT NULL,
	[Duyuru] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 7.10.2024 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[Hastaid] [smallint] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](10) NULL,
	[HastaSoyad] [varchar](10) NULL,
	[HastaTc] [char](11) NULL,
	[HastaTelefon] [varchar](15) NULL,
	[HastaSifre] [varchar](10) NULL,
	[HastaCinsiyet] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Randevular]    Script Date: 7.10.2024 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Randevular](
	[Randevuid] [int] IDENTITY(1,1) NOT NULL,
	[RandevuTarih] [varchar](10) NULL,
	[RandevuSaat] [varchar](5) NULL,
	[RandevuBrans] [varchar](30) NULL,
	[RandevuDoktor] [varchar](20) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTc] [char](11) NULL,
	[HastaSikayet] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sekreter]    Script Date: 7.10.2024 20:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sekreter](
	[Sekreterid] [tinyint] IDENTITY(1,1) NOT NULL,
	[SekreterAdSoyad] [varchar](21) NULL,
	[SekreterTc] [char](11) NULL,
	[SekreterSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Brans] ON 

INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (1, N'Dahiliye')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (2, N'Kulak Burun Boğaz')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (3, N'Göz')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (4, N'Cildiye')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (6, N'Kardiyoloji')
SET IDENTITY_INSERT [dbo].[Tbl_Brans] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] ON 

INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (1, N'Mehmet Ali', N'Ballı', N'Dahiliye', N'44444444444', N'4444')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (2, N'Nazlı', N'Kartal', N'Göz', N'55555555555', N'5555')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (6, N'Su', N'Yıldız', N'Kardiyoloji', N'88888888888', N'8888')
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] ON 

INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (1, N'10:12:2024 saat 15.30 da toplantı vardır.')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (2, N'toplantı')
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] ON 

INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (1, N'Burak', N'Yıldız', N'49565994646', N'(595) 955-9559', N'123456', N'Erkek')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (2, N'Mehmet', N'Ali', N'11111111111', N'(595) 659-5934', N'1111', N'Erkek')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Randevular] ON 

INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (1, N'25.05.2025', N'15:30', N'Göz', N'Nazlı Kartal', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (2, N'15.05.2005', N'01:15', N'Göz', N'Nazlı Kartal', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (3, N'15.10.2025', N'15:30', N'Dahiliye', N'Mehmet Ballı', 1, N'11111111111', N'hastayım')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (4, N'25.12.1999', N'16:50', N'Dahiliye', N'Mehmet Ballı', 1, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (5, N'12.15.2024', N'15:30', N'Dahiliye', N'Mehmet Ballı', 1, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (8, N'06.06.2025', N'17:10', N'Göz', N'Nazlı Kartal', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (9, N'15.05.224', N'17:30', N'Dahiliye', N'Mehmet Ballı', 1, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (10, N'15.05.224', N'18:30', N'Dahiliye', N'Mehmet Ballı', 1, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (11, N'15.05.224', N'19:30', N'Dahiliye', N'Mehmet Ballı', 1, N'11111111111', N'Karnım ağrıyor')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (12, N'15.05.2024', N'19:30', N'Göz', N'Nazlı Kartal', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (13, N'15.05.2024', N'18:30', N'Göz', N'Nazlı Kartal', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (14, N'15.05.2024', N'17:30', N'Göz', N'Nazlı Kartal', 1, N'11111111111', N'Gözüme çapak girdi')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (15, N'15.05.2024', N'15:30', N'Göz', N'Nazlı Kartal', 1, N'11111111111', N'Gözüm Acıyo')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (6, N'08.08.2028', N'15:30', N'Göz', N'Sena Baltacı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (7, N'09.09.2029', N'15:30', N'Göz', N'Nazlı Kartal', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Randevular] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Sekreter] ON 

INSERT [dbo].[Tbl_Sekreter] ([Sekreterid], [SekreterAdSoyad], [SekreterTc], [SekreterSifre]) VALUES (1, N'Emir Elveren', N'55555555555', N'5555')
INSERT [dbo].[Tbl_Sekreter] ([Sekreterid], [SekreterAdSoyad], [SekreterTc], [SekreterSifre]) VALUES (2, N'Selin Yılmaz', N'33333333333', N'3333')
INSERT [dbo].[Tbl_Sekreter] ([Sekreterid], [SekreterAdSoyad], [SekreterTc], [SekreterSifre]) VALUES (3, N'Ahmet Kaya', N'77777777777', N'7777')
SET IDENTITY_INSERT [dbo].[Tbl_Sekreter] OFF
GO
ALTER TABLE [dbo].[Tbl_Randevular] ADD  CONSTRAINT [DF_Tbl_Randevular_RandevuDurum]  DEFAULT ((0)) FOR [RandevuDurum]
GO
