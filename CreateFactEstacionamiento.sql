USE ExamenAnalisis;
IF OBJECT_ID('FactEstacionamiento', 'U') IS NOT NULL  
	DROP TABLE FactEstacionamiento;

CREATE TABLE [dbo].[FactEstacionamiento](
	[IDParqueo] [dbo].[Codigo],
	[IDVehiculo] [dbo].[Codigo],
	[TarifaBase] [dbo].[MontoMoneda],
	[Ganancia] [dbo].[MontoMoneda],
	[Mantenimiento] [dbo].[MontoMoneda],  
	[ImpVentas] [dbo].[MontoMoneda],
	[TotalACobrar] [dbo].[MontoMoneda],
	[IngresoFlag] [Bit], --/ Ingreso Mañana = 1, Tarde = 0
	[SalidaFlag] [Bit], --/ Salida Mañana = 1, Tarde = 0
	[NombreDiaFeriado] [dbo].[Descripcion],
	[CantMinutosEstacionado] [Integer],
	[Restriccion] [dbo].[Descripcion], --/ L = 0 - 3, K = 4 - 7, M = 8 - 1, J = 2 - 5, V = 6 - 9
	[EstratoMinutosEstacionado] [dbo].[Descripcion], --/ Invalido si es negativo, 0min - 30min, 31min - 90min, 91min - 245min, 245min - 600min, +600min
	[EstratoHoraEstacionado] [dbo].[Descripcion], --/ Madrugada 12am - 4:59am, Mañana 5am - 11:59am, Mediodia 12pm - 1:59pm, Tarde 2pm - 6:59pm, Noche 7pm - 11:59pm
	[EstratoGanancia] [dbo].[Descripcion] --/Invalido si es negativo, 0 CRC - < 1000 CRC, 1000 CRC - < 3000 CRC, 3000 CRC - < 7500 CRC, 7500 CRC < 10000 CRC, > 10000 CRC 
);