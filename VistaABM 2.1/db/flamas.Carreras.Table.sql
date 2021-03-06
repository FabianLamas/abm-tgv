USE [Pruebas]
GO
/****** Object:  Table [flamas].[Carreras]    Script Date: 16/7/2019 18:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [flamas].[Carreras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[cargaHorasReloj] [int] NULL,
	[cargaHorasCatedra] [int] NULL,
	[anios] [int] NULL,
	[descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Carreras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [flamas].[Carreras] ON 

INSERT [flamas].[Carreras] ([id], [nombre], [cargaHorasReloj], [cargaHorasCatedra], [anios], [descripcion]) VALUES (1, N'Soporte de Iasdasdasdasd', 1800, 10000, 3, N'asdasdasd')
INSERT [flamas].[Carreras] ([id], [nombre], [cargaHorasReloj], [cargaHorasCatedra], [anios], [descripcion]) VALUES (2, N'Soporte de Infraestructuras', 1800, 2400, 3, N'Esta carrera de grado con titulo oficial, ofrece una abarcativa propuesta de capacitación en todas las tareas correspondientes al área de infraestructuras y servidores más el adicional de las certificaciones internacionales que ayudan a potenciar aun mas el perfil del egresado.

A su vez esta carrera tiene muy baja carga horaria en materias de programación y por ende también en materias de matemáticas (solo una materia cuatrimestral en toda la carrera) haciendo hincapié en las materias referentes a las tareas de soporte de infraestructuras.')
INSERT [flamas].[Carreras] ([id], [nombre], [cargaHorasReloj], [cargaHorasCatedra], [anios], [descripcion]) VALUES (3, N'java', 2000, 2500, 5, N'carrera java')
INSERT [flamas].[Carreras] ([id], [nombre], [cargaHorasReloj], [cargaHorasCatedra], [anios], [descripcion]) VALUES (4, N'net', 2000, 2500, 5, N'carrera net')
INSERT [flamas].[Carreras] ([id], [nombre], [cargaHorasReloj], [cargaHorasCatedra], [anios], [descripcion]) VALUES (5, N'php', 2000, 2500, 5, N'carrera php')
SET IDENTITY_INSERT [flamas].[Carreras] OFF
