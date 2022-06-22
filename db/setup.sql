/****** Object:  Table [dbo].[Department]    Script Date: 14-10-2020 19:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Deleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14-10-2020 19:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[SubDepartmentID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Bio] [varchar](250) NOT NULL,
	[ProfileImage] [varchar](50) NULL,
	[FBProfileLink] [varchar](250) NULL,
	[TwitterProfileLink] [varchar](250) NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Deleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubDepartment]    Script Date: 14-10-2020 19:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDepartment](
	[SubDepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[SubDepartmentName] [varchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Deleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_SubDepartment] PRIMARY KEY CLUSTERED 
(
	[SubDepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (1, N'Design Department', CAST(N'2018-10-13T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (2, N'Program Department', CAST(N'2018-10-13T00:00:00.000' AS DateTime), CAST(N'2020-09-10T00:00:00.000' AS DateTime), 0, NULL)
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (5, N'Development Department', CAST(N'2018-10-13T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (7, N'Account Department', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, 1, CAST(N'2020-10-14T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([EmployeeID], [SubDepartmentID], [FirstName], [LastName], [Bio], [ProfileImage], [FBProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (4, 1, N'Andrea', N'Arkov', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', N'andrea.jpg', N' https://facebook.com/andreaarkov', N' https://twitter.com/andreaarkov', CAST(N'2020-10-12T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [SubDepartmentID], [FirstName], [LastName], [Bio], [ProfileImage], [FBProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (7, 2, N'John', N'Smith', N'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ', N'john.png', N' https://facebook.com/johnsmith', N' https://twitter.com/johnsmith', CAST(N'2020-10-12T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [SubDepartmentID], [FirstName], [LastName], [Bio], [ProfileImage], [FBProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (8, 4, N'Greg', N'Wilson', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.', N'greg.png', N' https://facebook.com/gregwilson', N' https://twitter.com/gregwilson', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [SubDepartmentID], [FirstName], [LastName], [Bio], [ProfileImage], [FBProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (9, 3, N'Oliver', N'Queen', N'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. ', N'oliver.jpg', N' https://facebook.com/oliverqueen', N' https://twitter.com/oliverqueen', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, 1, CAST(N'2020-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Employee] ([EmployeeID], [SubDepartmentID], [FirstName], [LastName], [Bio], [ProfileImage], [FBProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (10, 5, N'Frandy', N'Matthew', N'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', N'frandy.png', N' https://facebook.com/frandymatthew', N' https://twitter.com/frandymatthew', CAST(N'2020-10-12T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [SubDepartmentID], [FirstName], [LastName], [Bio], [ProfileImage], [FBProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (12, 6, N'Sheldon', N'Cooper', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', N'sheldon.jpg', N' https://facebook.com/sheldoncooper', N' https://twitter.com/sheldoncooper', CAST(N'2020-10-12T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[SubDepartment] ON 
GO
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (1, 1, N'Web Designer', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (2, 1, N'Graphic Designer', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (3, 1, N'Video Animation', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, 1, CAST(N'2020-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (4, 5, N'HTML & CSS', CAST(N'2020-10-13T00:00:00.000' AS DateTime), CAST(N'2020-10-14T00:00:00.000' AS DateTime), 0, NULL)
GO
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (5, 5, N'Javascript', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, 0, NULL)
GO
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (6, 2, N'PHP', CAST(N'2020-10-13T00:00:00.000' AS DateTime), NULL, 0, CAST(N'2020-10-13T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SubDepartment] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([SubDepartmentID])
REFERENCES [dbo].[SubDepartment] ([SubDepartmentID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[SubDepartment]  WITH CHECK ADD  CONSTRAINT [FK_SubDepartment_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[SubDepartment] CHECK CONSTRAINT [FK_SubDepartment_Department]
GO
