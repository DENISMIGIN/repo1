-- =======================================================
-- Synchronization script for table: [Person].[AddressType]
-- =======================================================
Print 'Synchronization script for table: [Person].[AddressType]'

SET IDENTITY_INSERT [Person].[AddressType] ON
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (1, N'Billing', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (2, N'Home', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (3, N'Main Office', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (4, N'Primary', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (5, N'Shipping', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [ModifiedDate]) VALUES (6, N'Archive', '20080430 00:00:00.000')
SET IDENTITY_INSERT [Person].[AddressType] OFF
