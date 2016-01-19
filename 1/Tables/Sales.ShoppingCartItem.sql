SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Sales].[ShoppingCartItem]
Print 'Create Table [Sales].[ShoppingCartItem]'
GO
CREATE TABLE [Sales].[ShoppingCartItem] (
		[ShoppingCartItemID]     [int] IDENTITY(1, 1) NOT NULL,
		[ShoppingCartID]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Quantity]               [int] NOT NULL,
		[ProductID]              [int] NOT NULL,
		[DateCreated]            [datetime] NOT NULL,
		[ModifiedDate]           [datetime] NOT NULL,
		CONSTRAINT [PK_ShoppingCartItem_ShoppingCartItemID]
		PRIMARY KEY
		CLUSTERED
		([ShoppingCartItemID])
)
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'CONSTRAINT', N'PK_ShoppingCartItem_ShoppingCartItemID'
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'INDEX', N'PK_ShoppingCartItem_ShoppingCartItemID'
GO
-- Add Check Constraint CK_ShoppingCartItem_Quantity to [Sales].[ShoppingCartItem]
Print 'Add Check Constraint CK_ShoppingCartItem_Quantity to [Sales].[ShoppingCartItem]'
GO
ALTER TABLE [Sales].[ShoppingCartItem]
	ADD
	CONSTRAINT [CK_ShoppingCartItem_Quantity]
	CHECK
	([Quantity]>=(1))
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Quantity] >= (1)', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'CONSTRAINT', N'CK_ShoppingCartItem_Quantity'
GO
ALTER TABLE [Sales].[ShoppingCartItem]
CHECK CONSTRAINT [CK_ShoppingCartItem_Quantity]
GO
-- Add Default Constraint DF_ShoppingCartItem_DateCreated to [Sales].[ShoppingCartItem]
Print 'Add Default Constraint DF_ShoppingCartItem_DateCreated to [Sales].[ShoppingCartItem]'
GO
ALTER TABLE [Sales].[ShoppingCartItem]
	ADD
	CONSTRAINT [DF_ShoppingCartItem_DateCreated]
	DEFAULT (getdate()) FOR [DateCreated]
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'CONSTRAINT', N'DF_ShoppingCartItem_DateCreated'
GO
-- Add Default Constraint DF_ShoppingCartItem_ModifiedDate to [Sales].[ShoppingCartItem]
Print 'Add Default Constraint DF_ShoppingCartItem_ModifiedDate to [Sales].[ShoppingCartItem]'
GO
ALTER TABLE [Sales].[ShoppingCartItem]
	ADD
	CONSTRAINT [DF_ShoppingCartItem_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'CONSTRAINT', N'DF_ShoppingCartItem_ModifiedDate'
GO
-- Add Default Constraint DF_ShoppingCartItem_Quantity to [Sales].[ShoppingCartItem]
Print 'Add Default Constraint DF_ShoppingCartItem_Quantity to [Sales].[ShoppingCartItem]'
GO
ALTER TABLE [Sales].[ShoppingCartItem]
	ADD
	CONSTRAINT [DF_ShoppingCartItem_Quantity]
	DEFAULT ((1)) FOR [Quantity]
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'CONSTRAINT', N'DF_ShoppingCartItem_Quantity'
GO
-- Create Foreign Key FK_ShoppingCartItem_Product_ProductID on [Sales].[ShoppingCartItem]
Print 'Create Foreign Key FK_ShoppingCartItem_Product_ProductID on [Sales].[ShoppingCartItem]'
GO
ALTER TABLE [Sales].[ShoppingCartItem]
	WITH CHECK
	ADD CONSTRAINT [FK_ShoppingCartItem_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Sales].[ShoppingCartItem]
	CHECK CONSTRAINT [FK_ShoppingCartItem_Product_ProductID]

GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductID.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'CONSTRAINT', N'FK_ShoppingCartItem_Product_ProductID'
GO
-- Create Index IX_ShoppingCartItem_ShoppingCartID_ProductID on [Sales].[ShoppingCartItem]
Print 'Create Index IX_ShoppingCartItem_ShoppingCartID_ProductID on [Sales].[ShoppingCartItem]'
GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCartItem_ShoppingCartID_ProductID]
	ON [Sales].[ShoppingCartItem] ([ShoppingCartID], [ProductID])
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'INDEX', N'IX_ShoppingCartItem_ShoppingCartID_ProductID'
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the time the record was created.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'COLUMN', N'DateCreated'
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product ordered. Foreign key to Product.ProductID.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'COLUMN', N'ProductID'
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product quantity ordered.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'COLUMN', N'Quantity'
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shopping cart identification number.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'COLUMN', N'ShoppingCartID'
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ShoppingCartItem records.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', 'COLUMN', N'ShoppingCartItemID'
GO
-- Create Extended Property MS_Description on [Sales].[ShoppingCartItem]
Print 'Create Extended Property MS_Description on [Sales].[ShoppingCartItem]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contains online customer orders until the order is submitted or cancelled.', 'SCHEMA', N'Sales', 'TABLE', N'ShoppingCartItem', NULL, NULL
GO
ALTER TABLE [Sales].[ShoppingCartItem] SET (LOCK_ESCALATION = TABLE)
GO
