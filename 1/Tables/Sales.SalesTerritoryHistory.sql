SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Sales].[SalesTerritoryHistory]
Print 'Create table [Sales].[SalesTerritoryHistory]'
GO
CREATE TABLE [Sales].[SalesTerritoryHistory] (
		[BusinessEntityID]     [int] NOT NULL,
		[TerritoryID]          [int] NOT NULL,
		[StartDate]            [datetime] NOT NULL,
		[EndDate]              [datetime] NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_SalesTerritoryHistory_BusinessEntityID_StartDate_TerritoryID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [StartDate], [TerritoryID])
)
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'CONSTRAINT', N'PK_SalesTerritoryHistory_BusinessEntityID_StartDate_TerritoryID'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'INDEX', N'PK_SalesTerritoryHistory_BusinessEntityID_StartDate_TerritoryID'
GO
-- Add check constraint CK_SalesTerritoryHistory_EndDate to [Sales].[SalesTerritoryHistory]
Print 'Add check constraint CK_SalesTerritoryHistory_EndDate to [Sales].[SalesTerritoryHistory]'
GO
ALTER TABLE [Sales].[SalesTerritoryHistory]
	ADD
	CONSTRAINT [CK_SalesTerritoryHistory_EndDate]
	CHECK
	([EndDate]>=[StartDate] OR [EndDate] IS NULL)
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'CONSTRAINT', N'CK_SalesTerritoryHistory_EndDate'
GO
ALTER TABLE [Sales].[SalesTerritoryHistory]
CHECK CONSTRAINT [CK_SalesTerritoryHistory_EndDate]
GO
-- Add default constraint DF_SalesTerritoryHistory_ModifiedDate to [Sales].[SalesTerritoryHistory]
Print 'Add default constraint DF_SalesTerritoryHistory_ModifiedDate to [Sales].[SalesTerritoryHistory]'
GO
ALTER TABLE [Sales].[SalesTerritoryHistory]
	ADD
	CONSTRAINT [DF_SalesTerritoryHistory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'CONSTRAINT', N'DF_SalesTerritoryHistory_ModifiedDate'
GO
-- Add default constraint DF_SalesTerritoryHistory_rowguid to [Sales].[SalesTerritoryHistory]
Print 'Add default constraint DF_SalesTerritoryHistory_rowguid to [Sales].[SalesTerritoryHistory]'
GO
ALTER TABLE [Sales].[SalesTerritoryHistory]
	ADD
	CONSTRAINT [DF_SalesTerritoryHistory_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'CONSTRAINT', N'DF_SalesTerritoryHistory_rowguid'
GO
-- Create foreign key FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID on [Sales].[SalesTerritoryHistory]
Print 'Create foreign key FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID on [Sales].[SalesTerritoryHistory]'
GO
ALTER TABLE [Sales].[SalesTerritoryHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Sales].[SalesPerson] ([BusinessEntityID])
ALTER TABLE [Sales].[SalesTerritoryHistory]
	CHECK CONSTRAINT [FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID]

GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesPerson.SalesPersonID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'CONSTRAINT', N'FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID'
GO
-- Create foreign key FK_SalesTerritoryHistory_SalesTerritory_TerritoryID on [Sales].[SalesTerritoryHistory]
Print 'Create foreign key FK_SalesTerritoryHistory_SalesTerritory_TerritoryID on [Sales].[SalesTerritoryHistory]'
GO
ALTER TABLE [Sales].[SalesTerritoryHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesTerritoryHistory_SalesTerritory_TerritoryID]
	FOREIGN KEY ([TerritoryID]) REFERENCES [Sales].[SalesTerritory] ([TerritoryID])
ALTER TABLE [Sales].[SalesTerritoryHistory]
	CHECK CONSTRAINT [FK_SalesTerritoryHistory_SalesTerritory_TerritoryID]

GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesTerritory.TerritoryID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'CONSTRAINT', N'FK_SalesTerritoryHistory_SalesTerritory_TerritoryID'
GO
-- Create index AK_SalesTerritoryHistory_rowguid on [Sales].[SalesTerritoryHistory]
Print 'Create index AK_SalesTerritoryHistory_rowguid on [Sales].[SalesTerritoryHistory]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesTerritoryHistory_rowguid]
	ON [Sales].[SalesTerritoryHistory] ([rowguid])
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'INDEX', N'AK_SalesTerritoryHistory_rowguid'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. The sales rep.  Foreign key to SalesPerson.BusinessEntityID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'COLUMN', N'BusinessEntityID'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the sales representative left work in the territory.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'COLUMN', N'EndDate'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Date the sales representive started work in the territory.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'COLUMN', N'StartDate'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Territory identification number. Foreign key to SalesTerritory.SalesTerritoryID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', 'COLUMN', N'TerritoryID'
GO
-- Create extended property MS_Description on [Sales].[SalesTerritoryHistory]
Print 'Create extended property MS_Description on [Sales].[SalesTerritoryHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales representative transfers to other sales territories.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTerritoryHistory', NULL, NULL
GO
ALTER TABLE [Sales].[SalesTerritoryHistory] SET (LOCK_ESCALATION = TABLE)
GO
