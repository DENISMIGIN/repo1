﻿-- =======================================================
-- Synchronization script for table: [Production].[Location]
-- =======================================================
Print 'Synchronization script for table: [Production].[Location]'

SET IDENTITY_INSERT [Production].[Location] ON
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (1, N'Tool Crib', 0.0000, CONVERT([decimal](8, 2),0.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (2, N'Sheet Metal Racks', 0.0000, CONVERT([decimal](8, 2),0.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (3, N'Paint Shop', 0.0000, CONVERT([decimal](8, 2),0.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (4, N'Paint Storage', 0.0000, CONVERT([decimal](8, 2),0.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (5, N'Metal Storage', 0.0000, CONVERT([decimal](8, 2),0.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (6, N'Miscellaneous Storage', 0.0000, CONVERT([decimal](8, 2),0.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (7, N'Finished Goods Storage', 0.0000, CONVERT([decimal](8, 2),0.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (10, N'Frame Forming', 22.5000, CONVERT([decimal](8, 2),96.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (20, N'Frame Welding', 25.0000, CONVERT([decimal](8, 2),108.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (30, N'Debur and Polish', 14.5000, CONVERT([decimal](8, 2),120.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (40, N'Paint', 15.7500, CONVERT([decimal](8, 2),120.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (45, N'Specialized Paint', 18.0000, CONVERT([decimal](8, 2),80.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (50, N'Subassembly', 12.2500, CONVERT([decimal](8, 2),120.00), '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (60, N'Final Assembly', 12.2500, CONVERT([decimal](8, 2),120.00), '20080430 00:00:00.000')
SET IDENTITY_INSERT [Production].[Location] OFF
