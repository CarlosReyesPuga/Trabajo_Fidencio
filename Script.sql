USE [master]
GO
/****** Object:  Database [Pink]    Script Date: 19/04/2022 10:31:08 a. m. ******/
CREATE DATABASE [Pink]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pink', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Pink.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Pink_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Pink_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Pink] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pink].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pink] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pink] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pink] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pink] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pink] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pink] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pink] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pink] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pink] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pink] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pink] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pink] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pink] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pink] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pink] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pink] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pink] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pink] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pink] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pink] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pink] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pink] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pink] SET RECOVERY FULL 
GO
ALTER DATABASE [Pink] SET  MULTI_USER 
GO
ALTER DATABASE [Pink] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pink] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pink] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pink] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Pink] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Pink', N'ON'
GO
USE [Pink]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name_user] [nvarchar](150) NULL,
	[Last_name] [nvarchar](150) NULL,
	[Logging_User] [nvarchar](100) NULL,
	[Password_User] [nvarchar](50) NULL,
	[Admin_User] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Guia] [nvarchar](200) NULL,
	[Name_Comprador] [nvarchar](200) NULL,
	[Direccion] [nvarchar](500) NULL,
	[User_Vendedor] [nvarchar](100) NULL,
	[Descripcion_Venta] [nvarchar](500) NULL,
	[Monto_Pagar] [nvarchar](80) NULL,
	[Fecha_Venta] [nvarchar](50) NULL,
	[Pagado] [bit] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [Name_user], [Last_name], [Logging_User], [Password_User], [Admin_User]) VALUES (1, N'Carlos', N'Reyes', N'admin', N'123', 1)
INSERT [dbo].[Usuarios] ([id], [Name_user], [Last_name], [Logging_User], [Password_User], [Admin_User]) VALUES (2, N'Alberto', N'Gonzales', N'user', N'12345', 0)
INSERT [dbo].[Usuarios] ([id], [Name_user], [Last_name], [Logging_User], [Password_User], [Admin_User]) VALUES (3, N'Carlos Alejandro', N'Puga', N'user1234', N'1234', 0)
INSERT [dbo].[Usuarios] ([id], [Name_user], [Last_name], [Logging_User], [Password_User], [Admin_User]) VALUES (4, N'Carlos Alejandro', N'Puga', N'user123', N'12', 0)
INSERT [dbo].[Usuarios] ([id], [Name_user], [Last_name], [Logging_User], [Password_User], [Admin_User]) VALUES (5, N'Carlos Alejandro', N'Puga', N'user12345', N'1234', 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([id], [Guia], [Name_Comprador], [Direccion], [User_Vendedor], [Descripcion_Venta], [Monto_Pagar], [Fecha_Venta], [Pagado]) VALUES (1, N'MXN34567MN', N'Carlos Ramirez', N'Calle America', N'admin', N'4 diarios de adulto', N'$450.00', N'17/04/2022', 0)
INSERT [dbo].[Ventas] ([id], [Guia], [Name_Comprador], [Direccion], [User_Vendedor], [Descripcion_Venta], [Monto_Pagar], [Fecha_Venta], [Pagado]) VALUES (3, N'MX3467MN', N'Anabel Avalos', N'calle ocampo', N'admin', N'2 diarios de niño y 2 diarios de adulto', N'$ 260.00', N'18/04/2022', 1)
INSERT [dbo].[Ventas] ([id], [Guia], [Name_Comprador], [Direccion], [User_Vendedor], [Descripcion_Venta], [Monto_Pagar], [Fecha_Venta], [Pagado]) VALUES (4, N'MX234MN', N'Alberto aviles ', N'colonia real', N'admin', N'12 diarios de niño', N'$500.00', N'18/04/2022', 1)
SET IDENTITY_INSERT [dbo].[Ventas] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Usuarios__B7BAEDF0234D3831]    Script Date: 19/04/2022 10:31:08 a. m. ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[Logging_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Buscador_Datos_Ventas]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Buscador_Datos_Ventas]
@id INT
AS BEGIN
SELECT Guia,Name_Comprador,Direccion,User_Vendedor,Descripcion_Venta,Monto_Pagar,Fecha_Venta,Pagado FROM Ventas WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[Buscador_Ventas]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Buscador_Ventas]
@Guia NVARCHAR(200)
AS BEGIN
SELECT id,Guia,Name_Comprador,Direccion,User_Vendedor,Descripcion_Venta,Monto_Pagar,Fecha_Venta FROM Ventas WHERE Guia LIKE '%'+@Guia+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[Buscar_NoPagados]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Buscar_NoPagados]
@Guia NVARCHAR(200)
AS BEGIN
SELECT id,Guia,Name_Comprador,Direccion,User_Vendedor,Descripcion_Venta,Monto_Pagar,Fecha_Venta FROM Ventas WHERE Guia LIKE '%'+@Guia+'%' AND Pagado = 0
END

