SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Sales].[SalesTerritory]
Print 'Create table [Sales].[SalesTerritory]'
GO
CREATE TABLE [Sales].[SalesTerritory] (
		[TerritoryID]           [int] IDENTITY(1, 1) NOT NULL,
		[Name]                  [dbo].[Name] NOT NULL,
		[CountryRegionCode]     [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Group]                 [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SalesYTD]              [money] NOT NULL,
		[SalesLastYear]         [money] NOT NULL,
		[CostYTD]               [money] NOT NULL,
		[CostLastYear]          [money] NOT NULL,
		[rowguid]               [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_SalesTerritory_TerritoryID]
		PRIMARY KEY
		CLUSTERED
		([TerritoryID])
)
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'PK_SalesTerritory_TerritoryID'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'INDEX', N'PK_SalesTerritory_TerritoryID'
GO
-- Add check constraint CK_SalesTerritory_CostLastYear to [Sales].[SalesTerritory]
Print 'Add check constraint CK_SalesTerritory_CostLastYear to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [CK_SalesTerritory_CostLastYear]
	CHECK
	([CostLastYear]>=(0.00))
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [CostLastYear] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'CK_SalesTerritory_CostLastYear'
GO
ALTER TABLE [Sales].[SalesTerritory]
CHECK CONSTRAINT [CK_SalesTerritory_CostLastYear]
GO
-- Add check constraint CK_SalesTerritory_CostYTD to [Sales].[SalesTerritory]
Print 'Add check constraint CK_SalesTerritory_CostYTD to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [CK_SalesTerritory_CostYTD]
	CHECK
	([CostYTD]>=(0.00))
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [CostYTD] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'CK_SalesTerritory_CostYTD'
GO
ALTER TABLE [Sales].[SalesTerritory]
CHECK CONSTRAINT [CK_SalesTerritory_CostYTD]
GO
-- Add check constraint CK_SalesTerritory_SalesLastYear to [Sales].[SalesTerritory]
Print 'Add check constraint CK_SalesTerritory_SalesLastYear to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [CK_SalesTerritory_SalesLastYear]
	CHECK
	([SalesLastYear]>=(0.00))
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SalesLastYear] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'CK_SalesTerritory_SalesLastYear'
GO
ALTER TABLE [Sales].[SalesTerritory]
CHECK CONSTRAINT [CK_SalesTerritory_SalesLastYear]
GO
-- Add check constraint CK_SalesTerritory_SalesYTD to [Sales].[SalesTerritory]
Print 'Add check constraint CK_SalesTerritory_SalesYTD to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [CK_SalesTerritory_SalesYTD]
	CHECK
	([SalesYTD]>=(0.00))
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SalesYTD] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'CK_SalesTerritory_SalesYTD'
GO
ALTER TABLE [Sales].[SalesTerritory]
CHECK CONSTRAINT [CK_SalesTerritory_SalesYTD]
GO
-- Add default constraint DF_SalesTerritory_CostLastYear to [Sales].[SalesTerritory]
Print 'Add default constraint DF_SalesTerritory_CostLastYear to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_CostLastYear]
	DEFAULT ((0.00)) FOR [CostLastYear]
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'DF_SalesTerritory_CostLastYear'
GO
-- Add default constraint DF_SalesTerritory_CostYTD to [Sales].[SalesTerritory]
Print 'Add default constraint DF_SalesTerritory_CostYTD to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_CostYTD]
	DEFAULT ((0.00)) FOR [CostYTD]
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'DF_SalesTerritory_CostYTD'
GO
-- Add default constraint DF_SalesTerritory_ModifiedDate to [Sales].[SalesTerritory]
Print 'Add default constraint DF_SalesTerritory_ModifiedDate to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'DF_SalesTerritory_ModifiedDate'
GO
-- Add default constraint DF_SalesTerritory_rowguid to [Sales].[SalesTerritory]
Print 'Add default constraint DF_SalesTerritory_rowguid to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'DF_SalesTerritory_rowguid'
GO
-- Add default constraint DF_SalesTerritory_SalesLastYear to [Sales].[SalesTerritory]
Print 'Add default constraint DF_SalesTerritory_SalesLastYear to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_SalesLastYear]
	DEFAULT ((0.00)) FOR [SalesLastYear]
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'DF_SalesTerritory_SalesLastYear'
GO
-- Add default constraint DF_SalesTerritory_SalesYTD to [Sales].[SalesTerritory]
Print 'Add default constraint DF_SalesTerritory_SalesYTD to [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_SalesYTD]
	DEFAULT ((0.00)) FOR [SalesYTD]
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'DF_SalesTerritory_SalesYTD'
GO
-- Create foreign key FK_SalesTerritory_CountryRegion_CountryRegionCode on [Sales].[SalesTerritory]
Print 'Create foreign key FK_SalesTerritory_CountryRegion_CountryRegionCode on [Sales].[SalesTerritory]'
GO
ALTER TABLE [Sales].[SalesTerritory]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesTerritory_CountryRegion_CountryRegionCode]
	FOREIGN KEY ([CountryRegionCode]) REFERENCES [Person].[CountryRegion] ([CountryRegionCode])
ALTER TABLE [Sales].[SalesTerritory]
	CHECK CONSTRAINT [FK_SalesTerritory_CountryRegion_CountryRegionCode]

GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'CONSTRAINT', N'FK_SalesTerritory_CountryRegion_CountryRegionCode'
GO
-- Create index AK_SalesTerritory_Name on [Sales].[SalesTerritory]
Print 'Create index AK_SalesTerritory_Name on [Sales].[SalesTerritory]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesTerritory_Name]
	ON [Sales].[SalesTerritory] ([Name])
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'INDEX', N'AK_SalesTerritory_Name'
GO
-- Create index AK_SalesTerritory_rowguid on [Sales].[SalesTerritory]
Print 'Create index AK_SalesTerritory_rowguid on [Sales].[SalesTerritory]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesTerritory_rowguid]
	ON [Sales].[SalesTerritory] ([rowguid])
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'INDEX', N'AK_SalesTerritory_rowguid'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Business costs in the territory the previous year.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'CostLastYear'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Business costs in the territory year to date.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'CostYTD'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ISO standard country or region code. Foreign key to CountryRegion.CountryRegionCode. ', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'CountryRegionCode'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Geographic area to which the sales territory belong.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'Group'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales territory description', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'Name'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales in the territory the previous year.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'SalesLastYear'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales in the territory year to date.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'SalesYTD'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for SalesTerritory records.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', 'COLUMN', N'TerritoryID'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales territory lookup table.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritory', NULL, NULL
GO
ALTER TABLE [Sales].[SalesTerritory] SET (LOCK_ESCALATION = TABLE)
GO
