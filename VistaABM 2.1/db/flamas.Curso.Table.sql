USE [Pruebas]
GO
/****** Object:  Table [flamas].[Curso]    Script Date: 16/7/2019 18:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [flamas].[Curso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](max) NULL,
	[logo] [varchar](100) NULL,
	[horas] [int] NULL,
	[idModulo] [int] NOT NULL,
 CONSTRAINT [PK_Curso_2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [flamas].[Curso] ON 

INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (3, N'Introduccion a la Informática', N'asd', N'as', 1, 1)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (4, N'Arquitectura de Computadoras', N'asd', N'das', 1, 1)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (5, N'Matemática I', N'asd', N'ddddddddddddd', 1, 1)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (6, N'Filosofía', N'asd', N'asd', 1, 1)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (7, N'Programación I ', N'asd', N'as', 1, 2)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (8, N'Base de datos I', N'asd', N'das', 1, 2)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (9, N'Introducción a Redes ', N'asd', N'das', 1, 2)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (10, N'Matemática II', N'asd', N'da', 1, 2)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (11, N'Programación II', N'asd', N'sda', 1, 3)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (12, N'Taller de Desarrollo I ', N'asd', N'sd', 1, 3)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (13, N'Bases de Datos II', N'as', N'asd', 1, 3)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (14, N'Matemática III', N'da', N'asd', 1, 3)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (15, N'Probabilidad y Estadística', N'sd', N'asd', 11, 3)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (16, N'Ambiente Empresarial', N'asd', N'asd', 1, 3)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (17, N'Sistemas Operativos I', N'as', N'as', 1, 4)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (20, N'Arquitectura del Computador', N'das', N'da', 1, 4)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (21, N'Tecnología Computacional', N'das', N'sd', 1, 4)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (22, N'Programación I', N'da', N'asd', 1, 4)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (23, N'Análisis Matemático', N'sd', N'asd', 1, 4)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (24, N'Sistemas Operativos II', N'asd', N'as', 1, 5)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (25, N'Redes de Datos', N'asd', N'das', 1, 5)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (27, N'Infraestructura de Redes', N'asd', N'da', 1, 5)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (28, N'Estadística y probabilidad', N'asd', N'sda', 1, 5)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (29, N'Inglés Técnico I', N'as', N'sd', 1, 5)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (30, N'Administración de Infraestructura', N'das', N'asd', 1, 6)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (31, N'Administración de Bases de Datos', N'da', N'asd', 1, 6)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (32, N'Programación II', N'sd', N'as', 1, 6)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (33, N'Inglés Técnico II', N'asda', N'd', 1, 6)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (36, N'Java para no programadores', N'sd', N'https://www.educacionit.com/images/cursos/r/curso-de-java-para-no-programadores.jpg', 15, 7)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (38, N'Java Standard Web Programming, J2SE
', N'Aprende a construir aplicaciones con Java y domina por completo una de las tecnologías más utilizadas del mercado. Aprendé a desarrollar poderosas aplicaciones Orientadas a Objetos con integración con Base de Datos y en cualquier sistema operativo', N'https://www.educacionit.com/images/cursos/r/curso-de-java-para-no-programadores.jpg', 40, 7)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (40, N'Java Web: Servlets, JSP, JSTL & AJAX', N'Aprenda a desarrollar aplicaciones web empresariales a través del uso del lenguaje de programación más buscado en el mercado laboral. ', N'https://www.educacionit.com/images/cursos/r/curso-de-java-para-no-programadores.jpg', 30, 7)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (41, N'Java Web Services', N'Aprende a consumir servicios Web y crear tus propios Servidores de servicios Web . Abre tus sitios a la posibilidad de consumir información desde otros servidores como Yahoo, Google, Amazon .', N'https://www.educacionit.com/images/cursos/r/curso-de-java-para-no-programadores.jpg', 12, 7)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (42, N'Introducción a la Programación con C# .NET', N'Aprende a programar con una de las tecnologías más utilizadas en el mercado de IT. Este curso está orientado a quienes no tienen experiencia en programación y desean aprender a programar desarrollando aplicaciones en .NET.', N'https://www.educacionit.com/images/cursos/r/curso-de-web-api-net-core.jpg', 15, 8)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (43, N'Programación Web.NET con C# .NET', N'Aprende a desarrollar poderosas aplicaciones Orientadas a Objetos con este Framework multiplataforma de Microsoft , para aplicaciones Web, aplicaciones Móviles y aplicaciones de Escritorio .', N'https://www.educacionit.com/images/cursos/r/curso-de-web-api-net-core.jpg', 40, 8)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (44, N'Programación Web con ASP.NET', N'Aprende desarrollar sitios Web dinámicos con ASP.NET y utiliza todos los beneficios del Framework .NET. Diseña pantallas Web con Web Forms creando sitios completos de e-commerce para Internet e Intranets. ', N'https://www.educacionit.com/images/cursos/r/curso-de-web-api-net-core.jpg', 24, 8)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (45, N'Web API .Net Core ', N'Aprende a crear backend basados en NET Core 2.2 y Web API, que podrán ser consumidos por diferentes clientes.', N'https://www.educacionit.com/images/cursos/r/curso-de-web-api-net-core.jpg', 21, 8)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (46, N'Developing MVC 5 Web Applications ', N'Aprende a desarrollar aplicaciones avanzadas de ASP.NET MVC usando tecnologías y herramientas de .NET Framework 5, mejorando el rendimiento y la escalabilidad de la aplicación.', N'https://www.educacionit.com/images/cursos/r/curso-de-web-api-net-core.jpg', 36, 8)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (47, N'Programación Web en PHP y MySQL', N'Aprende a construir sitios Web con la tecnología más importante y más utilizada en Internet. PHP es el lenguaje más poderoso para desarrollo de portales y sitios de comercio electrónico y es por eso que es el lenguaje más requerido a nivel mundial', N'https://www.educacionit.com/images/cursos/r/curso-de-php.jpg', 40, 9)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (48, N'PHP - Programación Orientada a Objetos', N'Aprende a desarrollar aplicaciones Web con el Paradigma de Objetos. A lo largo de este curso aprenderás por completo la programación orientada a Objetos y los últimos aspectos y fundamentos avanzado que agrego PHP en su última versión.', N'https://www.educacionit.com/images/cursos/r/curso-de-php.jpg', 12, 9)
INSERT [flamas].[Curso] ([id], [nombre], [descripcion], [logo], [horas], [idModulo]) VALUES (49, N'PHP MVC Laravel', N'Aprende a desarrollar aplicaciones PHP con Laravel. Domina los principales patrones de diseño y desarrolla aplicaciones con el patrón MVC. Conviértete en un experto desarrollador Web utilizando el framework más demandado del mercado laboral.', N'https://www.educacionit.com/images/cursos/r/curso-de-php.jpg', 30, 9)
SET IDENTITY_INSERT [flamas].[Curso] OFF
ALTER TABLE [flamas].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Modulo] FOREIGN KEY([idModulo])
REFERENCES [flamas].[Modulo] ([id])
GO
ALTER TABLE [flamas].[Curso] CHECK CONSTRAINT [FK_Curso_Modulo]
GO
