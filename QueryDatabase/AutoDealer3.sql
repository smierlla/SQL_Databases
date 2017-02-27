USE [master]
GO
/****** Object:  Database [AutoDealer3]    Script Date: 2/21/2014 8:58:21 AM ******/
CREATE DATABASE [AutoDealer3]
GO
USE [AutoDealer3]
GO
/****** Object:  Table [dbo].[AppointmentServices]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppointmentServices](
	[AppointmentID] [int] NOT NULL,
	[ServiceID] [char](2) NOT NULL,
 CONSTRAINT [PK_AppointmentServices] PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC,
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banks](
	[RoutingNumber] [char](9) NOT NULL,
	[BankName] [varchar](50) NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[RoutingNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars](
	[VehicleID] [char](15) NOT NULL,
	[Manufacturer] [varchar](20) NULL,
	[Model] [varchar](20) NULL,
	[Color] [varchar](12) NULL,
	[Year] [int] NULL,
	[Cost] [decimal](12, 2) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarSales]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarSales](
	[CustomerID] [int] NOT NULL,
	[VehicleID] [char](15) NOT NULL,
	[SalesDate] [date] NOT NULL,
	[SalesPersonID] [int] NOT NULL,
	[BankID] [char](9) NOT NULL,
	[Price] [decimal](9, 2) NOT NULL,
 CONSTRAINT [PK_CarSales] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mechanics]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mechanics](
	[ID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Mechanics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesPeople]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesPeople](
	[ID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_SalesPeople] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesVisitInterests]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesVisitInterests](
	[SalesVisitID] [int] NOT NULL,
	[VehicleID] [char](15) NOT NULL,
 CONSTRAINT [PK_SalesVisitInterests] PRIMARY KEY CLUSTERED 
(
	[SalesVisitID] ASC,
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesVisits]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesVisits](
	[SalesVisitID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[SalesPersonID] [int] NOT NULL,
	[VisitDate] [date] NOT NULL,
 CONSTRAINT [PK_SalesVisits] PRIMARY KEY CLUSTERED 
(
	[SalesVisitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceAppointments]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceAppointments](
	[AppointmentID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[VehicleID] [char](15) NOT NULL,
	[AppointmentDate] [date] NOT NULL,
	[AppointmentTime] [time](0) NOT NULL,
	[MechanicID] [int] NOT NULL,
 CONSTRAINT [PK_ServiceAppointments] PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Services]    Script Date: 2/21/2014 8:58:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [char](2) NOT NULL,
	[ServiceName] [varchar](50) NULL,
	[AllottedTime] [int] NULL,
	[Cost] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (1, N'IN')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (1, N'OC')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (2, N'M1')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (3, N'IN')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (3, N'OC')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (3, N'TR')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (4, N'M2')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (5, N'OC')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (5, N'RF')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (6, N'IN')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (6, N'TR')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (7, N'M3')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (8, N'OC')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (9, N'IN')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (10, N'OC')
GO
INSERT [dbo].[AppointmentServices] ([AppointmentID], [ServiceID]) VALUES (10, N'TR')
GO
INSERT [dbo].[Banks] ([RoutingNumber], [BankName]) VALUES (N'053000196', N'Bank of America')
GO
INSERT [dbo].[Banks] ([RoutingNumber], [BankName]) VALUES (N'053112712', N'Aquesta')
GO
INSERT [dbo].[Banks] ([RoutingNumber], [BankName]) VALUES (N'055003492', N'HSBC National Bank')
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ATL968LXW390R  ', N'Volkswagen', N'Tiguan', N'Red', 2004, CAST(20720.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ATN939EHX518P  ', N'Chevrolet', N'Suburban', N'Blue', 2005, CAST(30937.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'AXV928XPA557L  ', N'Chysler', N'300', N'Blue', 1998, CAST(14732.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'AYK603STJ915Q  ', N'Ford', N'Focus', N'Black', 2002, CAST(24317.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'BAD307HWL202L  ', N'Nissan', N'Frontier', N'Red', 2001, CAST(30012.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'CIX452LCA824J  ', N'Chevrolet', N'Tahoe', N'Orange', 2003, CAST(10993.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'CPX560LRH462Q  ', N'Chevrolet', N'Malibu', N'White', 2009, CAST(11669.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'CXE488ZZP310K  ', N'Chevrolet', N'Camaro', N'Blue', 2011, CAST(15977.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'DKW986LRF744K  ', N'Volkswagen', N'Jetta', N'Black', 2012, CAST(21749.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'DLY856JOW065J  ', N'Nissan', N'Cube', N'Gold', 1999, CAST(18908.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'EBR160TJU474B  ', N'Nissan', N'Altima', N'Gold', 1997, CAST(26906.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'EHZ337VIS833C  ', N'Honda', N'Pilot', N'Black', 2006, CAST(26300.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ELX404KXP301U  ', N'Ford', N'Fiesta', N'Black', 2008, CAST(15232.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'EOI158MTU291A  ', N'Toyota', N'Tundra', N'Silver', 2003, CAST(15147.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'EQV536NJH730J  ', N'Ford', N'Mustang', N'Black', 2007, CAST(21042.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ESP390LEW281B  ', N'Volkswagen', N'Beetle', N'Black', 2009, CAST(23259.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ESX208WZS412R  ', N'Chevrolet', N'Malibu', N'White', 2006, CAST(19707.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'FBB715DSQ874S  ', N'Nissan', N'Frontier', N'Black', 2002, CAST(20944.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'FKD979RJF195E  ', N'Ford', N'Fiesta', N'Black', 2002, CAST(17153.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'FRC958WNB023P  ', N'Ford', N'Focus', N'Black', 2013, CAST(14597.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'FUV377FYK349H  ', N'Chevrolet', N'Tahoe', N'Silver', 2012, CAST(28047.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'FZM316GZL472R  ', N'Toyota', N'Camry', N'White', 2006, CAST(12223.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'GHV305MEG301R  ', N'Toyota', N'Camry', N'Silver', 2009, CAST(9869.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'GPT973ROF970T  ', N'Volkswagen', N'Beetle', N'Black', 2008, CAST(21379.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'GWH698TWX269W  ', N'Nissan', N'Cube', N'Gold', 2008, CAST(26908.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'GWX444ITV848R  ', N'Ford', N'Fiesta', N'Black', 2007, CAST(14770.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'HDR469FNP011S  ', N'Ford', N'Fiesta', N'Silver', 2011, CAST(10761.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'HTU791AKF984L  ', N'Honda', N'Civic', N'Orange', 2009, CAST(11944.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'HWP073RTW134I  ', N'Chevrolet', N'Corvette', N'Silver', 2003, CAST(22264.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'IIL684DZK615B  ', N'Chevrolet', N'Monte Carlo', N'Gold', 2000, CAST(19022.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'IMP048HYB446H  ', N'Toyota', N'4Runner', N'Blue', 1998, CAST(24436.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ISL138RYB234C  ', N'Nissan', N'Armada', N'White', 1998, CAST(30646.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'IUO393MFL917C  ', N'Chevrolet', N'Monte Carlo', N'Blue', 2004, CAST(20045.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'IXC994SDU592F  ', N'Nissan', N'Cube', N'Black', 1999, CAST(21761.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'JPE149FJA732O  ', N'Nissan', N'Armada', N'Blue', 2011, CAST(9424.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'JQZ148KRR372F  ', N'Honda', N'Crosstour', N'Black', 2005, CAST(12675.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'KEQ147IOU683X  ', N'Chevrolet', N'Monte Carlo', N'White', 2005, CAST(15203.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'KFA495UQT464S  ', N'Chevrolet', N'Suburban', N'Orange', 2010, CAST(19783.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'LBZ632LKI099H  ', N'Nissan', N'Armada', N'White', 2011, CAST(19805.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'LCG844FON360I  ', N'Chevrolet', N'Corvette', N'Orange', 2002, CAST(29816.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'LDY979WTJ060K  ', N'Volkswagen', N'Jetta', N'Silver', 2002, CAST(21466.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'LKR813OSG867G  ', N'Toyota', N'4Runner', N'Silver', 2009, CAST(28183.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'LWO866HKO934Z  ', N'Nissan', N'Armada', N'White', 2005, CAST(29214.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'LZJ419CFC457J  ', N'Volkswagen', N'Tiguan', N'White', 2008, CAST(9370.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'MAH425RQK787S  ', N'Honda', N'Accord', N'Blue', 2004, CAST(28390.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'MDT194YGF704Q  ', N'Nissan', N'Altima', N'Blue', 2000, CAST(13870.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'MEF819UBL671G  ', N'Volkswagen', N'Jetta', N'Blue', 2006, CAST(23707.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'MOO812GXL343T  ', N'Chysler', N'Town & Country', N'Orange', 2008, CAST(9722.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'NGU492HSI763G  ', N'Volkswagen', N'Passat', N'Gold', 1999, CAST(17434.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'NPM517URO747O  ', N'Toyota', N'Prius', N'Blue', 2000, CAST(23813.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'PCS756ISI197O  ', N'Chysler', N'300', N'Blue', 2011, CAST(27867.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'POV701WPZ119L  ', N'Toyota', N'Tundra', N'Blue', 1999, CAST(19595.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'PXL279VHN042N  ', N'Chevrolet', N'Tahoe', N'Orange', 2008, CAST(12475.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'QHW300UAR242Q  ', N'Ford', N'Fusion', N'White', 2011, CAST(13065.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'QIU403COU317I  ', N'Honda', N'Crosstour', N'Gold', 2006, CAST(29078.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'QLT113IHU647S  ', N'Chevrolet', N'Suburban', N'Black', 2000, CAST(12842.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'QYG755MRN532O  ', N'Chevrolet', N'Corvette', N'Silver', 2005, CAST(26513.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'QZO626ZSA926A  ', N'Chevrolet', N'Tahoe', N'Red', 2007, CAST(23093.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'RDM861EQE740J  ', N'Honda', N'Crosstour', N'Blue', 1999, CAST(23711.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ROY181EQM628S  ', N'Volkswagen', N'Passat', N'Blue', 2004, CAST(21379.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'RPZ128JDC915W  ', N'Chevrolet', N'Tahoe', N'Black', 2004, CAST(30093.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'RQG635HYC165U  ', N'Toyota', N'Tundra', N'White', 2005, CAST(14094.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'SBI969OQW990N  ', N'Toyota', N'Camry', N'White', 2013, CAST(20439.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'SDH094VMS041W  ', N'Ford', N'Fusion', N'Orange', 1999, CAST(25801.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'SJA246VOE585Y  ', N'Toyota', N'Camry', N'Blue', 1999, CAST(23895.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'SMR917QVP285K  ', N'Chevrolet', N'Malibu', N'Gold', 2002, CAST(12297.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'SWP390IUS246M  ', N'Volkswagen', N'Jetta', N'Orange', 2003, CAST(12780.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'SZO056UYL283Y  ', N'Chevrolet', N'Corvette', N'Gold', 1998, CAST(26684.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'TDD397EOK721P  ', N'Honda', N'Civic', N'Red', 2002, CAST(28304.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'TOL115ZGL164G  ', N'Volkswagen', N'Jetta', N'Blue', 2013, CAST(10741.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'TOQ544IFZ838E  ', N'Toyota', N'Tundra', N'Gold', 2003, CAST(24813.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'TTJ188PBJ049V  ', N'Toyota', N'Tundra', N'Silver', 2000, CAST(23800.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'TWO305EEN449V  ', N'Ford', N'Fusion', N'Silver', 1998, CAST(9641.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'UHC457CHJ476G  ', N'Honda', N'Accord', N'Blue', 2006, CAST(12813.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'UHP391YMS802R  ', N'Ford', N'Focus', N'Orange', 2010, CAST(13454.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'UKT072VXT616D  ', N'Chevrolet', N'Corvette', N'Blue', 2008, CAST(25543.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'UNH165DAE672N  ', N'Honda', N'CR-Z', N'White', 2007, CAST(22684.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'UOT863VSR817J  ', N'Nissan', N'Altima', N'Silver', 1998, CAST(22908.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'VEF918ZZC099R  ', N'Honda', N'Civic', N'Red', 2003, CAST(22903.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'VHD838DMM722P  ', N'Toyota', N'Corolla', N'Gold', 1998, CAST(14731.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'VMJ281ZEU752T  ', N'Nissan', N'Cube', N'Orange', 2009, CAST(19417.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'VQT745LXX507E  ', N'Ford', N'Fiesta', N'Orange', 2002, CAST(24150.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'VWU519OUG411K  ', N'Nissan', N'Cube', N'Red', 2007, CAST(30607.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'WGQ914COF174T  ', N'Honda', N'Accord', N'White', 2011, CAST(29853.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'WPA442IVA467V  ', N'Toyota', N'Corolla', N'Red', 2005, CAST(24931.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'WVB028HEC530R  ', N'Ford', N'Mustang', N'Blue', 2008, CAST(24469.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'WZF772BDH141P  ', N'Toyota', N'Tundra', N'Orange', 2001, CAST(16451.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'WZZ748FGT545E  ', N'Chysler', N'300', N'Orange', 2010, CAST(27658.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'XDF251XRS801U  ', N'Volkswagen', N'Passat', N'Silver', 1998, CAST(11895.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'XKZ546BCK157M  ', N'Volkswagen', N'Jetta', N'Red', 2007, CAST(22706.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'XVV027IXQ600Z  ', N'Toyota', N'Camry', N'Orange', 2013, CAST(24884.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'XZC881OSA178P  ', N'Chysler', N'300', N'Silver', 2003, CAST(9220.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'YDX227BRG124K  ', N'Nissan', N'Altima', N'Gold', 2012, CAST(21052.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'YIG124QDO159J  ', N'Volkswagen', N'Passat', N'Black', 1998, CAST(18176.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'YNR313ZBZ878L  ', N'Nissan', N'Altima', N'Gold', 2008, CAST(30756.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'YTS322NNM086Y  ', N'Nissan', N'Armada', N'Gold', 2000, CAST(20210.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ZAG321TRK992M  ', N'Nissan', N'Armada', N'White', 2011, CAST(11258.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ZBZ023NXC981B  ', N'Honda', N'Crosstour', N'White', 1998, CAST(11717.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Cars] ([VehicleID], [Manufacturer], [Model], [Color], [Year], [Cost]) VALUES (N'ZYF684IPV746C  ', N'Chysler', N'300', N'Gold', 2000, CAST(13611.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[CarSales] ([CustomerID], [VehicleID], [SalesDate], [SalesPersonID], [BankID], [Price]) VALUES (1, N'ATL968LXW390R  ', CAST(0xC1360B00 AS Date), 1, N'053000196', CAST(25500.00 AS Decimal(9, 2)))
GO
INSERT [dbo].[CarSales] ([CustomerID], [VehicleID], [SalesDate], [SalesPersonID], [BankID], [Price]) VALUES (3, N'DLY856JOW065J  ', CAST(0xC2360B00 AS Date), 3, N'053112712', CAST(22300.99 AS Decimal(9, 2)))
GO
INSERT [dbo].[CarSales] ([CustomerID], [VehicleID], [SalesDate], [SalesPersonID], [BankID], [Price]) VALUES (4, N'MAH425RQK787S  ', CAST(0xC3360B00 AS Date), 4, N'053000196', CAST(33234.49 AS Decimal(9, 2)))
GO
INSERT [dbo].[CarSales] ([CustomerID], [VehicleID], [SalesDate], [SalesPersonID], [BankID], [Price]) VALUES (6, N'CIX452LCA824J  ', CAST(0xC2360B00 AS Date), 3, N'055003492', CAST(11023.21 AS Decimal(9, 2)))
GO
INSERT [dbo].[CarSales] ([CustomerID], [VehicleID], [SalesDate], [SalesPersonID], [BankID], [Price]) VALUES (8, N'EBR160TJU474B  ', CAST(0xC2360B00 AS Date), 3, N'055003492', CAST(29990.00 AS Decimal(9, 2)))
GO
INSERT [dbo].[CarSales] ([CustomerID], [VehicleID], [SalesDate], [SalesPersonID], [BankID], [Price]) VALUES (10, N'FRC958WNB023P  ', CAST(0xC2360B00 AS Date), 2, N'053112712', CAST(17003.67 AS Decimal(9, 2)))
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (1, N'Ron', N'Naik')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (2, N'Sherry', N'Traylor')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (3, N'Matt', N'Crisp')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (4, N'Dana', N'Roman')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (5, N'Shannon', N'Schimelman')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (6, N'Pradeep', N'Boglovits')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (7, N'Derek', N'Curlis')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (8, N'Ana', N'Prager')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (9, N'Jeff', N'Allen')
GO
INSERT [dbo].[Customers] ([ID], [FirstName], [LastName]) VALUES (10, N'Melanie', N'Westrick')
GO
INSERT [dbo].[Mechanics] ([ID], [FirstName], [LastName], [StartDate]) VALUES (1, N'Mac', N'Jones', CAST(0xC12B0B00 AS Date))
GO
INSERT [dbo].[Mechanics] ([ID], [FirstName], [LastName], [StartDate]) VALUES (2, N'Buck', N'Thompson', CAST(0x95320B00 AS Date))
GO
INSERT [dbo].[Mechanics] ([ID], [FirstName], [LastName], [StartDate]) VALUES (3, N'Jack', N'Bollinger', CAST(0xFE300B00 AS Date))
GO
INSERT [dbo].[Mechanics] ([ID], [FirstName], [LastName], [StartDate]) VALUES (4, N'Charley', N'Smith', CAST(0x2A2B0B00 AS Date))
GO
INSERT [dbo].[SalesPeople] ([ID], [FirstName], [LastName], [StartDate]) VALUES (1, N'Fred', N'Johnson', CAST(0xAD2F0B00 AS Date))
GO
INSERT [dbo].[SalesPeople] ([ID], [FirstName], [LastName], [StartDate]) VALUES (2, N'Sam', N'Wainwright', CAST(0xD2210B00 AS Date))
GO
INSERT [dbo].[SalesPeople] ([ID], [FirstName], [LastName], [StartDate]) VALUES (3, N'Susan', N'Crenshaw', CAST(0x8D340B00 AS Date))
GO
INSERT [dbo].[SalesPeople] ([ID], [FirstName], [LastName], [StartDate]) VALUES (4, N'Bill', N'Youngblood', CAST(0x972C0B00 AS Date))
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (1, N'ATL968LXW390R  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (1, N'DKW986LRF744K  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (2, N'CIX452LCA824J  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (2, N'CPX560LRH462Q  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (3, N'DLY856JOW065J  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (4, N'EHZ337VIS833C  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (4, N'MAH425RQK787S  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (5, N'MAH425RQK787S  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (5, N'TDD397EOK721P  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (6, N'CIX452LCA824J  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (6, N'CXE488ZZP310K  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (7, N'DLY856JOW065J  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (8, N'DLY856JOW065J  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (8, N'EBR160TJU474B  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (8, N'FBB715DSQ874S  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (9, N'FBB715DSQ874S  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (9, N'GWH698TWX269W  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (10, N'FKD979RJF195E  ')
GO
INSERT [dbo].[SalesVisitInterests] ([SalesVisitID], [VehicleID]) VALUES (10, N'FRC958WNB023P  ')
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (1, 1, 1, CAST(0xC0360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (2, 2, 1, CAST(0xC0360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (3, 3, 2, CAST(0xC0360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (4, 1, 1, CAST(0xC0360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (5, 4, 3, CAST(0xC1360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (6, 5, 4, CAST(0xC1360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (7, 6, 3, CAST(0xC1360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (8, 7, 2, CAST(0xC2360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (9, 8, 3, CAST(0xC3360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (10, 8, 3, CAST(0xC3360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (11, 9, 2, CAST(0xC3360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (12, 10, 2, CAST(0xC1360B00 AS Date))
GO
INSERT [dbo].[SalesVisits] ([SalesVisitID], [CustomerID], [SalesPersonID], [VisitDate]) VALUES (13, 10, 2, CAST(0xC3360B00 AS Date))
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (1, 1, N'ATL968LXW390R  ', CAST(0xC1360B00 AS Date), CAST(0x00A08C0000000000 AS Time), 1)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (2, 2, N'ATN939EHX518P  ', CAST(0xC1360B00 AS Date), CAST(0x00A08C0000000000 AS Time), 2)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (3, 3, N'AXV928XPA557L  ', CAST(0xC1360B00 AS Date), CAST(0x00B09A0000000000 AS Time), 1)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (4, 4, N'AYK603STJ915Q  ', CAST(0xC1360B00 AS Date), CAST(0x00B09A0000000000 AS Time), 2)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (5, 5, N'BAD307HWL202L  ', CAST(0xC1360B00 AS Date), CAST(0x003CA50000000000 AS Time), 1)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (6, 6, N'CIX452LCA824J  ', CAST(0xC1360B00 AS Date), CAST(0x00D0B60000000000 AS Time), 1)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (7, 7, N'CPX560LRH462Q  ', CAST(0xC1360B00 AS Date), CAST(0x00D0B60000000000 AS Time), 2)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (8, 8, N'CXE488ZZP310K  ', CAST(0xC1360B00 AS Date), CAST(0x00D8BD0000000000 AS Time), 2)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (9, 9, N'DKW986LRF744K  ', CAST(0xC1360B00 AS Date), CAST(0x00E0C40000000000 AS Time), 1)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (10, 10, N'DLY856JOW065J  ', CAST(0xC1360B00 AS Date), CAST(0x00E0C40000000000 AS Time), 2)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (11, 1, N'EBR160TJU474B  ', CAST(0xC1360B00 AS Date), CAST(0x00F0D20000000000 AS Time), 1)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (12, 4, N'EHZ337VIS833C  ', CAST(0xC1360B00 AS Date), CAST(0x00F0D20000000000 AS Time), 2)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (13, 6, N'ELX404KXP301U  ', CAST(0xC1360B00 AS Date), CAST(0x0000E10000000000 AS Time), 1)
GO
INSERT [dbo].[ServiceAppointments] ([AppointmentID], [CustomerID], [VehicleID], [AppointmentDate], [AppointmentTime], [MechanicID]) VALUES (14, 3, N'EOI158MTU291A  ', CAST(0xC1360B00 AS Date), CAST(0x0000E10000000000 AS Time), 2)
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [AllottedTime], [Cost]) VALUES (N'IN', N'Inspection', 15, CAST(14.95 AS Decimal(6, 2)))
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [AllottedTime], [Cost]) VALUES (N'M1', N'Maintenance Level 1', 30, CAST(39.95 AS Decimal(6, 2)))
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [AllottedTime], [Cost]) VALUES (N'M2', N'Maintenance Level 2', 60, CAST(79.95 AS Decimal(6, 2)))
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [AllottedTime], [Cost]) VALUES (N'M3', N'Maintenance Level 3', 90, CAST(119.95 AS Decimal(6, 2)))
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [AllottedTime], [Cost]) VALUES (N'OC', N'Oil Change', 30, CAST(29.95 AS Decimal(6, 2)))
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [AllottedTime], [Cost]) VALUES (N'RF', N'Radiator Flush', 60, CAST(79.95 AS Decimal(6, 2)))
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [AllottedTime], [Cost]) VALUES (N'TR', N'Tire Rotation', 30, CAST(19.95 AS Decimal(6, 2)))
GO
ALTER TABLE [dbo].[AppointmentServices]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentServices_AppointmentServices] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ServiceID])
GO
ALTER TABLE [dbo].[AppointmentServices] CHECK CONSTRAINT [FK_AppointmentServices_AppointmentServices]
GO
ALTER TABLE [dbo].[AppointmentServices]  WITH CHECK ADD  CONSTRAINT [FK_AppointmentServices_ServiceAppointments] FOREIGN KEY([AppointmentID])
REFERENCES [dbo].[ServiceAppointments] ([AppointmentID])
GO
ALTER TABLE [dbo].[AppointmentServices] CHECK CONSTRAINT [FK_AppointmentServices_ServiceAppointments]
GO
ALTER TABLE [dbo].[CarSales]  WITH CHECK ADD  CONSTRAINT [FK_CarSales_Banks] FOREIGN KEY([BankID])
REFERENCES [dbo].[Banks] ([RoutingNumber])
GO
ALTER TABLE [dbo].[CarSales] CHECK CONSTRAINT [FK_CarSales_Banks]
GO
ALTER TABLE [dbo].[CarSales]  WITH CHECK ADD  CONSTRAINT [FK_CarSales_Cars] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Cars] ([VehicleID])
GO
ALTER TABLE [dbo].[CarSales] CHECK CONSTRAINT [FK_CarSales_Cars]
GO
ALTER TABLE [dbo].[CarSales]  WITH CHECK ADD  CONSTRAINT [FK_CarSales_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[CarSales] CHECK CONSTRAINT [FK_CarSales_Customers]
GO
ALTER TABLE [dbo].[CarSales]  WITH CHECK ADD  CONSTRAINT [FK_CarSales_SalesPeople] FOREIGN KEY([SalesPersonID])
REFERENCES [dbo].[SalesPeople] ([ID])
GO
ALTER TABLE [dbo].[CarSales] CHECK CONSTRAINT [FK_CarSales_SalesPeople]
GO
ALTER TABLE [dbo].[SalesVisitInterests]  WITH CHECK ADD  CONSTRAINT [FK_SalesVisitInterests_Cars] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Cars] ([VehicleID])
GO
ALTER TABLE [dbo].[SalesVisitInterests] CHECK CONSTRAINT [FK_SalesVisitInterests_Cars]
GO
ALTER TABLE [dbo].[SalesVisitInterests]  WITH CHECK ADD  CONSTRAINT [FK_SalesVisitInterests_SalesVisits] FOREIGN KEY([SalesVisitID])
REFERENCES [dbo].[SalesVisits] ([SalesVisitID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalesVisitInterests] CHECK CONSTRAINT [FK_SalesVisitInterests_SalesVisits]
GO
ALTER TABLE [dbo].[SalesVisits]  WITH CHECK ADD  CONSTRAINT [FK_SalesVisits_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalesVisits] CHECK CONSTRAINT [FK_SalesVisits_Customers]
GO
ALTER TABLE [dbo].[SalesVisits]  WITH CHECK ADD  CONSTRAINT [FK_SalesVisits_SalesPeople] FOREIGN KEY([SalesPersonID])
REFERENCES [dbo].[SalesPeople] ([ID])
GO
ALTER TABLE [dbo].[SalesVisits] CHECK CONSTRAINT [FK_SalesVisits_SalesPeople]
GO
ALTER TABLE [dbo].[ServiceAppointments]  WITH CHECK ADD  CONSTRAINT [FK_ServiceAppointments_Cars] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Cars] ([VehicleID])
GO
ALTER TABLE [dbo].[ServiceAppointments] CHECK CONSTRAINT [FK_ServiceAppointments_Cars]
GO
ALTER TABLE [dbo].[ServiceAppointments]  WITH CHECK ADD  CONSTRAINT [FK_ServiceAppointments_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[ServiceAppointments] CHECK CONSTRAINT [FK_ServiceAppointments_Customers]
GO
ALTER TABLE [dbo].[ServiceAppointments]  WITH CHECK ADD  CONSTRAINT [FK_ServiceAppointments_Mechanics] FOREIGN KEY([MechanicID])
REFERENCES [dbo].[Mechanics] ([ID])
GO
ALTER TABLE [dbo].[ServiceAppointments] CHECK CONSTRAINT [FK_ServiceAppointments_Mechanics]
GO
USE [master]
GO
ALTER DATABASE [AutoDealer3] SET  READ_WRITE 
GO