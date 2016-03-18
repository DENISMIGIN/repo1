SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Production].[ProductCategory]
Print 'Create Table [Production].[ProductCategory]'
GO
CREATE TABLE [Production].[ProductCategory] (
		[ProductCategoryID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]                  [dbo].[Name] NOT NULL,
		[rowguid]               [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_ProductCategory_ProductCategoryID]
		PRIMARY KEY
		CLUSTERED
		([ProductCategoryID])
)
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'CONSTRAINT', N'PK_ProductCategory_ProductCategoryID'
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'INDEX', N'PK_ProductCategory_ProductCategoryID'
GO
-- Add Default Constraint DF_ProductCategory_ModifiedDate to [Production].[ProductCategory]
Print 'Add Default Constraint DF_ProductCategory_ModifiedDate to [Production].[ProductCategory]'
GO
ALTER TABLE [Production].[ProductCategory]
	ADD
	CONSTRAINT [DF_ProductCategory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'CONSTRAINT', N'DF_ProductCategory_ModifiedDate'
GO
-- Add Default Constraint DF_ProductCategory_rowguid to [Production].[ProductCategory]
Print 'Add Default Constraint DF_ProductCategory_rowguid to [Production].[ProductCategory]'
GO
ALTER TABLE [Production].[ProductCategory]
	ADD
	CONSTRAINT [DF_ProductCategory_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()()', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'CONSTRAINT', N'DF_ProductCategory_rowguid'
GO
-- Create Index AK_ProductCategory_Name on [Production].[ProductCategory]
Print 'Create Index AK_ProductCategory_Name on [Production].[ProductCategory]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductCategory_Name]
	ON [Production].[ProductCategory] ([Name])
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'INDEX', N'AK_ProductCategory_Name'
GO
-- Create Index AK_ProductCategory_rowguid on [Production].[ProductCategory]
Print 'Create Index AK_ProductCategory_rowguid on [Production].[ProductCategory]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductCategory_rowguid]
	ON [Production].[ProductCategory] ([rowguid])
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'INDEX', N'AK_ProductCategory_rowguid'
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category description.', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'COLUMN', N'Name'
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ProductCategory records.', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'COLUMN', N'ProductCategoryID'
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Production].[ProductCategory]
Print 'Create Extended Property MS_Description on [Production].[ProductCategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'High-level product categorization.', 'SCHEMA', N'Production', 'TABLE', N'ProductCategory', NULL, NULL
GO
ALTER TABLE [Production].[ProductCategory] SET (LOCK_ESCALATION = TABLE)
GO
