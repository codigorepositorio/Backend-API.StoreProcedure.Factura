USE [DBFactura]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 20/11/2020 23:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteID] [int] IDENTITY(1,1) NOT NULL,
	[TipoPersona] [varchar](20) NULL,
	[Nombres] [varchar](60) NULL,
	[Apellidos] [varchar](100) NULL,
	[TipoDocumento] [varchar](20) NULL,
	[NumDocumento] [varchar](11) NULL,
	[Direccion] [nvarchar](250) NULL,
	[Telefono] [varchar](9) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteFactura]    Script Date: 20/11/2020 23:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteFactura](
	[ClienteFacturaID] [int] IDENTITY(1,1) NOT NULL,
	[FacturaCabeceraID] [int] NOT NULL,
	[ClienteID] [int] NOT NULL,
 CONSTRAINT [PK_ClienteFactura_1] PRIMARY KEY CLUSTERED 
(
	[ClienteFacturaID] ASC,
	[FacturaCabeceraID] ASC,
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturaCabecera]    Script Date: 20/11/2020 23:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaCabecera](
	[FacturaCabeceraID] [int] IDENTITY(1,1) NOT NULL,
	[NumeroFactura] [varchar](10) NOT NULL,
	[ImporteTotal] [decimal](8, 2) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK_FacturaCabecera] PRIMARY KEY CLUSTERED 
(
	[FacturaCabeceraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturaDetalle]    Script Date: 20/11/2020 23:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaDetalle](
	[FacturaDetalleID] [int] IDENTITY(1,1) NOT NULL,
	[FacturaCabeceraID] [int] NOT NULL,
	[ItemDetalleID] [int] NULL,
	[Producto] [varchar](80) NOT NULL,
	[Precio] [decimal](8, 2) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Subtotal] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_FacturaDetalle] PRIMARY KEY CLUSTERED 
