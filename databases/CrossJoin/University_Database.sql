USE [University]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 1/17/2019 8:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students_Subjects]    Script Date: 1/17/2019 8:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students_Subjects](
	[SudentId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[Mark] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 1/17/2019 8:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name]) VALUES (1, N'Anton')
INSERT [dbo].[Students] ([Id], [Name]) VALUES (2, N'Joseph')
INSERT [dbo].[Students] ([Id], [Name]) VALUES (3, N'Igor')
SET IDENTITY_INSERT [dbo].[Students] OFF
INSERT [dbo].[Students_Subjects] ([SudentId], [SubjectId], [Mark]) VALUES (1, 1, 2)
INSERT [dbo].[Students_Subjects] ([SudentId], [SubjectId], [Mark]) VALUES (1, 2, 3)
INSERT [dbo].[Students_Subjects] ([SudentId], [SubjectId], [Mark]) VALUES (1, 3, 4)
INSERT [dbo].[Students_Subjects] ([SudentId], [SubjectId], [Mark]) VALUES (2, 1, 2)
INSERT [dbo].[Students_Subjects] ([SudentId], [SubjectId], [Mark]) VALUES (2, 2, 3)
INSERT [dbo].[Students_Subjects] ([SudentId], [SubjectId], [Mark]) VALUES (2, 2, 5)
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (1, N'Mathemetics')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (2, N'English')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (3, N'Russian')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (4, N'Physics')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
ALTER TABLE [dbo].[Students_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Students_Subjects_Students] FOREIGN KEY([SudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[Students_Subjects] CHECK CONSTRAINT [FK_Students_Subjects_Students]
GO
ALTER TABLE [dbo].[Students_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Students_Subjects_Subjects] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Students_Subjects] CHECK CONSTRAINT [FK_Students_Subjects_Subjects]
GO
