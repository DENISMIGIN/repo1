SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Purchasing].[PurchaseOrderDetail]
Print 'Create table [Purchasing].[PurchaseOrderDetail]'
GO
CREATE TABLE [Purchasing].[PurchaseOrderDetail] (
		[PurchaseOrderID]           [int] NOT NULL,
		[PurchaseOrderDetailID]     [int] IDENTITY(1, 1) NOT NULL,
		[DueDate]                   [datetime] NOT NULL,
		[OrderQty]                  [smallint] NOT NULL,
		[ProductID]                 [int] NOT NULL,
		[UnitPrice]                 [money] NOT NULL,
		[LineTotal]                 AS (isnull([OrderQty]*[UnitPrice],(0.00))),
		[ReceivedQty]               [decimal](8, 2) NOT NULL,
		[RejectedQty]               [decimal](8, 2) NOT NULL,
		[StockedQty]                AS (isnull([ReceivedQty]-[RejectedQty],(0.00))),
		[ModifiedDate]              [datetime] NOT NULL,
		CONSTRAINT [PK_PurchaseOrderDetail_PurchaseOrderID_PurchaseOrderDetailID]
		PRIMARY KEY
		CLUSTERED
		([PurchaseOrderID], [PurchaseOrderDetailID])
)
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'CONSTRAINT', N'PK_PurchaseOrderDetail_PurchaseOrderID_PurchaseOrderDetailID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'INDEX', N'PK_PurchaseOrderDetail_PurchaseOrderID_PurchaseOrderDetailID'
GO
-- Add check constraint CK_PurchaseOrderDetail_OrderQty to [Purchasing].[PurchaseOrderDetail]
Print 'Add check constraint CK_PurchaseOrderDetail_OrderQty to [Purchasing].[PurchaseOrderDetail]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [CK_PurchaseOrderDetail_OrderQty]
	CHECK
	([OrderQty]>(0))
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [OrderQty] > (0)', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'CONSTRAINT', N'CK_PurchaseOrderDetail_OrderQty'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
CHECK CONSTRAINT [CK_PurchaseOrderDetail_OrderQty]
GO
-- Add check constraint CK_PurchaseOrderDetail_ReceivedQty to [Purchasing].[PurchaseOrderDetail]
Print 'Add check constraint CK_PurchaseOrderDetail_ReceivedQty to [Purchasing].[PurchaseOrderDetail]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [CK_PurchaseOrderDetail_ReceivedQty]
	CHECK
	([ReceivedQty]>=(0.00))
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [ReceivedQty] >= (0.00)', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'CONSTRAINT', N'CK_PurchaseOrderDetail_ReceivedQty'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
CHECK CONSTRAINT [CK_PurchaseOrderDetail_ReceivedQty]
GO
-- Add check constraint CK_PurchaseOrderDetail_RejectedQty to [Purchasing].[PurchaseOrderDetail]
Print 'Add check constraint CK_PurchaseOrderDetail_RejectedQty to [Purchasing].[PurchaseOrderDetail]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [CK_PurchaseOrderDetail_RejectedQty]
	CHECK
	([RejectedQty]>=(0.00))
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [RejectedQty] >= (0.00)', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'CONSTRAINT', N'CK_PurchaseOrderDetail_RejectedQty'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
CHECK CONSTRAINT [CK_PurchaseOrderDetail_RejectedQty]
GO
-- Add check constraint CK_PurchaseOrderDetail_UnitPrice to [Purchasing].[PurchaseOrderDetail]
Print 'Add check constraint CK_PurchaseOrderDetail_UnitPrice to [Purchasing].[PurchaseOrderDetail]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [CK_PurchaseOrderDetail_UnitPrice]
	CHECK
	([UnitPrice]>=(0.00))
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [UnitPrice] >= (0.00)', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'CONSTRAINT', N'CK_PurchaseOrderDetail_UnitPrice'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
CHECK CONSTRAINT [CK_PurchaseOrderDetail_UnitPrice]
GO
-- Add default constraint DF_PurchaseOrderDetail_ModifiedDate to [Purchasing].[PurchaseOrderDetail]
Print 'Add default constraint DF_PurchaseOrderDetail_ModifiedDate to [Purchasing].[PurchaseOrderDetail]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [DF_PurchaseOrderDetail_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'CONSTRAINT', N'DF_PurchaseOrderDetail_ModifiedDate'
GO
-- Create foreign key FK_PurchaseOrderDetail_Product_ProductID on [Purchasing].[PurchaseOrderDetail]
Print 'Create foreign key FK_PurchaseOrderDetail_Product_ProductID on [Purchasing].[PurchaseOrderDetail]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderDetail_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	CHECK CONSTRAINT [FK_PurchaseOrderDetail_Product_ProductID]

GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'CONSTRAINT', N'FK_PurchaseOrderDetail_Product_ProductID'
GO
-- Create foreign key FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID on [Purchasing].[PurchaseOrderDetail]
Print 'Create foreign key FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID on [Purchasing].[PurchaseOrderDetail]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID]
	FOREIGN KEY ([PurchaseOrderID]) REFERENCES [Purchasing].[PurchaseOrderHeader] ([PurchaseOrderID])
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	CHECK CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID]

GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing PurchaseOrderHeader.PurchaseOrderID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'CONSTRAINT', N'FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID'
GO
-- Create index IX_PurchaseOrderDetail_ProductID on [Purchasing].[PurchaseOrderDetail]
Print 'Create index IX_PurchaseOrderDetail_ProductID on [Purchasing].[PurchaseOrderDetail]'
GO
CREATE NONCLUSTERED INDEX [IX_PurchaseOrderDetail_ProductID]
	ON [Purchasing].[PurchaseOrderDetail] ([ProductID])
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'INDEX', N'IX_PurchaseOrderDetail_ProductID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the product is expected to be received.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'DueDate'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Per product subtotal. Computed as OrderQty * UnitPrice.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'LineTotal'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Quantity ordered.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'OrderQty'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'ProductID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. One line number per purchased product.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'PurchaseOrderDetailID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to PurchaseOrderHeader.PurchaseOrderID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'PurchaseOrderID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Quantity actually received from the vendor.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'ReceivedQty'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Quantity rejected during inspection.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'RejectedQty'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Quantity accepted into inventory. Computed as ReceivedQty - RejectedQty.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'StockedQty'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vendor''s selling price of a single product.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', 'COLUMN', N'UnitPrice'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Individual products associated with a specific purchase order. See PurchaseOrderHeader.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderDetail', NULL, NULL
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail] SET (LOCK_ESCALATION = TABLE)
GO