GO
/****** Object:  StoredProcedure [dbo].[Buscar_Pagados]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Buscar_Pagados]
@Guia NVARCHAR(200)
AS BEGIN
SELECT id,Guia,Name_Comprador,Direccion,User_Vendedor,Descripcion_Venta,Monto_Pagar,Fecha_Venta FROM Ventas WHERE Guia LIKE '%'+@Guia+'%' AND Pagado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Edit_User]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Edit_User]
@Name_User Nvarchar (150),
@Last_Name_User Nvarchar (200),
@User_Loging Nvarchar (100),
@Password_User Nvarchar (50),
@Admin_User BIT,
@id int
as Begin
	UPDATE Usuarios
		Set Name_user = @Name_User, Last_name = @Last_Name_User, Logging_User = @User_Loging, Password_User = @Password_User, Admin_User = @Admin_User
		Where id = @id
End 
GO
/****** Object:  StoredProcedure [dbo].[Editar_Ventas]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Editar_Ventas]
@id INT,
@Guia NVARCHAR(200),
@Name_Comprador NVARCHAR(200),
@Direccion NVARCHAR(500),
@User_Vendedor NVARCHAR(100),
@Descripcion_Venta NVARCHAR(500),
@Monto_Pagar NVARCHAR(80),
@Fecha_Venta NVARCHAR(50),
@Pagado BIT
as begin
UPDATE Ventas
	SET Guia = @Guia, Name_Comprador = @Name_Comprador, Direccion = @Direccion, User_Vendedor = @User_Vendedor, Descripcion_Venta = @Descripcion_Venta, Monto_Pagar = @Monto_Pagar, Fecha_Venta = @Fecha_Venta ,Pagado = @Pagado
WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[Eliminar_Venta]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eliminar_Venta]
@id int
AS BEGIN
	DELETE FROM Ventas
	WHERE id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[Forgot_Password]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Forgot_Password]
@User_Loging Nvarchar (100),
@Password_User Nvarchar (50)
as Begin
	UPDATE Usuarios
		SET Password_User = @Password_User
	WHERE Logging_User = @User_Loging
END
GO
/****** Object:  StoredProcedure [dbo].[Logging_User]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Logging_User]
@User_Loging Nvarchar (100),
@Password_User Nvarchar (50)
as Begin
SELECT Admin_User FROM Usuarios where Logging_User = @User_Loging and Password_User = @Password_User
End
GO
/****** Object:  StoredProcedure [dbo].[Numero_NoPagados]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Numero_NoPagados]
AS BEGIN
SELECT COUNT(Pagado) AS NoPagado
FROM Ventas 
WHERE Pagado = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Numero_Pagados]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Numero_Pagados]
AS BEGIN
SELECT COUNT(Pagado) AS Pagado 
FROM Ventas 
WHERE Pagado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Register_User]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Register_User]
@Name_User Nvarchar (150),
@Last_Name_User Nvarchar (200),
@User_Loging Nvarchar (100),
@Password_User Nvarchar (50)
as Begin
Insert into Usuarios (Name_user,Last_name,Logging_User,Password_User,Admin_User) values (@Name_User,@Last_Name_User,@User_Loging,@Password_User,0)
End
GO
/****** Object:  StoredProcedure [dbo].[Registrar_Ventas]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Registrar_Ventas]
@Guia NVARCHAR(200),
@Name_Comprador NVARCHAR(200),
@Direccion NVARCHAR(500),
@User_Vendedor NVARCHAR(100),
@Descripcion_Venta NVARCHAR(500),
@Monto_Pagar NVARCHAR(80),
@Fecha_Venta NVARCHAR(50),
@Pagado BIT
as begin
Insert INTO Ventas(Guia,Name_Comprador,Direccion,User_Vendedor,Descripcion_Venta,Monto_Pagar,Fecha_Venta,Pagado) VALUES (@Guia,@Name_Comprador,@Direccion,@User_Vendedor,@Descripcion_Venta,@Monto_Pagar,@Fecha_Venta,@Pagado)
END
GO
/****** Object:  StoredProcedure [dbo].[Ventas_NoPagadas]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ventas_NoPagadas]
as begin
SELECT id,Guia,Name_Comprador,Direccion,User_Vendedor,Descripcion_Venta,Monto_Pagar,Fecha_Venta FROM Ventas WHERE Pagado = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Ventas_Pagadas]    Script Date: 19/04/2022 10:31:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Ventas_Pagadas]
as begin
SELECT id,Guia,Name_Comprador,Direccion,User_Vendedor,Descripcion_Venta,Monto_Pagar,Fecha_Venta FROM Ventas WHERE Pagado = 1
END
GO
USE [master]
GO
ALTER DATABASE [Pink] SET  READ_WRITE 
GO