(
	[FacturaDetalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDetalle]    Script Date: 20/11/2020 23:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDetalle](
	[ItemDetalleID] [int] IDENTITY(1,1) NOT NULL,
	[Producto] [varchar](80) NULL,
	[Precio] [decimal](8, 2) NULL,
 CONSTRAINT [PK_ItemDetalle] PRIMARY KEY CLUSTERED 
(
	[ItemDetalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([ClienteID], [TipoPersona], [Nombres], [Apellidos], [TipoDocumento], [NumDocumento], [Direccion], [Telefono], [Email]) VALUES (27, N'Proveedor', N'Juan Alfredo', N'Gutierrez', N'Ruc', N'12345678311', N'Direccion av los libertadores', N'912233', N'jgutierrez_pe@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [TipoPersona], [Nombres], [Apellidos], [TipoDocumento], [NumDocumento], [Direccion], [Telefono], [Email]) VALUES (39, N'Cliente', N'Luis Miguel', N'Paucar Lopez', N'Ruc', N'23047850', N'Av los girazoles Lma', N'96385271', N'jgutierez@gmail.com')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[ClienteFactura] ON 

INSERT [dbo].[ClienteFactura] ([ClienteFacturaID], [FacturaCabeceraID], [ClienteID]) VALUES (1, 1, 27)
INSERT [dbo].[ClienteFactura] ([ClienteFacturaID], [FacturaCabeceraID], [ClienteID]) VALUES (2, 2, 27)
SET IDENTITY_INSERT [dbo].[ClienteFactura] OFF
GO
SET IDENTITY_INSERT [dbo].[FacturaCabecera] ON 

INSERT [dbo].[FacturaCabecera] ([FacturaCabeceraID], [NumeroFactura], [ImporteTotal], [FechaHora]) VALUES (1, N'549294', CAST(0.00 AS Decimal(8, 2)), CAST(N'2020-11-20T00:36:15.753' AS DateTime))
INSERT [dbo].[FacturaCabecera] ([FacturaCabeceraID], [NumeroFactura], [ImporteTotal], [FechaHora]) VALUES (2, N'549294', CAST(0.00 AS Decimal(8, 2)), CAST(N'2020-11-20T00:41:52.097' AS DateTime))
SET IDENTITY_INSERT [dbo].[FacturaCabecera] OFF
GO
SET IDENTITY_INSERT [dbo].[FacturaDetalle] ON 

INSERT [dbo].[FacturaDetalle] ([FacturaDetalleID], [FacturaCabeceraID], [ItemDetalleID], [Producto], [Precio], [Cantidad], [Subtotal]) VALUES (1, 1, 4, N'Producto 03', CAST(3.20 AS Decimal(8, 2)), 3, CAST(9.60 AS Decimal(8, 2)))
INSERT [dbo].[FacturaDetalle] ([FacturaDetalleID], [FacturaCabeceraID], [ItemDetalleID], [Producto], [Precio], [Cantidad], [Subtotal]) VALUES (2, 1, 4, N'Producto 03', CAST(3.20 AS Decimal(8, 2)), 3, CAST(9.60 AS Decimal(8, 2)))
INSERT [dbo].[FacturaDetalle] ([FacturaDetalleID], [FacturaCabeceraID], [ItemDetalleID], [Producto], [Precio], [Cantidad], [Subtotal]) VALUES (3, 2, 5, N'Producto 03', CAST(3.20 AS Decimal(8, 2)), 2, CAST(6.40 AS Decimal(8, 2)))
INSERT [dbo].[FacturaDetalle] ([FacturaDetalleID], [FacturaCabeceraID], [ItemDetalleID], [Producto], [Precio], [Cantidad], [Subtotal]) VALUES (4, 2, 5, N'Producto 03', CAST(3.20 AS Decimal(8, 2)), 2, CAST(6.40 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[FacturaDetalle] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemDetalle] ON 

INSERT [dbo].[ItemDetalle] ([ItemDetalleID], [Producto], [Precio]) VALUES (1, N'Producto 01', CAST(5.30 AS Decimal(8, 2)))
INSERT [dbo].[ItemDetalle] ([ItemDetalleID], [Producto], [Precio]) VALUES (2, N'Producto 02', CAST(15.60 AS Decimal(8, 2)))
INSERT [dbo].[ItemDetalle] ([ItemDetalleID], [Producto], [Precio]) VALUES (4, N'Producto 04', CAST(8.90 AS Decimal(8, 2)))
INSERT [dbo].[ItemDetalle] ([ItemDetalleID], [Producto], [Precio]) VALUES (5, N'Producto 05', CAST(3.90 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[ItemDetalle] OFF
GO
ALTER TABLE [dbo].[ClienteFactura]  WITH CHECK ADD  CONSTRAINT [FK_ClienteFactura_Cliente1] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClienteFactura] CHECK CONSTRAINT [FK_ClienteFactura_Cliente1]
GO
ALTER TABLE [dbo].[ClienteFactura]  WITH CHECK ADD  CONSTRAINT [FK_ClienteFactura_FacturaCabecera] FOREIGN KEY([FacturaCabeceraID])
REFERENCES [dbo].[FacturaCabecera] ([FacturaCabeceraID])
GO
ALTER TABLE [dbo].[ClienteFactura] CHECK CONSTRAINT [FK_ClienteFactura_FacturaCabecera]
GO
ALTER TABLE [dbo].[FacturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_FacturaDetalle_FacturaCabecera] FOREIGN KEY([FacturaCabeceraID])
REFERENCES [dbo].[FacturaCabecera] ([FacturaCabeceraID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FacturaDetalle] CHECK CONSTRAINT [FK_FacturaDetalle_FacturaCabecera]
GO
ALTER TABLE [dbo].[FacturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_FacturaDetalle_ItemDetalle] FOREIGN KEY([ItemDetalleID])
REFERENCES [dbo].[ItemDetalle] ([ItemDetalleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FacturaDetalle] CHECK CONSTRAINT [FK_FacturaDetalle_ItemDetalle]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Cliente_Create]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Cliente_Create]
 @pTipoPersona Varchar(20),  @pNombres       Varchar(60),
 @pApellidos   Varchar(100), @pTipoDocumento Varchar(20),
 @pNumDocumento  Varchar(11), @pDireccion     Nvarchar(80),
 @pTelefono      Varchar(9), @pEmail         Nvarchar(100),
 @pClienteID     Int output
AS

Begin
	Insert into Cliente
	(
	TipoPersona, Nombres,Apellidos, 
	TipoDocumento, NumDocumento,
	Direccion, Telefono, Email
	)
	values
	     (@pTipoPersona, @pNombres,@pApellidos, 
	      @pTipoDocumento,@pNumDocumento,
		  @pDireccion, @pTelefono, @pEmail
		  )

	Set @pClienteID=@@IDENTITY
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_Cliente_Delete]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Cliente_Delete] 
 @pclienteID INT 
AS

Begin

	IF(@pclienteID <= 0)
		BEGIN
			RAISERROR('Ingrese un Còdigo de cliente valido ', 15, 1) 
		RETURN;
		END
	IF @pclienteID is null 
		BEGIN
			RAISERROR('Còdigo cliente no puede ser nulo', 15, 1) 
		RETURN;
		END

		 Delete from cliente where clienteID = @pclienteID
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_Cliente_GetAll]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Cliente_GetAll]
as
Begin

Select 
     ClienteID     ,
	 TipoPersona	,
	 Nombres		,
	 Apellidos		,
	 TipoDocumento	,
	 NumDocumento	,
 	 Direccion		,
	 Telefono		,
	 Email			
From Cliente 

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Cliente_GetById]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Cliente_GetById]
@ClienteID int
as
Begin
Select 
     ClienteID      ,
	 TipoPersona	,
	 Nombres		,
	 Apellidos		,
	 TipoDocumento	,
	 NumDocumento	,
 	 Direccion		,
	 Telefono		,
	 Email			
