USE [BlogDB]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [FullName]) VALUES (1, N'admin', 0xE33843DB5524D80A04C3561E2F7D8F21A14197AF715EA5F62CA809443D106A5C, NULL)
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [FullName]) VALUES (2, N'maria', 0x8CF109459E148DEB1A6080FE51C5020753585CBC964F65562A4EAE513A943B54, N'Maria Petrova')
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [FullName]) VALUES (3, N'peter', NULL, N'Peter Petrov')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([ID], [Title], [Body], [Date], [AuthorID]) VALUES (1, N'Java 8', N'Java 8 is the latest Java on the market.', CAST(N'2016-07-10T15:56:00.000' AS DateTime), NULL)
INSERT [dbo].[Posts] ([ID], [Title], [Body], [Date], [AuthorID]) VALUES (2, N'C# Course', N'A new C# course starts every month at SoftUni', CAST(N'2016-06-14T12:03:00.000' AS DateTime), 2)
INSERT [dbo].[Posts] ([ID], [Title], [Body], [Date], [AuthorID]) VALUES (4, N'PHP 7', N'Join our PHP 7 webinar to learn about the new features in PHP 7', CAST(N'2016-05-29T23:51:00.000' AS DateTime), 1)
INSERT [dbo].[Posts] ([ID], [Title], [Body], [Date], [AuthorID]) VALUES (5, N'MySQL and MariaDB', N'Do you know the difference between MySQL and MariaDB?', CAST(N'2016-04-02T08:06:00.000' AS DateTime), 1)
INSERT [dbo].[Posts] ([ID], [Title], [Body], [Date], [AuthorID]) VALUES (7, N'Java EE Training', N'Welcome to the Java EE training at SoftUni', CAST(N'2016-05-19T09:55:00.000' AS DateTime), 3)
INSERT [dbo].[Posts] ([ID], [Title], [Body], [Date], [AuthorID]) VALUES (8, N'Java Web', N'Welcome to Java Web development tutorial', CAST(N'2016-06-14T11:33:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Posts] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([ID], [Text], [PostID], [AuthorID], [AuthorName], [Date]) VALUES (2, N'I like Java 8!', 1, NULL, N'Sahil Jai', CAST(N'2016-07-11T12:32:56.000' AS DateTime))
INSERT [dbo].[Comments] ([ID], [Text], [PostID], [AuthorID], [AuthorName], [Date]) VALUES (3, N'Great Java article.', 1, 3, NULL, CAST(N'2016-06-25T07:03:23.000' AS DateTime))
INSERT [dbo].[Comments] ([ID], [Text], [PostID], [AuthorID], [AuthorName], [Date]) VALUES (5, N'Can this run on Linux?', 2, NULL, N'Jahil Diab', CAST(N'2016-07-05T12:51:58.000' AS DateTime))
INSERT [dbo].[Comments] ([ID], [Text], [PostID], [AuthorID], [AuthorName], [Date]) VALUES (6, N'Try also Spring MVC', 7, 2, NULL, CAST(N'2016-07-17T11:53:54.000' AS DateTime))
INSERT [dbo].[Comments] ([ID], [Text], [PostID], [AuthorID], [AuthorName], [Date]) VALUES (8, N'I prefer Spring Framework', 7, NULL, N'Stefa', CAST(N'2016-07-21T14:16:31.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([ID], [Name]) VALUES (1, N'C#')
INSERT [dbo].[Tags] ([ID], [Name]) VALUES (2, N'Java')
INSERT [dbo].[Tags] ([ID], [Name]) VALUES (3, N'PHP')
INSERT [dbo].[Tags] ([ID], [Name]) VALUES (4, N'SQL')
INSERT [dbo].[Tags] ([ID], [Name]) VALUES (5, N'databases')
INSERT [dbo].[Tags] ([ID], [Name]) VALUES (6, N'programming')
INSERT [dbo].[Tags] ([ID], [Name]) VALUES (7, N'Web')
SET IDENTITY_INSERT [dbo].[Tags] OFF
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (1, 2)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (1, 6)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (2, 1)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (2, 6)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (4, 3)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (4, 6)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (4, 7)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (5, 4)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (5, 5)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (7, 2)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (7, 6)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (8, 2)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (8, 6)
INSERT [dbo].[Posts_Tags] ([PostID], [TagID]) VALUES (8, 7)
