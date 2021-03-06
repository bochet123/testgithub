USE [master]
GO
/****** Object:  Database [DGGV]    Script Date: 5/29/2015 11:29:44 PM ******/
CREATE DATABASE [DGGV]
GO
USE [DGGV] 
GO
CREATE TABLE [dbo].[Code](
	[codeID] [int] IDENTITY(1,1) NOT NULL,
	[codeName] [nvarchar](255) NOT NULL,
	[codeNo] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_082f283a31ba44d09ec3dc57938] UNIQUE NONCLUSTERED 
(
	[codeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_37c2192177974412943b05f38d5] UNIQUE NONCLUSTERED 
(
	[codeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Criterion]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Criterion](
	[criterionID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[criterionActive] [int] NOT NULL,
	[criterionNam] [nvarchar](255) NULL,
	[criterionPosition] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[criterionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Criterion_Question]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criterion_Question](
	[criterionID] [numeric](19, 0) NOT NULL,
	[questionID] [numeric](19, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[answer] [int] NOT NULL,
	[questionID] [numeric](19, 0) NOT NULL,
	[resultID] [numeric](19, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manager](
	[managerID] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [varbinary](255) NULL,
	[managerAddress] [nvarchar](255) NULL,
	[managerBirthDay] [datetime] NULL,
	[managerEmail] [nvarchar](255) NULL,
	[managerGender] [nvarchar](255) NULL,
	[managerLevel] [int] NOT NULL,
	[managerName] [nvarchar](255) NULL,
	[managerNo] [nvarchar](255) NOT NULL,
	[managerPass] [nvarchar](255) NULL,
	[managerPhone] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[managerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_62ef9c7adf4943d386c67c4ca38] UNIQUE NONCLUSTERED 
(
	[managerNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pages](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[icon] [nvarchar](255) NULL,
	[location] [nvarchar](255) NULL,
	[no] [nvarchar](255) NOT NULL,
	[title] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[uri] [nvarchar](255) NULL,
	[frid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_8dc333f071b8489289ffa644047] UNIQUE NONCLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Question]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[questionID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[available] [int] NOT NULL,
	[questionDuration] [int] NOT NULL,
	[questionTitle] [nvarchar](255) NOT NULL,
	[questionType] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[questionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_c254c2dcc9524310a6e63c095ac] UNIQUE NONCLUSTERED 
(
	[questionTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Result]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Result](
	[resultID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[resultDuration] [int] NOT NULL,
	[resultOpinion] [nvarchar](255) NULL,
	[resultType] [nvarchar](255) NULL,
	[criterionID] [numeric](19, 0) NULL,
	[studentID] [numeric](19, 0) NULL,
	[subjectID] [numeric](19, 0) NULL,
	[teacherID] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[resultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[studentID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[studentAddress] [nvarchar](255) NULL,
	[studentBirthDay] [datetime] NULL,
	[studentEmail] [nvarchar](255) NULL,
	[studentGender] [int] NOT NULL,
	[studentName] [nvarchar](255) NOT NULL,
	[studentNo] [nvarchar](255) NOT NULL,
	[studentPass] [nvarchar](255) NULL,
	[studentPhone] [nvarchar](255) NULL,
	[codeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_ee100e77e06d48fb93aede42da5] UNIQUE NONCLUSTERED 
(
	[studentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[subjectID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[subjectName] [nvarchar](255) NULL,
	[subjectNo] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[subjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_2b32ee0020e54056988ff112eb3] UNIQUE NONCLUSTERED 
(
	[subjectNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[teacherID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[teacherAddress] [nvarchar](255) NULL,
	[teacherBirthDay] [datetime] NULL,
	[teacherEmail] [nvarchar](255) NULL,
	[teacherGender] [int] NOT NULL,
	[teacherName] [nvarchar](255) NULL,
	[teacherNo] [nvarchar](255) NOT NULL,
	[teacherPass] [nvarchar](255) NULL,
	[teacherPhone] [nvarchar](255) NULL,
	[teacherPro] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[teacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_5947d8838651425fb47ed67f5c8] UNIQUE NONCLUSTERED 
(
	[teacherNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher_Subject]    Script Date: 5/29/2015 11:29:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Subject](
	[tacherID] [numeric](19, 0) NOT NULL,
	[subjectID] [numeric](19, 0) NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Criterion_Question]  WITH CHECK ADD  CONSTRAINT [FK_7a42e727ed3042f083a98c8aa11] FOREIGN KEY([criterionID])
REFERENCES [dbo].[Criterion] ([criterionID])
GO
ALTER TABLE [dbo].[Criterion_Question] CHECK CONSTRAINT [FK_7a42e727ed3042f083a98c8aa11]
GO
ALTER TABLE [dbo].[Criterion_Question]  WITH CHECK ADD  CONSTRAINT [FK_b925d8e12794484b8814111528c] FOREIGN KEY([questionID])
REFERENCES [dbo].[Question] ([questionID])
GO
ALTER TABLE [dbo].[Criterion_Question] CHECK CONSTRAINT [FK_b925d8e12794484b8814111528c]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_5f1ad9bd30d4492494d9ebc033a] FOREIGN KEY([questionID])
REFERENCES [dbo].[Question] ([questionID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_5f1ad9bd30d4492494d9ebc033a]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_dd8e3f19942441c49e17d7918bc] FOREIGN KEY([resultID])
REFERENCES [dbo].[Result] ([resultID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_dd8e3f19942441c49e17d7918bc]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_f3d3edee0db94bad93ac8a28b63] FOREIGN KEY([frid])
REFERENCES [dbo].[Pages] ([pid])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_f3d3edee0db94bad93ac8a28b63]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_0ff1c87e8c9d4e5fb7d5a12a236] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([subjectID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_0ff1c87e8c9d4e5fb7d5a12a236]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_a9b7d69d256e437aaa92ca5703b] FOREIGN KEY([teacherID])
REFERENCES [dbo].[Teacher] ([teacherID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_a9b7d69d256e437aaa92ca5703b]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_d77c6eb114004cc69aa05c6c213] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([studentID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_d77c6eb114004cc69aa05c6c213]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_e5749799a17148438fe8a1757cb] FOREIGN KEY([criterionID])
REFERENCES [dbo].[Criterion] ([criterionID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_e5749799a17148438fe8a1757cb]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_b8a3f622134a4ac3a67e0f2294b] FOREIGN KEY([codeID])
REFERENCES [dbo].[Code] ([codeID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_b8a3f622134a4ac3a67e0f2294b]
GO
ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADD  CONSTRAINT [FK_5a3298c9ef3043adaf3cfa2a7a8] FOREIGN KEY([tacherID])
REFERENCES [dbo].[Teacher] ([teacherID])
GO
ALTER TABLE [dbo].[Teacher_Subject] CHECK CONSTRAINT [FK_5a3298c9ef3043adaf3cfa2a7a8]
GO
ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADD  CONSTRAINT [FK_fb962d862ceb4f9bb5c68217b9f] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([subjectID])
GO
ALTER TABLE [dbo].[Teacher_Subject] CHECK CONSTRAINT [FK_fb962d862ceb4f9bb5c68217b9f]
GO
USE [master]
GO
ALTER DATABASE [DGGV] SET  READ_WRITE 
GO