From Cliente where ClienteID = @ClienteID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Cliente_Update]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Cliente_Update]
 @pClienteID     Int           , @pTipoPersona  Varchar(20) , 
 @pNombres       Varchar  (60) , @pApellidos    Varchar(100),
 @pTipoDocumento Varchar  (20) , @pNumDocumento Varchar(11)  , 
 @pDireccion     Nvarchar (80) , @pTelefono     Varchar(9)  ,
 @pEmail         Nvarchar (100)
 
AS

Begin
	Update Cliente Set
	TipoPersona		= @pTipoPersona, 
	Nombres			= @pNombres, 
	Apellidos		= @pApellidos,  
	TipoDocumento	= @pTipoDocumento, 
	NumDocumento	= @pNumDocumento,
	Direccion		= @pDireccion,
	Telefono		= @pTelefono,
	Email			= @pEmail
	Where ClienteID = @pClienteID
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_Factura_GetAll]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[Usp_Factura_GetAll]
as
Begin
SELECT CF.FacturaCabeceraID, C.ClienteID,FC.NumeroFactura, 
      FC.ImporteTotal,C.TipoPersona,FC.FechaHora

FROM    ClienteFactura  CF 
INNER JOIN   Cliente         C  ON CF.ClienteID         = C.ClienteID
INNER JOIN   FacturaCabecera FC ON CF.FacturaCabeceraID = FC.FacturaCabeceraID 

--INNER JOIN   FacturaDetalle  FD ON FC.FacturaCabeceraID = FD.FacturaCabeceraID
--INNER JOIN   ItemDetalle     IT ON FD.ItemDetalleID     = IT.ItemDetalleID

End
     
