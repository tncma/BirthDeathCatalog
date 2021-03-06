USE [Learning]
GO
/****** Object:  Table [dbo].[ApplicantHomeInformation]    Script Date: 12/15/2013 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicantHomeInformation](
	[ApplicantHomeID] [int] IDENTITY(1,1) NOT NULL,
	[AddressDetail] [varchar](100) NOT NULL,
	[MunicipalityID] [int] NOT NULL,
	[StateName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicantHomeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentDetail]    Script Date: 12/15/2013 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentDetail](
	[PaymentReceiptID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMode] [varchar](100) NOT NULL,
	[Amount] [int] NOT NULL,
	[DateOfPayment] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentReceiptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NursingHomeInformation]    Script Date: 12/15/2013 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NursingHomeInformation](
	[NursingHomeID] [int] IDENTITY(1,1) NOT NULL,
	[NursingHomeName] [varchar](100) NOT NULL,
	[AddressDetail] [varchar](100) NOT NULL,
	[MunicipalityID] [int] NOT NULL,
	[StateName] [varchar](50) NOT NULL,
	[IsActive] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NursingHomeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MunicipalityInformation]    Script Date: 12/15/2013 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MunicipalityInformation](
	[MunicipalityID] [int] IDENTITY(1,1) NOT NULL,
	[MunicipalityName] [varchar](100) NULL,
	[District] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MunicipalityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HospitalInformation]    Script Date: 12/15/2013 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HospitalInformation](
	[HospitalID] [int] IDENTITY(1,1) NOT NULL,
	[HospitalName] [varchar](100) NOT NULL,
	[AddressDetail] [varchar](100) NOT NULL,
	[MunicipalityID] [int] NOT NULL,
	[StateName] [varchar](50) NOT NULL,
	[IsActive] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HospitalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeathInformation]    Script Date: 12/15/2013 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeathInformation](
	[DeathCertificateNumber] [int] IDENTITY(1,1) NOT NULL,
	[NameOfDeceased] [varchar](100) NOT NULL,
	[AgeofDeceased] [int] NOT NULL,
	[NameOfFather_Husband] [varchar](200) NOT NULL,
	[PlaceOfDeath] [varchar](100) NOT NULL,
	[AddressOfDeath] [varchar](200) NOT NULL,
	[DateOfDeath] [datetime] NOT NULL,
	[PurposeOfCertificate] [varchar](100) NOT NULL,
	[RelationToDeceased] [varchar](100) NOT NULL,
	[PaymentID] [int] NULL,
	[HospitalID] [int] NULL,
	[NursingHomeID] [int] NULL,
	[HomeID] [int] NULL,
	[BirthCertificateID] [int] NULL,
	[DateOfEntry] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeathCertificateNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BirthInfomation]    Script Date: 12/15/2013 13:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BirthInfomation](
	[BirthCertificateNumber] [int] IDENTITY(1,1) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[FatherAge] [int] NOT NULL,
	[FatherOccupation] [varchar](30) NOT NULL,
	[MotherName] [varchar](50) NOT NULL,
	[ChildName] [varchar](50) NULL,
	[ChildDOB] [datetime] NOT NULL,
	[ChildGender] [varchar](2) NOT NULL,
	[PlaceOfBirth] [varchar](50) NOT NULL,
	[HospitalName] [varchar](100) NULL,
	[HospitalID] [int] NULL,
	[NursingHomeID] [int] NULL,
	[RelationshipofApplicant] [varchar](50) NOT NULL,
	[HomeID] [int] NULL,
	[ResidentialAddress] [varchar](200) NOT NULL,
	[DateOfEntry] [datetime] NOT NULL,
	[PurposeOfCertificate] [varchar](100) NOT NULL,
	[PaymentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BirthCertificateNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__BirthInfo__DateO__4222D4EF]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[BirthInfomation] ADD  DEFAULT (getdate()) FOR [DateOfEntry]
GO
/****** Object:  Default [DF__DeathInfo__DateO__5070F446]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[DeathInformation] ADD  DEFAULT (getdate()) FOR [DateOfEntry]
GO
/****** Object:  Default [DF__PaymentDe__DateO__1ED998B2]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[PaymentDetail] ADD  DEFAULT (getdate()) FOR [DateOfPayment]
GO
/****** Object:  ForeignKey [FK__BirthInfo__HomeI__44FF419A]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[BirthInfomation]  WITH CHECK ADD FOREIGN KEY([HomeID])
REFERENCES [dbo].[ApplicantHomeInformation] ([ApplicantHomeID])
GO
/****** Object:  ForeignKey [FK__BirthInfo__Hospi__4316F928]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[BirthInfomation]  WITH CHECK ADD FOREIGN KEY([HospitalID])
REFERENCES [dbo].[HospitalInformation] ([HospitalID])
GO
/****** Object:  ForeignKey [FK__BirthInfo__Nursi__440B1D61]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[BirthInfomation]  WITH CHECK ADD FOREIGN KEY([NursingHomeID])
REFERENCES [dbo].[NursingHomeInformation] ([NursingHomeID])
GO
/****** Object:  ForeignKey [FK__BirthInfo__Payme__45F365D3]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[BirthInfomation]  WITH CHECK ADD FOREIGN KEY([PaymentID])
REFERENCES [dbo].[PaymentDetail] ([PaymentReceiptID])
GO
/****** Object:  ForeignKey [FK__DeathInfo__HomeI__5441852A]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[DeathInformation]  WITH CHECK ADD FOREIGN KEY([HomeID])
REFERENCES [dbo].[ApplicantHomeInformation] ([ApplicantHomeID])
GO
/****** Object:  ForeignKey [FK__DeathInfo__Hospi__52593CB8]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[DeathInformation]  WITH CHECK ADD FOREIGN KEY([HospitalID])
REFERENCES [dbo].[HospitalInformation] ([HospitalID])
GO
/****** Object:  ForeignKey [FK__DeathInfo__Nursi__534D60F1]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[DeathInformation]  WITH CHECK ADD FOREIGN KEY([NursingHomeID])
REFERENCES [dbo].[NursingHomeInformation] ([NursingHomeID])
GO
/****** Object:  ForeignKey [FK__DeathInfo__Payme__5165187F]    Script Date: 12/15/2013 13:30:45 ******/
ALTER TABLE [dbo].[DeathInformation]  WITH CHECK ADD FOREIGN KEY([PaymentID])
REFERENCES [dbo].[PaymentDetail] ([PaymentReceiptID])
GO
