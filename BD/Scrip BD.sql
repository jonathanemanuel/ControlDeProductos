USE [ControlDeProductos]
GO
/****** Object:  Table [dbo].[Familias]    Script Date: 13/04/2017 17:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Familias](
	[IdFamilia] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Familias_1] PRIMARY KEY CLUSTERED 
(
	[IdFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 13/04/2017 17:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Codigo] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdProveedor] [int] NULL,
	[IdRubro] [int] NULL,
	[Marca] [varchar](50) NULL,
	[Precio] [varchar](50) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 13/04/2017 17:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IdProv] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Proveedores_1] PRIMARY KEY CLUSTERED 
(
	[IdProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rubros]    Script Date: 13/04/2017 17:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rubros](
	[IdRubro] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdFlia] [int] NULL,
 CONSTRAINT [PK_Rubros] PRIMARY KEY CLUSTERED 
(
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 13/04/2017 17:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Clave] [varchar](50) NULL,
	[Tipo_Usuario] [varchar](50) NULL,
 CONSTRAINT [Id__Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (1, N'Tecnologia', N'Articulos 
		   Informaticos, Computadoras')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (2, N'Electrodomesticos', N'Articulos 
		   para electronicos para el hogar')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (3, N'Casa y Jardin', N'Articulos 
		   para interior y exterior')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (4, N'Salud y Belleza', N'Articulos 
		   para cuidado personal')
INSERT [dbo].[Familias] ([IdFamilia], [Nombre], [Descripcion]) VALUES (5, N'Bebes y Niños', N'Articulos 
		   exclusivos para niños y bebes')
INSERT [dbo].[Productos] ([Codigo], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (1, N'Notebook 234', 1, 1, N'Lenovo', N'1900')
INSERT [dbo].[Productos] ([Codigo], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (2, N'Afeitadora', 5, 5, N'Phillip', N'2345')
INSERT [dbo].[Productos] ([Codigo], [Descripcion], [IdProveedor], [IdRubro], [Marca], [Precio]) VALUES (3, N'Carrito ', 6, 22, N'Nose', N'3500')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (1, N'Noblex', N'Av Mayo 12')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (2, N'LG', N'Escobar 33')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (3, N'Lenovo', N'Alem 2090')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (4, N'Sony', N'Cordoba 234')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (5, N'Phillip', N'Las Heras 678')
INSERT [dbo].[Proveedores] ([IdProv], [Nombre], [Direccion]) VALUES (6, N'Mimo', N'Costa 546')
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (1, N'Infomatica computacion', N'Computadoras, Tablet, Pendrive', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (2, N'Televisores', N'Smart TV, LEDs, Monitores', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (3, N'Fotografia/Video', N'Camaras, Videograbadora, GoPro', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (4, N'Accesorios', N'Lentes de camara, Auriculares', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (5, N'Cuidado Personal', N'Afeitadora, Depiladora', 1)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (6, N'Ventilacion/Calefaccion', N'Aires acoondicionados, Ventiladores, Estufas', 2)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (7, N'Hogar/Limpieza', N'Aspiradoras, Enceradora', 2)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (8, N'Heladeras/Freezer', N'Heladera, Mini Bar, Freezer', 2)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (9, N'Pequeños Electrdomesticos', N'Tostadoras, Mixer, Licuadora', 2)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (10, N'Muebles', N'Armarios, Cajoneras', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (11, N'Dormitorio', N'Camas, Sabana, Acolchados', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (12, N'Cocina', N'Cocinas, Anafres, Microondas', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (13, N'Living/Comedor', N'Mesas Ratona, Sillones', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (14, N'Baño', N'Griferias, Lavatorios', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (15, N'Herramientas', N'Taladro, Moladora', 3)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (16, N'Cuidado Capilar', N'Secador de pelo, Planchitas', 4)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (17, N'Moda', N'Ropa para damas, Ropa para Cabelleros', 4)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (18, N'Cuidado y Bienestar', N'Masajeador', 4)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (19, N'Cosmeticos', N'Maquillajes', 4)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (20, N'Juguetes', N'Juegos didacticos, Juegos de estrategia', 5)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (21, N'Butacas', N'Silla para autos', 5)
INSERT [dbo].[Rubros] ([IdRubro], [Nombre], [Descripcion], [IdFlia]) VALUES (22, N'Coches', N'Paraguitas, Coches de 3 ruedas,', 5)
INSERT [dbo].[Usuarios] ([IdUsuario], [Usuario], [Clave], [Tipo_Usuario]) VALUES (1, N'tania', N'1234', N'1')
INSERT [dbo].[Usuarios] ([IdUsuario], [Usuario], [Clave], [Tipo_Usuario]) VALUES (2, N'matias', N'1234', N'1')
/****** Object:  Index [IX_Familias]    Script Date: 13/04/2017 17:58:18 ******/
ALTER TABLE [dbo].[Familias] ADD  CONSTRAINT [IX_Familias] UNIQUE NONCLUSTERED 
(
	[IdFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Productos]    Script Date: 13/04/2017 17:58:18 ******/
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [IX_Productos] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rubros]    Script Date: 13/04/2017 17:58:18 ******/
ALTER TABLE [dbo].[Rubros] ADD  CONSTRAINT [IX_Rubros] UNIQUE NONCLUSTERED 
(
	[IdRubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuarios]    Script Date: 13/04/2017 17:58:18 ******/
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [IX_Usuarios] UNIQUE NONCLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Proveedores] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedores] ([IdProv])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Proveedores]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Rubros] FOREIGN KEY([IdRubro])
REFERENCES [dbo].[Rubros] ([IdRubro])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Rubros]
GO
ALTER TABLE [dbo].[Rubros]  WITH CHECK ADD  CONSTRAINT [FK_Rubros_Familias] FOREIGN KEY([IdFlia])
REFERENCES [dbo].[Familias] ([IdFamilia])
GO
ALTER TABLE [dbo].[Rubros] CHECK CONSTRAINT [FK_Rubros_Familias]
GO