GO
/****** Object:  StoredProcedure [dbo].[Usp_Factura_GetbyIdFactura]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Usp_Factura_GetbyIdFactura] 
 @FacturaCabeceraID Int
as
Begin
SELECT CF.FacturaCabeceraID, C.ClienteID,FC.NumeroFactura, 
       FC.ImporteTotal,C.TipoPersona,FC.FechaHora

FROM    ClienteFactura  CF 
INNER JOIN   Cliente         C  ON CF.ClienteID         = C.ClienteID
INNER JOIN   FacturaCabecera FC ON CF.FacturaCabeceraID = FC.FacturaCabeceraID 
WHERE CF.FacturaCabeceraID = @FacturaCabeceraID

SELECT 
        CF.FacturaCabeceraID   , FD.FacturaDetalleID 
       ,ID.ItemDetalleID    , FD.Producto
	   ,FD.Precio           , FD.Cantidad
	   ,FD.Subtotal	   

FROM   ClienteFactura CF
INNER JOIN Cliente		   CL ON CF.ClienteID         = CL.ClienteID 
INNER JOIN FacturaCabecera FC ON CF.FacturaCabeceraID = FC.FacturaCabeceraID
INNER JOIN FacturaDetalle  FD ON FC.FacturaCabeceraID = FD.FacturaCabeceraID 
INNER JOIN ItemDetalle     ID ON FD.ItemDetalleID     = ID.ItemDetalleID
WHERE CF.FacturaCabeceraID = @FacturaCabeceraID
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_FacturaCabecera_Create]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_FacturaCabecera_Create]
@pclienteID INT ,
@pNumeroFactura varchar(10), 
@pImporteTotal decimal(8,2),
@pFacturaCabeceraID INT output 
AS

Begin 
	
	insert into FacturaCabecera(NumeroFactura,ImporteTotal,FechaHora) 
	values(@pNumeroFactura,@pImporteTotal,GETDATE())
	Set @pFacturaCabeceraID = @@IDENTITY

	insert into ClienteFactura(FacturaCabeceraID,clienteID) 
	values(@pFacturaCabeceraID,@pclienteID)
	
	
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_FacturaCabecera_Update]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Usp_FacturaCabecera_Update]
@pFacturaCabeceraID INT ,
@pclienteID INT ,
@pImporteTotal decimal(8,2)
AS

Begin 
	
	Declare @v_ClienteFacturaID as int
	
	Select @v_ClienteFacturaID = ClienteFacturaID  
	From ClienteFactura where FacturaCabeceraID = @pFacturaCabeceraID
	and clienteID = @pclienteID

	UPDATE FacturaCabecera  SET ImporteTotal = @pImporteTotal, FechaHora=GETDATE() 
	Where FacturaCabeceraID = @pFacturaCabeceraID

	UPDATE ClienteFactura  SET clienteID = @pclienteID 
	Where ClienteFacturaID = @v_ClienteFacturaID
	
End

GO
/****** Object:  StoredProcedure [dbo].[Usp_FacturaDetalle_Create]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_FacturaDetalle_Create]
@pFacturaDetalleID INT ,
@pFacturaCabeceraID INT,
@pItemDetalleID INT,
@pProducto VARCHAR(80),
@pPrecio decimal(8,2), 
@pCantidad int 

AS
Begin 
Declare @v_Subtotal as decimal(8,2)

select @v_Subtotal = @pPrecio * @pCantidad

	insert into FacturaDetalle(FacturaCabeceraID,ItemDetalleID,Producto, Precio, Cantidad, Subtotal)														
	values(@pFacturaCabeceraID,@pItemDetalleID,@pProducto,@pPrecio , @pCantidad ,@v_Subtotal )
		   
	
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_FacturaDetalle_GetbyIdFactura]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Usp_FacturaDetalle_GetbyIdFactura]
 @FacturaCabeceraID Int
as
Begin
SELECT 
        CF.FacturaCabeceraID, FD.FacturaDetalleID 
       ,ID.ItemDetalleID    , FD.Producto
	   ,FD.Precio           , FD.Cantidad
	   ,FD.Subtotal	   

FROM   ClienteFactura CF
INNER JOIN Cliente		   CL ON CF.ClienteID         = CL.ClienteID 
INNER JOIN FacturaCabecera FC ON CF.FacturaCabeceraID = FC.FacturaCabeceraID
INNER JOIN FacturaDetalle  FD ON FC.FacturaCabeceraID = FD.FacturaCabeceraID 
INNER JOIN ItemDetalle     ID ON FD.ItemDetalleID     = ID.ItemDetalleID




WHERE CF.FacturaCabeceraID = @FacturaCabeceraID
End
     
GO
/****** Object:  StoredProcedure [dbo].[Usp_FacturaDetalle_Update]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Usp_FacturaDetalle_Update]
@pFacturaDetalleID  INT,
@pFacturaCabeceraID INT,
@pItemDetalleID     INT,
@pProducto          Varchar(80),
@pPrecio            Decimal(8,2), 
@pCantidad			Int 

AS
Begin 
Declare @v_Subtotal as Decimal(8,2)

Select @v_Subtotal = @pPrecio * @pCantidad

Update FacturaDetalle Set
       ItemDetalleID	 = @pItemDetalleID,
	   Producto			 = @pProducto,
	   Precio			 = @pPrecio,
	   Cantidad			 = @pCantidad,
	   SubTotal          = @v_Subtotal   
Where  FacturaDetalleID  = @pFacturaDetalleID
And    FacturaCabeceraID = @pFacturaCabeceraID
	
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_ItemDetalle_Create]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Usp_ItemDetalle_Create]
 @pProducto      Varchar(60),
 @pPrecio        decimal(8,2),
 @pItemDetalleID  Int output
AS

Begin
	Insert into ItemDetalle
	(
	[Producto],[Precio]
	)
	values 
	(@pProducto,@pPrecio)

	Set @pItemDetalleID = @@IDENTITY
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_ItemDetalle_Delete]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_ItemDetalle_Delete]
@pItemDetalleID  Int 
AS

Begin
	Delete From ItemDetalle Where   ItemDetalleID = @pItemDetalleID
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_ItemDetalle_GetAll]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_ItemDetalle_GetAll]
as
Begin

Select ItemDetalleID, Producto, Precio 
From 
	ItemDetalle 

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_ItemDetalle_GetById]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_ItemDetalle_GetById]
@pItemDetalleID Int
as
Begin

Select ItemDetalleID, Producto, Precio 
From 
	ItemDetalle 
Where  ItemDetalleID = @pItemDetalleID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_ItemDetalle_Update]    Script Date: 20/11/2020 23:27:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_ItemDetalle_Update]
 @pItemDetalleID  Int ,
 @pProducto      Varchar(60),
 @pPrecio        decimal(8,2)
 
AS

Begin
	Update ItemDetalle
	Set Producto = @pProducto,	 
		Precio   = @pPrecio
Where   ItemDetalleID = @pItemDetalleID
End
GO
