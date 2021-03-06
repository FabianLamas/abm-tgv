USE [Pruebas]
GO
/****** Object:  Table [flamas].[Modulo]    Script Date: 16/7/2019 18:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [flamas].[Modulo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[categoria] [varchar](50) NULL,
	[semestre] [varchar](50) NULL,
	[idCarrera] [int] NULL,
	[logo] [varchar](500) NULL,
 CONSTRAINT [PK_Modulo_2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [flamas].[Modulo] ON 

INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (1, N'Introduccion a la Informática', N'Programación', N'primero', 1, N'qwe')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (2, N'Arquitectura de Computadoras', N'Infraestructuras', N'primero', 1, N'qwe')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (3, N'Matemática I', N'Ciencias Básicas', N'primero', 1, N'qwe')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (4, N'Filosofía', N'Ciencias Básicas', N'primero', 1, N'qwe')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (5, N'Programación I ', N'Programación', N'segundo', 1, N'qew')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (6, N'Base de datos I', N'Base de Datos	', N'segundo', 1, N'qwe')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (7, N'Introducción a Redes ', N'Infraestructuras', N'segundo', 1, N'qwe')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (8, N'Matemática II', N'Ciencias Básicas	', N'segundo', 1, N'qwe')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (9, N'Programación II', N'Programación', N'tercero', 1, N'NUqweLL')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (10, N'Taller de Desarrollo I ', N'Programación', N'tercero', 1, N'qwe')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (11, N'Bases de Datos II', N'Base de Datos	', N'tercero', 1, N'NUasdaLL')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (12, N'Matemática III', N'Ciencias Básicas	', N'tercero', 1, N'ad')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (13, N'Probabilidad y Estadística', N'Ciencias Básicas	', N'tercero', 1, N'NasdULL')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (14, N'Ambiente Empresarial', N'Empresarial', N'tercero', 1, N'llll')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (15, N'Sistemas Operativos I', N'Sistemas Operativos', N'primero', 2, N'asdasd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (16, N'Arquitectura del Computador', N'Infraestructuras', N'primero', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (17, N'Tecnología Computacional', N'Programación', N'primero', 2, N'sadasd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (18, N'Programación I', N'Programación', N'primero', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (19, N'Análisis Matemático', N'Ciencias Básicas	', N'primero', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (20, N'Sistemas Operativos II', N'Sistemas Operativos', N'segundo', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (21, N'Redes de Datos', N'Redes', N'segundo', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (22, N'Infraestructura de Redes', N'Redes', N'segundo', 2, N'asf')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (23, N'Estadística y probabilidad', N'Ciencias Básicas	', N'segundo', 2, N'fas')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (24, N'Inglés Técnico I', N'Inglés', N'segundo', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (25, N'Administración de Infraestructura', N'Infraestructuras', N'tercero', 2, N'asddasd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (26, N'Administración de Bases de Datos', N'Base de Datos', N'tercero', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (27, N'Programación II', N'Programación', N'tercero', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (28, N'Inglés Técnico II', N'Inglés', N'tercero', 2, N'asd')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (29, N'Java para no programadores', N'java', N'0', 3, N'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiQjrC70K3jAhVOHrkGHc48CToQjRx6BAgBEAU&url=https%3A%2F%2Fwww.stickpng.com%2Fes%2Fimg%2Ficonos-logotipos-emojis%2Fcompanias-technologicas%2Flogo-java&psig=AOvVaw1xdiJPG5Sv0woqLlnWSSff&ust=1562960698541593')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (30, N'Java Standard Web Programming, J2SE
', N'java', N'0', 3, N'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiQjrC70K3jAhVOHrkGHc48CToQjRx6BAgBEAU&url=https%3A%2F%2Fwww.stickpng.com%2Fes%2Fimg%2Ficonos-logotipos-emojis%2Fcompanias-technologicas%2Flogo-java&psig=AOvVaw1xdiJPG5Sv0woqLlnWSSff&ust=1562960698541593')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (31, N'Java Web: Servlets, JSP, JSTL & AJAX', N'java', N'0', 3, N'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiQjrC70K3jAhVOHrkGHc48CToQjRx6BAgBEAU&url=https%3A%2F%2Fwww.stickpng.com%2Fes%2Fimg%2Ficonos-logotipos-emojis%2Fcompanias-technologicas%2Flogo-java&psig=AOvVaw1xdiJPG5Sv0woqLlnWSSff&ust=1562960698541593')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (32, N'Java Web Services', N'java', N'0', 3, N'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiQjrC70K3jAhVOHrkGHc48CToQjRx6BAgBEAU&url=https%3A%2F%2Fwww.stickpng.com%2Fes%2Fimg%2Ficonos-logotipos-emojis%2Fcompanias-technologicas%2Flogo-java&psig=AOvVaw1xdiJPG5Sv0woqLlnWSSff&ust=1562960698541593')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (33, N'Introducción a la Programación con C# .NET', N'.NET', N'0', 4, N'https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/052011/microsoft_.net_.png?itok=LFPsEzkM')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (34, N'Programación Web.NET con C# .NET', N'.NET', N'0', 4, N'https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/052011/microsoft_.net_.png?itok=LFPsEzkM')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (35, N'Programación Web con ASP.NET', N'.NET', N'0', 4, N'https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/052011/microsoft_.net_.png?itok=LFPsEzkM')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (36, N'Web API .Net Core ', N'.NET', N'0', 4, N'https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/052011/microsoft_.net_.png?itok=LFPsEzkM')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (37, N'Developing MVC 5 Web Applications ', N'.NET', N'0', 4, N'https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/052011/microsoft_.net_.png?itok=LFPsEzkM')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (38, N'Programación Web en PHP y MySQL', N'PHP', N'0', 5, N'https://luauf.com/wp-content/uploads/2017/02/PHP-7-logo.png')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (39, N'PHP - Programación Orientada a Objetos', N'PHP', N'0', 5, N'https://luauf.com/wp-content/uploads/2017/02/PHP-7-logo.png')
INSERT [flamas].[Modulo] ([id], [nombre], [categoria], [semestre], [idCarrera], [logo]) VALUES (40, N'PHP MVC Laravel', N'PHP', N'0', 5, N'https://luauf.com/wp-content/uploads/2017/02/PHP-7-logo.png')
SET IDENTITY_INSERT [flamas].[Modulo] OFF
ALTER TABLE [flamas].[Modulo]  WITH CHECK ADD  CONSTRAINT [FK_Modulo_Carreras] FOREIGN KEY([idCarrera])
REFERENCES [flamas].[Carreras] ([id])
GO
ALTER TABLE [flamas].[Modulo] CHECK CONSTRAINT [FK_Modulo_Carreras]
GO
