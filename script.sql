USE [DGGV]
GO
/****** Object:  Table [dbo].[Criterion]    Script Date: 06/01/2015 11:24:11 ******/
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
	[half] [int] NOT NULL,
	[year] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[criterionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Code]    Script Date: 06/01/2015 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Code](
	[codeID] [int] IDENTITY(1,1) NOT NULL,
	[codeName] [nvarchar](255) NOT NULL,
	[codeNo] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_5279439490964cb488d020d6232] UNIQUE NONCLUSTERED 
(
	[codeNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_aec323ccfe124dad8c918a181c8] UNIQUE NONCLUSTERED 
(
	[codeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Question]    Script Date: 06/01/2015 11:24:11 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_6cf9c2d2f7b44def8741ef0345a] UNIQUE NONCLUSTERED 
(
	[questionTitle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 06/01/2015 11:24:11 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_86fba53cd0fe42c58eff675acf3] UNIQUE NONCLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 06/01/2015 11:24:11 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_12572b589f754c2591ad71163eb] UNIQUE NONCLUSTERED 
(
	[managerNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 06/01/2015 11:24:11 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_4182932c33194cfcb4099b81fa8] UNIQUE NONCLUSTERED 
(
	[teacherNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 06/01/2015 11:24:11 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_bb4dedd84e5449758f4235661dd] UNIQUE NONCLUSTERED 
(
	[subjectNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher_Subject]    Script Date: 06/01/2015 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Subject](
	[tacherID] [numeric](19, 0) NOT NULL,
	[subjectID] [numeric](19, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Criterion_Question]    Script Date: 06/01/2015 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criterion_Question](
	[criterionID] [numeric](19, 0) NOT NULL,
	[questionID] [numeric](19, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 06/01/2015 11:24:11 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_ae43b90d91d344909a9467ad237] UNIQUE NONCLUSTERED 
(
	[studentNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Result]    Script Date: 06/01/2015 11:24:11 ******/
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
	[status] [nvarchar](255) NULL,
	[criterionID] [numeric](19, 0) NULL,
	[studentID] [numeric](19, 0) NULL,
	[subjectID] [numeric](19, 0) NULL,
	[teacherID] [numeric](19, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[resultID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student_Subject]    Script Date: 06/01/2015 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Subject](
	[studentID] [numeric](19, 0) NOT NULL,
	[subjectID] [numeric](19, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 06/01/2015 11:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[answer] [int] NOT NULL,
	[position] [int] NOT NULL,
	[questionID] [numeric](19, 0) NOT NULL,
	[resultID] [numeric](19, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_1af82f290cbf47bd85f54ebb3b4]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Criterion_Question]  WITH CHECK ADD  CONSTRAINT [FK_1af82f290cbf47bd85f54ebb3b4] FOREIGN KEY([criterionID])
REFERENCES [dbo].[Criterion] ([criterionID])
GO
ALTER TABLE [dbo].[Criterion_Question] CHECK CONSTRAINT [FK_1af82f290cbf47bd85f54ebb3b4]
GO
/****** Object:  ForeignKey [FK_5b3cd8c16a9d4a028e755b9eb05]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Criterion_Question]  WITH CHECK ADD  CONSTRAINT [FK_5b3cd8c16a9d4a028e755b9eb05] FOREIGN KEY([questionID])
REFERENCES [dbo].[Question] ([questionID])
GO
ALTER TABLE [dbo].[Criterion_Question] CHECK CONSTRAINT [FK_5b3cd8c16a9d4a028e755b9eb05]
GO
/****** Object:  ForeignKey [FK_6a0d7dcc3ecf45aea5836eadaef]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_6a0d7dcc3ecf45aea5836eadaef] FOREIGN KEY([questionID])
REFERENCES [dbo].[Question] ([questionID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_6a0d7dcc3ecf45aea5836eadaef]
GO
/****** Object:  ForeignKey [FK_fef88231ae5946728dca43a8a29]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_fef88231ae5946728dca43a8a29] FOREIGN KEY([resultID])
REFERENCES [dbo].[Result] ([resultID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_fef88231ae5946728dca43a8a29]
GO
/****** Object:  ForeignKey [FK_c797b27be5614fce8e8992dd875]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_c797b27be5614fce8e8992dd875] FOREIGN KEY([frid])
REFERENCES [dbo].[Pages] ([pid])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_c797b27be5614fce8e8992dd875]
GO
/****** Object:  ForeignKey [FK_1c7a179873fa417daf06d3c428b]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_1c7a179873fa417daf06d3c428b] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([subjectID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_1c7a179873fa417daf06d3c428b]
GO
/****** Object:  ForeignKey [FK_22090b55c62747bcadda66c0ec1]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_22090b55c62747bcadda66c0ec1] FOREIGN KEY([criterionID])
REFERENCES [dbo].[Criterion] ([criterionID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_22090b55c62747bcadda66c0ec1]
GO
/****** Object:  ForeignKey [FK_c3f13956177d4e1691968f85257]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_c3f13956177d4e1691968f85257] FOREIGN KEY([teacherID])
REFERENCES [dbo].[Teacher] ([teacherID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_c3f13956177d4e1691968f85257]
GO
/****** Object:  ForeignKey [FK_f33e08f9279f4d799bc485faf40]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_f33e08f9279f4d799bc485faf40] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([studentID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_f33e08f9279f4d799bc485faf40]
GO
/****** Object:  ForeignKey [FK_5b7fb24c2b4e4012bd2bd6e98e9]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_5b7fb24c2b4e4012bd2bd6e98e9] FOREIGN KEY([codeID])
REFERENCES [dbo].[Code] ([codeID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_5b7fb24c2b4e4012bd2bd6e98e9]
GO
/****** Object:  ForeignKey [FK_6c06351f5d8f4c639d133c6eb36]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Student_Subject]  WITH CHECK ADD  CONSTRAINT [FK_6c06351f5d8f4c639d133c6eb36] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([subjectID])
GO
ALTER TABLE [dbo].[Student_Subject] CHECK CONSTRAINT [FK_6c06351f5d8f4c639d133c6eb36]
GO
/****** Object:  ForeignKey [FK_fbaf46b881324244a573580593c]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Student_Subject]  WITH CHECK ADD  CONSTRAINT [FK_fbaf46b881324244a573580593c] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([studentID])
GO
ALTER TABLE [dbo].[Student_Subject] CHECK CONSTRAINT [FK_fbaf46b881324244a573580593c]
GO
/****** Object:  ForeignKey [FK_7ec53ff6b57f4e9db58152010bf]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADD  CONSTRAINT [FK_7ec53ff6b57f4e9db58152010bf] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([subjectID])
GO
ALTER TABLE [dbo].[Teacher_Subject] CHECK CONSTRAINT [FK_7ec53ff6b57f4e9db58152010bf]
GO
/****** Object:  ForeignKey [FK_86fc16d8233e4d7087ed5a4c361]    Script Date: 06/01/2015 11:24:11 ******/
ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADnvarcharD  CONSTRAINT [FK_86fc16d8233e4d7087ed5a4c361] FOREIGN KEY([tacherID])
REFERENCES [dbo].[Teacher] ([teacherID])
GO
ALTER TABLE [dbo].[Teacher_Subject] CHECK CONSTRAINT [FK_86fc16d8233e4d7087ed5a4c361]
GO
