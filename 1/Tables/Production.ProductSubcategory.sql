SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Production].[ProductSubcategory]
Print 'Create Table [Production].[ProductSubcategory]'
GO
CREATE TABLE [Production].[ProductSubcategory] (
		[ProductSubcategoryID]     [int] IDENTITY(1, 1) NOT NULL,
		[ProductCategoryID]        [int] NOT NULL,
		[Name]                     [dbo].[Name] NOT NULL,
		[rowguid]                  [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]             [datetime] NOT NULL,
		CONSTRAINT [PK_ProductSubcategory_ProductSubcategoryID]
		PRIMARY KEY
		CLUSTERED
		([ProductSubcategoryID])
)
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'CONSTRAINT', N'PK_ProductSubcategory_ProductSubcategoryID'
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'INDEX', N'PK_ProductSubcategory_ProductSubcategoryID'
GO
-- Add Default Constraint DF_ProductSubcategory_ModifiedDate to [Production].[ProductSubcategory]
Print 'Add Default Constraint DF_ProductSubcategory_ModifiedDate to [Production].[ProductSubcategory]'
GO
ALTER TABLE [Production].[ProductSubcategory]
	ADD
	CONSTRAINT [DF_ProductSubcategory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'CONSTRAINT', N'DF_ProductSubcategory_ModifiedDate'
GO
-- Add Default Constraint DF_ProductSubcategory_rowguid to [Production].[ProductSubcategory]
Print 'Add Default Constraint DF_ProductSubcategory_rowguid to [Production].[ProductSubcategory]'
GO
ALTER TABLE [Production].[ProductSubcategory]
	ADD
	CONSTRAINT [DF_ProductSubcategory_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'CONSTRAINT', N'DF_ProductSubcategory_rowguid'
GO
-- Create Foreign Key FK_ProductSubcategory_ProductCategory_ProductCategoryID on [Production].[ProductSubcategory]
Print 'Create Foreign Key FK_ProductSubcategory_ProductCategory_ProductCategoryID on [Production].[ProductSubcategory]'
GO
ALTER TABLE [Production].[ProductSubcategory]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductSubcategory_ProductCategory_ProductCategoryID]
	FOREIGN KEY ([ProductCategoryID]) REFERENCES [Production].[ProductCategory] ([ProductCategoryID])
ALTER TABLE [Production].[ProductSubcategory]
	CHECK CONSTRAINT [FK_ProductSubcategory_ProductCategory_ProductCategoryID]

GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing ProductCategory.ProductCategoryID.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'CONSTRAINT', N'FK_ProductSubcategory_ProductCategory_ProductCategoryID'
GO
-- Create Index AK_ProductSubcategory_Name on [Production].[ProductSubcategory]
Print 'Create Index AK_ProductSubcategory_Name on [Production].[ProductSubcategory]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductSubcategory_Name]
	ON [Production].[ProductSubcategory] ([Name])
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'INDEX', N'AK_ProductSubcategory_Name'
GO
-- Create Index AK_ProductSubcategory_rowguid on [Production].[ProductSubcategory]
Print 'Create Index AK_ProductSubcategory_rowguid on [Production].[ProductSubcategory]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ProductSubcategory_rowguid]
	ON [Production].[ProductSubcategory] ([rowguid])
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'INDEX', N'AK_ProductSubcategory_rowguid'
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Subcategory description.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'COLUMN', N'Name'
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product category identification number. Foreign key to ProductCategory.ProductCategoryID.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'COLUMN', N'ProductCategoryID'
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ProductSubcategory records.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'COLUMN', N'ProductSubcategoryID'
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Production].[ProductSubcategory]
Print 'Create Extended Property MS_Description on [Production].[ProductSubcategory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product subcategories. See ProductCategory table.', 'SCHEMA', N'Production', 'TABLE', N'ProductSubcategory', NULL, NULL
GO
ALTER TABLE [Production].[ProductSubcategory] SET (LOCK_ESCALATION = TABLE)
GO
