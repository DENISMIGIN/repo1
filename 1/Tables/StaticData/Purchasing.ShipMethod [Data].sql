-- =======================================================
-- Synchronization script for table: [Purchasing].[ShipMethod]
-- =======================================================
Print 'Synchronization script for table: [Purchasing].[ShipMethod]'

SET IDENTITY_INSERT [Purchasing].[ShipMethod] ON
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [ModifiedDate]) VALUES (1, N'XRQ - TRUCK GROUND', 3.9500, 0.9900, '20080430 00:00:00.000')
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [ModifiedDate]) VALUES (2, N'ZY - EXPRESS', 9.9500, 1.9900, '20080430 00:00:00.000')
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [ModifiedDate]) VALUES (3, N'OVERSEAS - DELUXE', 29.9500, 2.9900, '20080430 00:00:00.000')
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [ModifiedDate]) VALUES (4, N'OVERNIGHT J-FAST', 21.9500, 1.2900, '20080430 00:00:00.000')
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [ModifiedDate]) VALUES (5, N'CARGO TRANSPORT 5', 8.9900, 1.4900, '20080430 00:00:00.000')
SET IDENTITY_INSERT [Purchasing].[ShipMethod] OFF
