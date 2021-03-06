CREATE [Cars_DB]
GO
/****** Object:  Table [dbo].[tbl_Un_Re_Maintainance]    Script Date: 12/23/2015 15:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Un_Re_Maintainance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Form] [date] NULL,
	[To] [date] NULL,
	[Value] [float] NULL,
	[Car_ID] [int] NULL,
 CONSTRAINT [PK_tbl_Un_Re_Maintainance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Un_Re_Licenses]    Script Date: 12/23/2015 15:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Un_Re_Licenses](
	[License_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[float] [float] NULL,
 CONSTRAINT [PK_tbl_Un_Re_Licenses] PRIMARY KEY CLUSTERED 
(
	[License_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Fuel_Type]    Script Date: 12/23/2015 15:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Fuel_Type](
	[Fuel_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Fuel_Type_Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_tbl_Fuel_Type] PRIMARY KEY CLUSTERED 
(
	[Fuel_Type_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Re_Maintainance]    Script Date: 12/23/2015 15:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Re_Maintainance](
	[Maintain_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Maintainance] PRIMARY KEY CLUSTERED 
(
	[Maintain_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Car]    Script Date: 12/23/2015 15:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Car](
	[Car_ID] [int] IDENTITY(1,1) NOT NULL,
	[Car_Num] [nvarchar](10) NULL,
	[Fuel_Type_ID] [int] NULL,
 CONSTRAINT [PK_tbl_Car] PRIMARY KEY CLUSTERED 
(
	[Car_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Revnue]    Script Date: 12/23/2015 15:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Revnue](
	[Revnue_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Car_ID] [int] NULL,
	[Value] [float] NULL,
 CONSTRAINT [PK_tbl_Revnue] PRIMARY KEY CLUSTERED 
(
	[Revnue_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Re_Licenses]    Script Date: 12/23/2015 15:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Re_Licenses](
	[License_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[float] [float] NULL,
	[Car_ID] [int] NULL,
 CONSTRAINT [PK_tbl_Re_Licenses] PRIMARY KEY CLUSTERED 
(
	[License_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Fuel]    Script Date: 12/23/2015 15:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Fuel](
	[Fuel_ID] [int] NOT NULL,
	[Car_ID] [int] NOT NULL,
	[Liter_Num] [float] NULL,
	[Price] [float] NULL,
	[Meter_Num] [int] NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_tbl_Fuel] PRIMARY KEY CLUSTERED 
(
	[Fuel_ID] ASC,
	[Car_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_tbl_Car_tbl_Fuel_Type]    Script Date: 12/23/2015 15:53:40 ******/
ALTER TABLE [dbo].[tbl_Car]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Car_tbl_Fuel_Type] FOREIGN KEY([Fuel_Type_ID])
REFERENCES [dbo].[tbl_Fuel_Type] ([Fuel_Type_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Car] CHECK CONSTRAINT [FK_tbl_Car_tbl_Fuel_Type]
GO
/****** Object:  ForeignKey [FK_tbl_Revnue_tbl_Car]    Script Date: 12/23/2015 15:53:40 ******/
ALTER TABLE [dbo].[tbl_Revnue]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Revnue_tbl_Car] FOREIGN KEY([Car_ID])
REFERENCES [dbo].[tbl_Car] ([Car_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Revnue] CHECK CONSTRAINT [FK_tbl_Revnue_tbl_Car]
GO
/****** Object:  ForeignKey [FK_tbl_Re_Licenses_tbl_Car]    Script Date: 12/23/2015 15:53:40 ******/
ALTER TABLE [dbo].[tbl_Re_Licenses]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Re_Licenses_tbl_Car] FOREIGN KEY([Car_ID])
REFERENCES [dbo].[tbl_Car] ([Car_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Re_Licenses] CHECK CONSTRAINT [FK_tbl_Re_Licenses_tbl_Car]
GO
/****** Object:  ForeignKey [FK_tbl_Fuel_tbl_Car]    Script Date: 12/23/2015 15:53:40 ******/
ALTER TABLE [dbo].[tbl_Fuel]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Fuel_tbl_Car] FOREIGN KEY([Car_ID])
REFERENCES [dbo].[tbl_Car] ([Car_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Fuel] CHECK CONSTRAINT [FK_tbl_Fuel_tbl_Car]
GO
