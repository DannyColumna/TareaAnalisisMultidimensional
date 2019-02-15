USE ExamenAnalisis;
IF OBJECT_ID('DimParqueo', 'U') IS NOT NULL
	DROP TABLE DimParqueo;

CREATE TABLE [dbo].[DimParqueo](
	[IDParqueo] [dbo].[Codigo],	
	[NombreProvincia] [dbo].[Descripcion],
	[NombreCanton] [dbo].[Descripcion],
	[NombreDistrito] [dbo].[Descripcion]);