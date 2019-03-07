USE [teafaculty]
GO
/****** Object:  Table [dbo].[academy]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[academy](
	[departid] [int] NOT NULL,
	[departname] [char](40) NOT NULL,
	[dpassword] [char](18) NOT NULL,
	[dtelephone] [char](12) NULL,
	[incharge] [char](15) NULL,
	[instruction] [varchar](255) NULL,
	[status] [char](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[departid] [int] NOT NULL,
	[departname] [char](40) NOT NULL,
	[dpassword] [char](18) NOT NULL,
	[dtelephone] [char](12) NULL,
	[incharge] [char](15) NULL,
	[instruction] [varchar](255) NULL,
	[status] [char](8) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[departid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manager]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manager](
	[mid] [int] NOT NULL,
	[mname] [char](18) NOT NULL,
	[mpassword] [char](18) NOT NULL,
	[status] [char](8) NOT NULL,
 CONSTRAINT [PK_manager] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resource]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resource](
	[resid] [int] NOT NULL,
	[resname] [char](50) NULL,
	[resourcemess] [varchar](255) NULL,
 CONSTRAINT [PK_resource] PRIMARY KEY CLUSTERED 
(
	[resid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[roleid] [int] NOT NULL,
	[rolename] [char](30) NOT NULL,
	[remark] [char](255) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rolePermission]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rolePermission](
	[rpid] [int] NOT NULL,
	[roleid] [int] NOT NULL,
	[rpaction] [char](80) NOT NULL,
	[rpoption] [int] NULL,
 CONSTRAINT [PK_rolePermission] PRIMARY KEY CLUSTERED 
(
	[rpid] ASC,
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sign]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sign](
	[registerid] [int] NOT NULL,
	[teaid] [int] NOT NULL,
	[trainid] [int] NOT NULL,
	[registertime] [datetime] NOT NULL,
 CONSTRAINT [PK_sign] PRIMARY KEY CLUSTERED 
(
	[registerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[teaid] [int] NOT NULL,
	[tname] [char](20) NOT NULL,
	[tpassword] [char](18) NOT NULL,
	[sex] [char](4) NULL,
	[birthday] [date] NULL,
	[departid] [int] NOT NULL,
	[ranks] [char](20) NULL,
	[education] [char](20) NULL,
	[degree] [char](10) NULL,
	[staffroom] [char](40) NULL,
	[duties] [char](20) NULL,
	[entertime] [date] NULL,
	[worksituation] [char](8) NULL,
	[status] [char](8) NULL,
	[science] [varchar](255) NULL,
	[award] [varchar](255) NULL,
 CONSTRAINT [PK_teacher_1] PRIMARY KEY CLUSTERED 
(
	[teaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[train]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[train](
	[trainid] [int] NOT NULL,
	[trainyear] [char](8) NULL,
	[traintype] [char](20) NULL,
	[subject] [char](20) NULL,
	[organizer] [char](60) NULL,
	[address] [char](40) NULL,
	[hour] [int] NULL,
	[traintime] [char](30) NULL,
	[range] [char](20) NULL,
	[undertake] [char](40) NULL,
	[number] [char](20) NULL,
	[registration] [char](30) NULL,
	[text] [varchar](1000) NULL,
	[enclosure] [char](50) NULL,
	[status] [char](20) NULL,
	[examine] [char](20) NULL,
 CONSTRAINT [PK_train] PRIMARY KEY CLUSTERED 
(
	[trainid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[upload]    Script Date: 2019/3/6 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[upload](
	[uploadid] [int] NOT NULL,
	[erid] [int] NOT NULL,
	[resid] [int] NOT NULL,
	[uploadtime] [datetime] NOT NULL,
 CONSTRAINT [PK_upload] PRIMARY KEY CLUSTERED 
(
	[uploadid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[academy] ([departid], [departname], [dpassword], [dtelephone], [incharge], [instruction], [status]) VALUES (9002, N'教师发展中心                            ', N'123456            ', NULL, NULL, NULL, N'0       ')
INSERT [dbo].[department] ([departid], [departname], [dpassword], [dtelephone], [incharge], [instruction], [status]) VALUES (9002, N'教师发展中心                            ', N'123456            ', NULL, NULL, NULL, N'0       ')
INSERT [dbo].[manager] ([mid], [mname], [mpassword], [status]) VALUES (1, N'admin             ', N'admin             ', N'0       ')
INSERT [dbo].[role] ([roleid], [rolename], [remark]) VALUES (1, N'教师                          ', NULL)
INSERT [dbo].[role] ([roleid], [rolename], [remark]) VALUES (2, N'系统管理员                    ', NULL)
INSERT [dbo].[role] ([roleid], [rolename], [remark]) VALUES (3, N'高级管理员                    ', NULL)
INSERT [dbo].[role] ([roleid], [rolename], [remark]) VALUES (4, N'学院管理员                    ', NULL)
INSERT [dbo].[role] ([roleid], [rolename], [remark]) VALUES (5, N'部门管理员                    ', NULL)
INSERT [dbo].[teacher] ([teaid], [tname], [tpassword], [sex], [birthday], [departid], [ranks], [education], [degree], [staffroom], [duties], [entertime], [worksituation], [status], [science], [award]) VALUES (5009, N'李丽萍              ', N'123456            ', N'女  ', NULL, 9002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0       ', NULL, NULL)
ALTER TABLE [dbo].[department] ADD  CONSTRAINT [DF_department_dpassword]  DEFAULT ((123456)) FOR [dpassword]
GO
ALTER TABLE [dbo].[department] ADD  CONSTRAINT [DF_department_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[manager] ADD  CONSTRAINT [DF_manager_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[rolePermission] ADD  CONSTRAINT [DF_rolePermission_rpoption]  DEFAULT ((0)) FOR [rpoption]
GO
ALTER TABLE [dbo].[teacher] ADD  CONSTRAINT [DF_teacher_tpassword]  DEFAULT ((123456)) FOR [tpassword]
GO
ALTER TABLE [dbo].[teacher] ADD  CONSTRAINT [DF_teacher_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[department]  WITH CHECK ADD  CONSTRAINT [FK_department_department] FOREIGN KEY([departid])
REFERENCES [dbo].[department] ([departid])
GO
ALTER TABLE [dbo].[department] CHECK CONSTRAINT [FK_department_department]
GO
ALTER TABLE [dbo].[rolePermission]  WITH CHECK ADD  CONSTRAINT [FK_rolePermission_rolePermission] FOREIGN KEY([roleid])
REFERENCES [dbo].[role] ([roleid])
GO
ALTER TABLE [dbo].[rolePermission] CHECK CONSTRAINT [FK_rolePermission_rolePermission]
GO
ALTER TABLE [dbo].[sign]  WITH CHECK ADD  CONSTRAINT [FK_register_register] FOREIGN KEY([teaid])
REFERENCES [dbo].[teacher] ([teaid])
GO
ALTER TABLE [dbo].[sign] CHECK CONSTRAINT [FK_register_register]
GO
ALTER TABLE [dbo].[sign]  WITH CHECK ADD  CONSTRAINT [FK_register_train] FOREIGN KEY([trainid])
REFERENCES [dbo].[train] ([trainid])
GO
ALTER TABLE [dbo].[sign] CHECK CONSTRAINT [FK_register_train]
GO
ALTER TABLE [dbo].[teacher]  WITH CHECK ADD  CONSTRAINT [FK_teacher_department] FOREIGN KEY([departid])
REFERENCES [dbo].[department] ([departid])
GO
ALTER TABLE [dbo].[teacher] CHECK CONSTRAINT [FK_teacher_department]
GO
ALTER TABLE [dbo].[upload]  WITH CHECK ADD  CONSTRAINT [FK_upload_resource] FOREIGN KEY([resid])
REFERENCES [dbo].[resource] ([resid])
GO
ALTER TABLE [dbo].[upload] CHECK CONSTRAINT [FK_upload_resource]
GO
