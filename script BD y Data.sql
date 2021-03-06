USE [NOM035]
GO
/****** Object:  Table [dbo].[Sis_Empresas]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sis_Empresas](
	[CveEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[Empresa] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Sis_Empresas] PRIMARY KEY CLUSTERED 
(
	[CveEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sis_Modulos]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sis_Modulos](
	[CveModulo] [int] IDENTITY(1,1) NOT NULL,
	[Modulo] [varchar](50) NULL,
	[Descripcion] [varchar](150) NULL,
	[Orden] [int] NULL,
 CONSTRAINT [PK_Modulos] PRIMARY KEY CLUSTERED 
(
	[CveModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sis_Permisos]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sis_Permisos](
	[CvePermiso] [int] IDENTITY(1,1) NOT NULL,
	[Permiso] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[CveModulo] [int] NULL,
 CONSTRAINT [PK_Sis_Permisos] PRIMARY KEY CLUSTERED 
(
	[CvePermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sis_Roles]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sis_Roles](
	[CveRol] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [varchar](50) NOT NULL,
	[CveEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_Sis_Roles] PRIMARY KEY CLUSTERED 
(
	[CveRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sis_RolesPermisos]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sis_RolesPermisos](
	[CveRol] [int] NOT NULL,
	[CvePermiso] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sis_Usuarios]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sis_Usuarios](
	[CveUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Estatus] [bit] NOT NULL,
	[CveEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_Sis_Usuarios] PRIMARY KEY CLUSTERED 
(
	[CveUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sis_UsuariosRoles]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sis_UsuariosRoles](
	[CveUsuario] [int] NOT NULL,
	[CveRol] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sis_Empresas] ON 

INSERT [dbo].[Sis_Empresas] ([CveEmpresa], [Empresa]) VALUES (1, N'ADS')
SET IDENTITY_INSERT [dbo].[Sis_Empresas] OFF
SET IDENTITY_INSERT [dbo].[Sis_Modulos] ON 

INSERT [dbo].[Sis_Modulos] ([CveModulo], [Modulo], [Descripcion], [Orden]) VALUES (1, N'Inicio', N'Dashboard', 1)
INSERT [dbo].[Sis_Modulos] ([CveModulo], [Modulo], [Descripcion], [Orden]) VALUES (2, N'Usuarios', NULL, 2)
SET IDENTITY_INSERT [dbo].[Sis_Modulos] OFF
SET IDENTITY_INSERT [dbo].[Sis_Permisos] ON 

INSERT [dbo].[Sis_Permisos] ([CvePermiso], [Permiso], [Descripcion], [CveModulo]) VALUES (1, N'Agregar Usuario', N'Agregar Usuario', 1)
INSERT [dbo].[Sis_Permisos] ([CvePermiso], [Permiso], [Descripcion], [CveModulo]) VALUES (2, N'Editar Usuario', N'Editar Usuario', 1)
INSERT [dbo].[Sis_Permisos] ([CvePermiso], [Permiso], [Descripcion], [CveModulo]) VALUES (3, N'Eliminar Usuario', N'Eliminar Usuario', 1)
SET IDENTITY_INSERT [dbo].[Sis_Permisos] OFF
SET IDENTITY_INSERT [dbo].[Sis_Roles] ON 

INSERT [dbo].[Sis_Roles] ([CveRol], [Rol], [CveEmpresa]) VALUES (1, N'Administrador', 1)
SET IDENTITY_INSERT [dbo].[Sis_Roles] OFF
INSERT [dbo].[Sis_RolesPermisos] ([CveRol], [CvePermiso]) VALUES (1, 1)
INSERT [dbo].[Sis_RolesPermisos] ([CveRol], [CvePermiso]) VALUES (1, 2)
INSERT [dbo].[Sis_RolesPermisos] ([CveRol], [CvePermiso]) VALUES (1, 3)
SET IDENTITY_INSERT [dbo].[Sis_Usuarios] ON 

INSERT [dbo].[Sis_Usuarios] ([CveUsuario], [NombreUsuario], [Email], [Password], [Estatus], [CveEmpresa]) VALUES (1, N'Sistema', N'sistema@adssistemas.mx', N'ads123456', 0, 1)
INSERT [dbo].[Sis_Usuarios] ([CveUsuario], [NombreUsuario], [Email], [Password], [Estatus], [CveEmpresa]) VALUES (2, N'Usuario 1', N'usuario1@usuario.com', N'-acceso-', 1, 1)
INSERT [dbo].[Sis_Usuarios] ([CveUsuario], [NombreUsuario], [Email], [Password], [Estatus], [CveEmpresa]) VALUES (3, N'Usuario 2', N'usuario2@usuario.com', N'-acceso-', 1, 1)
INSERT [dbo].[Sis_Usuarios] ([CveUsuario], [NombreUsuario], [Email], [Password], [Estatus], [CveEmpresa]) VALUES (13, N'Demo', N'correo@correo', N'acceso', 1, 1)
INSERT [dbo].[Sis_Usuarios] ([CveUsuario], [NombreUsuario], [Email], [Password], [Estatus], [CveEmpresa]) VALUES (14, N'Demo 2', N'correo2@correo.com', N'-acceso-', 1, 1)
SET IDENTITY_INSERT [dbo].[Sis_Usuarios] OFF
INSERT [dbo].[Sis_UsuariosRoles] ([CveUsuario], [CveRol]) VALUES (1, 1)
INSERT [dbo].[Sis_UsuariosRoles] ([CveUsuario], [CveRol]) VALUES (2, 1)
ALTER TABLE [dbo].[Sis_Usuarios] ADD  CONSTRAINT [DF_Sis_Usuarios_Estatus]  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Sis_Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Sis_Permisos_Sis_Modulos] FOREIGN KEY([CveModulo])
REFERENCES [dbo].[Sis_Modulos] ([CveModulo])
GO
ALTER TABLE [dbo].[Sis_Permisos] CHECK CONSTRAINT [FK_Sis_Permisos_Sis_Modulos]
GO
ALTER TABLE [dbo].[Sis_Roles]  WITH CHECK ADD  CONSTRAINT [FK_Sis_Roles_Sis_Empresas] FOREIGN KEY([CveEmpresa])
REFERENCES [dbo].[Sis_Empresas] ([CveEmpresa])
GO
ALTER TABLE [dbo].[Sis_Roles] CHECK CONSTRAINT [FK_Sis_Roles_Sis_Empresas]
GO
ALTER TABLE [dbo].[Sis_RolesPermisos]  WITH CHECK ADD  CONSTRAINT [FK_Sis_RolesPermisos_Sis_Permisos] FOREIGN KEY([CvePermiso])
REFERENCES [dbo].[Sis_Permisos] ([CvePermiso])
GO
ALTER TABLE [dbo].[Sis_RolesPermisos] CHECK CONSTRAINT [FK_Sis_RolesPermisos_Sis_Permisos]
GO
ALTER TABLE [dbo].[Sis_RolesPermisos]  WITH CHECK ADD  CONSTRAINT [FK_Sis_RolesPermisos_Sis_Roles] FOREIGN KEY([CveRol])
REFERENCES [dbo].[Sis_Roles] ([CveRol])
GO
ALTER TABLE [dbo].[Sis_RolesPermisos] CHECK CONSTRAINT [FK_Sis_RolesPermisos_Sis_Roles]
GO
ALTER TABLE [dbo].[Sis_Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Sis_Usuarios_Sis_Empresas] FOREIGN KEY([CveEmpresa])
REFERENCES [dbo].[Sis_Empresas] ([CveEmpresa])
GO
ALTER TABLE [dbo].[Sis_Usuarios] CHECK CONSTRAINT [FK_Sis_Usuarios_Sis_Empresas]
GO
ALTER TABLE [dbo].[Sis_UsuariosRoles]  WITH CHECK ADD  CONSTRAINT [FK_Sis_UsuariosRoles_Sis_Roles] FOREIGN KEY([CveRol])
REFERENCES [dbo].[Sis_Roles] ([CveRol])
GO
ALTER TABLE [dbo].[Sis_UsuariosRoles] CHECK CONSTRAINT [FK_Sis_UsuariosRoles_Sis_Roles]
GO
ALTER TABLE [dbo].[Sis_UsuariosRoles]  WITH CHECK ADD  CONSTRAINT [FK_Sis_UsuariosRoles_Sis_Usuarios] FOREIGN KEY([CveUsuario])
REFERENCES [dbo].[Sis_Usuarios] ([CveUsuario])
GO
ALTER TABLE [dbo].[Sis_UsuariosRoles] CHECK CONSTRAINT [FK_Sis_UsuariosRoles_Sis_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[Sis_Login]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <25-01-2020>
-- Description:	<Verifica si los datos de acceso son correctos>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_Login]
	@NombreUsuario	VARCHAR(100),
	@Password VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT	U.CveUsuario, U.NombreUsuario, U.Email, U.Password, U.Estatus,
			U.CveEmpresa, E.Empresa
	FROM Sis_Usuarios U
	INNER JOIN Sis_Empresas E ON U.CveEmpresa = E.CveEmpresa
	WHERE ( U.NombreUsuario = @NombreUsuario OR U.Email = @NombreUsuario) AND U.Password = @Password
END

--exec [dbo].[Sis_Login] 'sistema@adssistemas.mx', 'ads123456'
GO
/****** Object:  StoredProcedure [dbo].[Sis_RolDelete]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <12-02-2020>
-- Description:	<Elimina un Rol>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_RolDelete]
	@CveRol	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[Sis_RolesPermisos]
	WHERE CveRol = @CveRol;

	DELETE FROM [dbo].[Sis_Roles]
	WHERE CveRol = @CveRol;

	SELECT @CveRol AS [Id];
END
GO
/****** Object:  StoredProcedure [dbo].[Sis_RolesGet]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <10-02-2020>
-- Description:	<Obtiene una lista de Roles>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_RolesGet]
	@CveEmpresa	INT,
	@CveRol		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT	ROL.CveRol, ROL.Rol AS NombreRol, ROL.CveEmpresa, E.Empresa
	FROM Sis_Roles ROL
	INNER JOIN Sis_Empresas E ON ROL.CveEmpresa = E.CveEmpresa

	WHERE ROL.CveEmpresa = @CveEmpresa AND ROL.CveRol = COALESCE(@CveRol, ROL.CveRol)
END

--[Sis_GetRoles] 1, null
GO
/****** Object:  StoredProcedure [dbo].[Sis_RolSave]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <12-02-2020>
-- Description:	<Guarda un Rol>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_RolSave]
	@CveEmpresa	INT,
	@Rol VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Sis_Roles] (Rol, CveEmpresa)
    VALUES (@Rol, @CveEmpresa);

	SELECT  SCOPE_IDENTITY() AS [Id];
END
GO
/****** Object:  StoredProcedure [dbo].[Sis_RolUpdate]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <12-02-2020>
-- Description:	<Actualiza un Rol>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_RolUpdate]
	@CveRol	INT,
	@Rol	VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[Sis_Roles] SET
	Rol = @Rol
	WHERE CveRol = @CveRol

	SELECT @CveRol AS [Id];
END
GO
/****** Object:  StoredProcedure [dbo].[Sis_UsuarioDelete]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <12-02-2020>
-- Description:	<Elimina un Usuario>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_UsuarioDelete]
	@CveUsuario	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[Sis_Usuarios]
	WHERE CveUsuario = @CveUsuario

	SELECT @CveUsuario AS [Id];
END
GO
/****** Object:  StoredProcedure [dbo].[Sis_UsuarioSave]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <12-02-2020>
-- Description:	<Guarda un Usuario>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_UsuarioSave]
	@CveEmpresa	INT,
	@NombreUsuario VARCHAR(100),
	@Email	VARCHAR(100),
	@Password	VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Sis_Usuarios] ([NombreUsuario], [Email], [Password], [Estatus], [CveEmpresa])
    VALUES (@NombreUsuario, @Email, @Password, 1, @CveEmpresa);

	SELECT  SCOPE_IDENTITY() AS [Id];
END
GO
/****** Object:  StoredProcedure [dbo].[Sis_UsuariosGet]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <25-01-2020>
-- Description:	<Obtiene una lista de Usuarios>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_UsuariosGet]
	@CveEmpresa	INT,
	@CveUsuario INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT	U.CveUsuario, U.NombreUsuario, U.Email, U.Password, U.Estatus,
			UR.CveRol, R.Rol, U.CveEmpresa, E.Empresa
	FROM Sis_Usuarios U
	INNER JOIN Sis_Empresas E ON U.CveEmpresa = E.CveEmpresa
	LEFT JOIN Sis_UsuariosRoles UR ON U.CveUsuario = UR.CveUsuario
	LEFT JOIN Sis_Roles R ON R.CveRol = UR.CveRol

	WHERE U.CveEmpresa = @CveEmpresa AND U.CveUsuario = COALESCE(@CveUsuario, U.CveUsuario)
END

--[Sis_GetUsuarios] 1, null
GO
/****** Object:  StoredProcedure [dbo].[Sis_UsuarioUpdate]    Script Date: 11/9/2020 6:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Janeth Montero>
-- Create date: <12-02-2020>
-- Description:	<Actualiza un Usuario>
-- =============================================
CREATE PROCEDURE [dbo].[Sis_UsuarioUpdate]
	@CveUsuario	INT,
	@NombreUsuario VARCHAR(100),
	@Email	VARCHAR(100),
	@Estatus	BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[Sis_Usuarios] SET
	NombreUsuario = @NombreUsuario, 
	Email = @Email, 
	Estatus = @Estatus 
	WHERE CveUsuario = @CveUsuario

	SELECT @CveUsuario AS [Id];
END
GO
