﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Person].[CountryRegion]
Print 'Create table [Person].[CountryRegion]'
GO
CREATE TABLE [Person].[CountryRegion] (
		[CountryRegionCode]     [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Name]                  [dbo].[Name] NOT NULL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_CountryRegion_CountryRegionCode]
		PRIMARY KEY
		CLUSTERED
		([CountryRegionCode])
)
GO
-- Create extended property MS_Description on [Person].[CountryRegion]
Print 'Create extended property MS_Description on [Person].[CountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'CountryRegion', 'CONSTRAINT', N'PK_CountryRegion_CountryRegionCode'
GO
-- Create extended property MS_Description on [Person].[CountryRegion]
Print 'Create extended property MS_Description on [Person].[CountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'CountryRegion', 'INDEX', N'PK_CountryRegion_CountryRegionCode'
GO
-- Add default constraint DF_CountryRegion_ModifiedDate to [Person].[CountryRegion]
Print 'Add default constraint DF_CountryRegion_ModifiedDate to [Person].[CountryRegion]'
GO
ALTER TABLE [Person].[CountryRegion]
	ADD
	CONSTRAINT [DF_CountryRegion_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Person].[CountryRegion]
Print 'Create extended property MS_Description on [Person].[CountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'CountryRegion', 'CONSTRAINT', N'DF_CountryRegion_ModifiedDate'
GO
-- Create index AK_CountryRegion_Name on [Person].[CountryRegion]
Print 'Create index AK_CountryRegion_Name on [Person].[CountryRegion]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_CountryRegion_Name]
	ON [Person].[CountryRegion] ([Name])
GO
-- Create extended property MS_Description on [Person].[CountryRegion]
Print 'Create extended property MS_Description on [Person].[CountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'CountryRegion', 'INDEX', N'AK_CountryRegion_Name'
GO
-- Create extended property MS_Description on [Person].[CountryRegion]
Print 'Create extended property MS_Description on [Person].[CountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ISO standard code for countries and regions.', 'SCHEMA', N'Person', 'TABLE', N'CountryRegion', 'COLUMN', N'CountryRegionCode'
GO
-- Create extended property MS_Description on [Person].[CountryRegion]
Print 'Create extended property MS_Description on [Person].[CountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'CountryRegion', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Person].[CountryRegion]
Print 'Create extended property MS_Description on [Person].[CountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Country or region name.', 'SCHEMA', N'Person', 'TABLE', N'CountryRegion', 'COLUMN', N'Name'
GO
-- Create extended property MS_Description on [Person].[CountryRegion]
Print 'Create extended property MS_Description on [Person].[CountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lookup table containing the ISO standard codes for countries and regions.', 'SCHEMA', N'Person', 'TABLE', N'CountryRegion', NULL, NULL
GO
ALTER TABLE [Person].[CountryRegion] SET (LOCK_ESCALATION = TABLE)
GO
