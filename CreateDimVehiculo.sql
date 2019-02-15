USE ExamenAnalisis;
IF OBJECT_ID('DimVehiculo', 'U') IS NOT NULL
	DROP TABLE DimVehiculo;

CREATE TABLE [dbo].[DimVehiculo](
	[IDVehiculo] [dbo].[Codigo],
	[NombreTipoVehiculo] [dbo].[Descripcion],
	[NombreFabricante] [dbo].[Descripcion],
	[NombrePais] [dbo].[Descripcion],
	[AbreviaturaPais] [dbo].[StringCorto],
	[NombreRegion] [dbo].[Descripcion],
	[NombreContinente] [dbo].[Descripcion],
	[AnoFabricacion] [dbo].[Codigo]);