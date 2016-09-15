﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Sales].[Customer]
Print 'Create table [Sales].[Customer]'
GO
CREATE TABLE [Sales].[Customer] (
		[CustomerID]        [int] IDENTITY(1, 1) NOT FOR REPLICATION NOT NULL,
		[PersonID]          [int] NULL,
		[StoreID]           [int] NULL,
		[TerritoryID]       [int] NULL,
		[AccountNumber]     AS (isnull('AW'+[dbo].[ufnLeadingZeros]([CustomerID]),'')),
		[rowguid]           [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_Customer_CustomerID]
		PRIMARY KEY
		CLUSTERED
		([CustomerID])
)
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'CONSTRAINT', N'PK_Customer_CustomerID'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'INDEX', N'PK_Customer_CustomerID'
GO
-- Add default constraint DF_Customer_ModifiedDate to [Sales].[Customer]
Print 'Add default constraint DF_Customer_ModifiedDate to [Sales].[Customer]'
GO
ALTER TABLE [Sales].[Customer]
	ADD
	CONSTRAINT [DF_Customer_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'CONSTRAINT', N'DF_Customer_ModifiedDate'
GO
-- Add default constraint DF_Customer_rowguid to [Sales].[Customer]
Print 'Add default constraint DF_Customer_rowguid to [Sales].[Customer]'
GO
ALTER TABLE [Sales].[Customer]
	ADD
	CONSTRAINT [DF_Customer_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'CONSTRAINT', N'DF_Customer_rowguid'
GO
-- Create foreign key FK_Customer_Person_PersonID on [Sales].[Customer]
Print 'Create foreign key FK_Customer_Person_PersonID on [Sales].[Customer]'
GO
ALTER TABLE [Sales].[Customer]
	WITH CHECK
	ADD CONSTRAINT [FK_Customer_Person_PersonID]
	FOREIGN KEY ([PersonID]) REFERENCES [Person].[Person] ([BusinessEntityID])
ALTER TABLE [Sales].[Customer]
	CHECK CONSTRAINT [FK_Customer_Person_PersonID]

GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'CONSTRAINT', N'FK_Customer_Person_PersonID'
GO
-- Create foreign key FK_Customer_SalesTerritory_TerritoryID on [Sales].[Customer]
Print 'Create foreign key FK_Customer_SalesTerritory_TerritoryID on [Sales].[Customer]'
GO
ALTER TABLE [Sales].[Customer]
	WITH CHECK
	ADD CONSTRAINT [FK_Customer_SalesTerritory_TerritoryID]
	FOREIGN KEY ([TerritoryID]) REFERENCES [Sales].[SalesTerritory] ([TerritoryID])
ALTER TABLE [Sales].[Customer]
	CHECK CONSTRAINT [FK_Customer_SalesTerritory_TerritoryID]

GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesTerritory.TerritoryID.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'CONSTRAINT', N'FK_Customer_SalesTerritory_TerritoryID'
GO
-- Create foreign key FK_Customer_Store_StoreID on [Sales].[Customer]
Print 'Create foreign key FK_Customer_Store_StoreID on [Sales].[Customer]'
GO
ALTER TABLE [Sales].[Customer]
	WITH CHECK
	ADD CONSTRAINT [FK_Customer_Store_StoreID]
	FOREIGN KEY ([StoreID]) REFERENCES [Sales].[Store] ([BusinessEntityID])
ALTER TABLE [Sales].[Customer]
	CHECK CONSTRAINT [FK_Customer_Store_StoreID]

GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Store.BusinessEntityID.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'CONSTRAINT', N'FK_Customer_Store_StoreID'
GO
-- Create index AK_Customer_AccountNumber on [Sales].[Customer]
Print 'Create index AK_Customer_AccountNumber on [Sales].[Customer]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Customer_AccountNumber]
	ON [Sales].[Customer] ([AccountNumber])
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'INDEX', N'AK_Customer_AccountNumber'
GO
-- Create index AK_Customer_rowguid on [Sales].[Customer]
Print 'Create index AK_Customer_rowguid on [Sales].[Customer]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Customer_rowguid]
	ON [Sales].[Customer] ([rowguid])
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'INDEX', N'AK_Customer_rowguid'
GO
-- Create index IX_Customer_TerritoryID on [Sales].[Customer]
Print 'Create index IX_Customer_TerritoryID on [Sales].[Customer]'
GO
CREATE NONCLUSTERED INDEX [IX_Customer_TerritoryID]
	ON [Sales].[Customer] ([TerritoryID])
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'INDEX', N'IX_Customer_TerritoryID'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique number identifying the customer assigned by the accounting system.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'COLUMN', N'AccountNumber'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'COLUMN', N'CustomerID'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key to Person.BusinessEntityID', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'COLUMN', N'PersonID'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key to Store.BusinessEntityID', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'COLUMN', N'StoreID'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ID of the territory in which the customer is located. Foreign key to SalesTerritory.SalesTerritoryID.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', 'COLUMN', N'TerritoryID'
GO
-- Create extended property MS_Description on [Sales].[Customer]
Print 'Create extended property MS_Description on [Sales].[Customer]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current customer information. Also see the Person and Store tables.', 'SCHEMA', N'Sales', 'TABLE', N'Customer', NULL, NULL
GO
ALTER TABLE [Sales].[Customer] SET (LOCK_ESCALATION = TABLE)
GO
