-- =======================================================
-- Synchronization script for table: [Production].[ProductCategory]
-- =======================================================
Print 'Synchronization script for table: [Production].[ProductCategory]'

SET IDENTITY_INSERT [Production].[ProductCategory] ON
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID], [Name], [ModifiedDate]) VALUES (1, N'Bikes', '20080430 00:00:00.000')
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID], [Name], [ModifiedDate]) VALUES (2, N'Components', '20080430 00:00:00.000')
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID], [Name], [ModifiedDate]) VALUES (3, N'Clothing', '20080430 00:00:00.000')
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID], [Name], [ModifiedDate]) VALUES (4, N'Accessories', '20080430 00:00:00.000')
SET IDENTITY_INSERT [Production].[ProductCategory] OFF
