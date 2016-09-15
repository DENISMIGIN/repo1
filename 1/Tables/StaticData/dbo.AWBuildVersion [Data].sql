-- =======================================================
-- Synchronization script for table: [dbo].[AWBuildVersion]
-- =======================================================
Print 'Synchronization script for table: [dbo].[AWBuildVersion]'

SET IDENTITY_INSERT [dbo].[AWBuildVersion] ON
INSERT INTO [dbo].[AWBuildVersion] ([SystemInformationID], [Database Version], [VersionDate], [ModifiedDate]) VALUES (1, N'12.0.1800', '20140220 04:26:00.000', '20140708 00:00:00.000')
SET IDENTITY_INSERT [dbo].[AWBuildVersion] OFF
