SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[ProductModel]
Print 'Create table [Production].[ProductModel]'
GO
CREATE TABLE [Production].[ProductModel] (
		[ProductModelID]         [int] IDENTITY(1, 1) NOT NULL,
		[Name]                   [dbo].[Name] NOT NULL,
		[CatalogDescription]     [xml](CONTENT [Production].[ProductDescriptionSchemaCollection]) NULL,
		[Instructions]           [xml](CONTENT [Production].[ManuInstructionsSchemaCollection]) NULL,
		[rowguid]                [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]           [datetime] NOT NULL,
		CONSTRAINT [PK_ProductModel_ProductModelID]
		PRIMARY KEY
		CLUSTERED
		([ProductModelID])
)
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'CONSTRAINT', N'PK_ProductModel_ProductModelID'
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'INDEX', N'PK_ProductModel_ProductModelID'
GO
-- Add default constraint DF_ProductModel_ModifiedDate to [Production].[ProductModel]
Print 'Add default constraint DF_ProductModel_ModifiedDate to [Production].[ProductModel]'
GO
ALTER TABLE [Production].[ProductModel]
	ADD
	CONSTRAINT [DF_ProductModel_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'CONSTRAINT', N'DF_ProductModel_ModifiedDate'
GO
-- Add default constraint DF_ProductModel_rowguid to [Production].[ProductModel]
Print 'Add default constraint DF_ProductModel_rowguid to [Production].[ProductModel]'
GO
ALTER TABLE [Production].[ProductModel]
	ADD
	CONSTRAINT [DF_ProductModel_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'CONSTRAINT', N'DF_ProductModel_rowguid'
GO
-- Create index AK_ProductModel_Name on [Production].[ProductModel]
Print 'Create index AK_ProductModel_Name on [Production].[ProductModel]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductModel_Name]
	ON [Production].[ProductModel] ([Name])
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'INDEX', N'AK_ProductModel_Name'
GO
-- Create index AK_ProductModel_rowguid on [Production].[ProductModel]
Print 'Create index AK_ProductModel_rowguid on [Production].[ProductModel]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductModel_rowguid]
	ON [Production].[ProductModel] ([rowguid])
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'INDEX', N'AK_ProductModel_rowguid'
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Detailed product catalog information in xml format.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'COLUMN', N'CatalogDescription'
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Manufacturing instructions in xml format.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'COLUMN', N'Instructions'
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product model description.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'COLUMN', N'Name'
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ProductModel records.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'COLUMN', N'ProductModelID'
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product model classification.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', NULL, NULL
GO
-- Create XML index PXML_ProductModel_CatalogDescription on [Production].[ProductModel]
Print 'Create XML index PXML_ProductModel_CatalogDescription on [Production].[ProductModel]'
GO
CREATE PRIMARY XML INDEX [PXML_ProductModel_CatalogDescription]
	ON [Production].[ProductModel] ([CatalogDescription])
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary XML index.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'INDEX', N'PXML_ProductModel_CatalogDescription'
GO
-- Create XML index PXML_ProductModel_Instructions on [Production].[ProductModel]
Print 'Create XML index PXML_ProductModel_Instructions on [Production].[ProductModel]'
GO
CREATE PRIMARY XML INDEX [PXML_ProductModel_Instructions]
	ON [Production].[ProductModel] ([Instructions])
GO
-- Create extended property MS_Description on [Production].[ProductModel]
Print 'Create extended property MS_Description on [Production].[ProductModel]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary XML index.', 'SCHEMA', N'Production', 'TABLE', N'ProductModel', 'INDEX', N'PXML_ProductModel_Instructions'
GO
ALTER TABLE [Production].[ProductModel] SET (LOCK_ESCALATION = TABLE)
GO
