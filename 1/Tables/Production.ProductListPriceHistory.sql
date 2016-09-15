SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[ProductListPriceHistory]
Print 'Create table [Production].[ProductListPriceHistory]'
GO
CREATE TABLE [Production].[ProductListPriceHistory] (
		[ProductID]        [int] NOT NULL,
		[StartDate]        [datetime] NOT NULL,
		[EndDate]          [datetime] NULL,
		[ListPrice]        [money] NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL,
		CONSTRAINT [PK_ProductListPriceHistory_ProductID_StartDate]
		PRIMARY KEY
		CLUSTERED
		([ProductID], [StartDate])
)
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'CONSTRAINT', N'PK_ProductListPriceHistory_ProductID_StartDate'
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'INDEX', N'PK_ProductListPriceHistory_ProductID_StartDate'
GO
-- Add check constraint CK_ProductListPriceHistory_EndDate to [Production].[ProductListPriceHistory]
Print 'Add check constraint CK_ProductListPriceHistory_EndDate to [Production].[ProductListPriceHistory]'
GO
ALTER TABLE [Production].[ProductListPriceHistory]
	ADD
	CONSTRAINT [CK_ProductListPriceHistory_EndDate]
	CHECK
	([EndDate]>=[StartDate] OR [EndDate] IS NULL)
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'CONSTRAINT', N'CK_ProductListPriceHistory_EndDate'
GO
ALTER TABLE [Production].[ProductListPriceHistory]
CHECK CONSTRAINT [CK_ProductListPriceHistory_EndDate]
GO
-- Add check constraint CK_ProductListPriceHistory_ListPrice to [Production].[ProductListPriceHistory]
Print 'Add check constraint CK_ProductListPriceHistory_ListPrice to [Production].[ProductListPriceHistory]'
GO
ALTER TABLE [Production].[ProductListPriceHistory]
	ADD
	CONSTRAINT [CK_ProductListPriceHistory_ListPrice]
	CHECK
	([ListPrice]>(0.00))
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [ListPrice] > (0.00)', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'CONSTRAINT', N'CK_ProductListPriceHistory_ListPrice'
GO
ALTER TABLE [Production].[ProductListPriceHistory]
CHECK CONSTRAINT [CK_ProductListPriceHistory_ListPrice]
GO
-- Add default constraint DF_ProductListPriceHistory_ModifiedDate to [Production].[ProductListPriceHistory]
Print 'Add default constraint DF_ProductListPriceHistory_ModifiedDate to [Production].[ProductListPriceHistory]'
GO
ALTER TABLE [Production].[ProductListPriceHistory]
	ADD
	CONSTRAINT [DF_ProductListPriceHistory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'CONSTRAINT', N'DF_ProductListPriceHistory_ModifiedDate'
GO
-- Create foreign key FK_ProductListPriceHistory_Product_ProductID on [Production].[ProductListPriceHistory]
Print 'Create foreign key FK_ProductListPriceHistory_Product_ProductID on [Production].[ProductListPriceHistory]'
GO
ALTER TABLE [Production].[ProductListPriceHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductListPriceHistory_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[ProductListPriceHistory]
	CHECK CONSTRAINT [FK_ProductListPriceHistory_Product_ProductID]

GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'CONSTRAINT', N'FK_ProductListPriceHistory_Product_ProductID'
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'List price end date', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'COLUMN', N'EndDate'
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product list price.', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'COLUMN', N'ListPrice'
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product identification number. Foreign key to Product.ProductID', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'COLUMN', N'ProductID'
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'List price start date.', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', 'COLUMN', N'StartDate'
GO
-- Create extended property MS_Description on [Production].[ProductListPriceHistory]
Print 'Create extended property MS_Description on [Production].[ProductListPriceHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Changes in the list price of a product over time.', 'SCHEMA', N'Production', 'TABLE', N'ProductListPriceHistory', NULL, NULL
GO
ALTER TABLE [Production].[ProductListPriceHistory] SET (LOCK_ESCALATION = TABLE)
GO
