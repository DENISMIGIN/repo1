﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Person].[StateProvince]
Print 'Create table [Person].[StateProvince]'
GO
CREATE TABLE [Person].[StateProvince] (
		[StateProvinceID]             [int] IDENTITY(1, 1) NOT NULL,
		[StateProvinceCode]           [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CountryRegionCode]           [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[IsOnlyStateProvinceFlag]     [dbo].[Flag] NOT NULL,
		[Name]                        [dbo].[Name] NOT NULL,
		[TerritoryID]                 [int] NOT NULL,
		[rowguid]                     [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]                [datetime] NOT NULL,
		CONSTRAINT [PK_StateProvince_StateProvinceID]
		PRIMARY KEY
		CLUSTERED
		([StateProvinceID])
)
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'CONSTRAINT', N'PK_StateProvince_StateProvinceID'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'INDEX', N'PK_StateProvince_StateProvinceID'
GO
-- Add default constraint DF_StateProvince_IsOnlyStateProvinceFlag to [Person].[StateProvince]
Print 'Add default constraint DF_StateProvince_IsOnlyStateProvinceFlag to [Person].[StateProvince]'
GO
ALTER TABLE [Person].[StateProvince]
	ADD
	CONSTRAINT [DF_StateProvince_IsOnlyStateProvinceFlag]
	DEFAULT ((1)) FOR [IsOnlyStateProvinceFlag]
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1 (TRUE)', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'CONSTRAINT', N'DF_StateProvince_IsOnlyStateProvinceFlag'
GO
-- Add default constraint DF_StateProvince_ModifiedDate to [Person].[StateProvince]
Print 'Add default constraint DF_StateProvince_ModifiedDate to [Person].[StateProvince]'
GO
ALTER TABLE [Person].[StateProvince]
	ADD
	CONSTRAINT [DF_StateProvince_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'CONSTRAINT', N'DF_StateProvince_ModifiedDate'
GO
-- Add default constraint DF_StateProvince_rowguid to [Person].[StateProvince]
Print 'Add default constraint DF_StateProvince_rowguid to [Person].[StateProvince]'
GO
ALTER TABLE [Person].[StateProvince]
	ADD
	CONSTRAINT [DF_StateProvince_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'CONSTRAINT', N'DF_StateProvince_rowguid'
GO
-- Create foreign key FK_StateProvince_CountryRegion_CountryRegionCode on [Person].[StateProvince]
Print 'Create foreign key FK_StateProvince_CountryRegion_CountryRegionCode on [Person].[StateProvince]'
GO
ALTER TABLE [Person].[StateProvince]
	WITH CHECK
	ADD CONSTRAINT [FK_StateProvince_CountryRegion_CountryRegionCode]
	FOREIGN KEY ([CountryRegionCode]) REFERENCES [Person].[CountryRegion] ([CountryRegionCode])
ALTER TABLE [Person].[StateProvince]
	CHECK CONSTRAINT [FK_StateProvince_CountryRegion_CountryRegionCode]

GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'CONSTRAINT', N'FK_StateProvince_CountryRegion_CountryRegionCode'
GO
-- Create foreign key FK_StateProvince_SalesTerritory_TerritoryID on [Person].[StateProvince]
Print 'Create foreign key FK_StateProvince_SalesTerritory_TerritoryID on [Person].[StateProvince]'
GO
ALTER TABLE [Person].[StateProvince]
	WITH CHECK
	ADD CONSTRAINT [FK_StateProvince_SalesTerritory_TerritoryID]
	FOREIGN KEY ([TerritoryID]) REFERENCES [Sales].[SalesTerritory] ([TerritoryID])
ALTER TABLE [Person].[StateProvince]
	CHECK CONSTRAINT [FK_StateProvince_SalesTerritory_TerritoryID]

GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesTerritory.TerritoryID.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'CONSTRAINT', N'FK_StateProvince_SalesTerritory_TerritoryID'
GO
-- Create index AK_StateProvince_Name on [Person].[StateProvince]
Print 'Create index AK_StateProvince_Name on [Person].[StateProvince]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_StateProvince_Name]
	ON [Person].[StateProvince] ([Name])
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'INDEX', N'AK_StateProvince_Name'
GO
-- Create index AK_StateProvince_rowguid on [Person].[StateProvince]
Print 'Create index AK_StateProvince_rowguid on [Person].[StateProvince]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_StateProvince_rowguid]
	ON [Person].[StateProvince] ([rowguid])
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'INDEX', N'AK_StateProvince_rowguid'
GO
-- Create index AK_StateProvince_StateProvinceCode_CountryRegionCode on [Person].[StateProvince]
Print 'Create index AK_StateProvince_StateProvinceCode_CountryRegionCode on [Person].[StateProvince]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_StateProvince_StateProvinceCode_CountryRegionCode]
	ON [Person].[StateProvince] ([StateProvinceCode], [CountryRegionCode])
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'INDEX', N'AK_StateProvince_StateProvinceCode_CountryRegionCode'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ISO standard country or region code. Foreign key to CountryRegion.CountryRegionCode. ', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'COLUMN', N'CountryRegionCode'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'0 = StateProvinceCode exists. 1 = StateProvinceCode unavailable, using CountryRegionCode.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'COLUMN', N'IsOnlyStateProvinceFlag'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'State or province description.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'COLUMN', N'Name'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ISO standard state or province code.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'COLUMN', N'StateProvinceCode'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for StateProvince records.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'COLUMN', N'StateProvinceID'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ID of the territory in which the state or province is located. Foreign key to SalesTerritory.SalesTerritoryID.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', 'COLUMN', N'TerritoryID'
GO
-- Create extended property MS_Description on [Person].[StateProvince]
Print 'Create extended property MS_Description on [Person].[StateProvince]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'State and province lookup table.', 'SCHEMA', N'Person', 'TABLE', N'StateProvince', NULL, NULL
GO
ALTER TABLE [Person].[StateProvince] SET (LOCK_ESCALATION = TABLE)
GO
