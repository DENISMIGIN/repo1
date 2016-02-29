SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Sales].[SalesOrderDetail]
Print 'Create Table [Sales].[SalesOrderDetail]'
GO
CREATE TABLE [Sales].[SalesOrderDetail] (
		[SalesOrderID]              [int] NOT NULL,
		[SalesOrderDetailID]        [int] IDENTITY(1, 1) NOT NULL,
		[CarrierTrackingNumber]     [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[OrderQty]                  [smallint] NOT NULL,
		[ProductID]                 [int] NOT NULL,
		[SpecialOfferID]            [int] NOT NULL,
		[UnitPrice]                 [money] NOT NULL,
		[UnitPriceDiscount]         [money] NOT NULL,
		[LineTotal]                 AS (isnull(([UnitPrice]*((1.0)-[UnitPriceDiscount]))*[OrderQty],(0.0))),
		[rowguid]                   [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]              [datetime] NOT NULL,
		CONSTRAINT [PK_SalesOrderDetail_SalesOrderID_SalesOrderDetailID]
		PRIMARY KEY
		CLUSTERED
		([SalesOrderID], [SalesOrderDetailID])
)
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'PK_SalesOrderDetail_SalesOrderID_SalesOrderDetailID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'INDEX', N'PK_SalesOrderDetail_SalesOrderID_SalesOrderDetailID'
GO
-- Add Check Constraint CK_SalesOrderDetail_OrderQty to [Sales].[SalesOrderDetail]
Print 'Add Check Constraint CK_SalesOrderDetail_OrderQty to [Sales].[SalesOrderDetail]'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
	ADD
	CONSTRAINT [CK_SalesOrderDetail_OrderQty]
	CHECK
	([OrderQty]>(0))
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [OrderQty] > (0)', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'CK_SalesOrderDetail_OrderQty'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
CHECK CONSTRAINT [CK_SalesOrderDetail_OrderQty]
GO
-- Add Check Constraint CK_SalesOrderDetail_UnitPrice to [Sales].[SalesOrderDetail]
Print 'Add Check Constraint CK_SalesOrderDetail_UnitPrice to [Sales].[SalesOrderDetail]'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
	ADD
	CONSTRAINT [CK_SalesOrderDetail_UnitPrice]
	CHECK
	([UnitPrice]>=(0.00))
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [UnitPrice] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'CK_SalesOrderDetail_UnitPrice'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
CHECK CONSTRAINT [CK_SalesOrderDetail_UnitPrice]
GO
-- Add Check Constraint CK_SalesOrderDetail_UnitPriceDiscount to [Sales].[SalesOrderDetail]
Print 'Add Check Constraint CK_SalesOrderDetail_UnitPriceDiscount to [Sales].[SalesOrderDetail]'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
	ADD
	CONSTRAINT [CK_SalesOrderDetail_UnitPriceDiscount]
	CHECK
	([UnitPriceDiscount]>=(0.00))
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [UnitPriceDiscount] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'CK_SalesOrderDetail_UnitPriceDiscount'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
CHECK CONSTRAINT [CK_SalesOrderDetail_UnitPriceDiscount]
GO
-- Add Default Constraint DF_SalesOrderDetail_ModifiedDate to [Sales].[SalesOrderDetail]
Print 'Add Default Constraint DF_SalesOrderDetail_ModifiedDate to [Sales].[SalesOrderDetail]'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
	ADD
	CONSTRAINT [DF_SalesOrderDetail_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'DF_SalesOrderDetail_ModifiedDate'
GO
-- Add Default Constraint DF_SalesOrderDetail_rowguid to [Sales].[SalesOrderDetail]
Print 'Add Default Constraint DF_SalesOrderDetail_rowguid to [Sales].[SalesOrderDetail]'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
	ADD
	CONSTRAINT [DF_SalesOrderDetail_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'DF_SalesOrderDetail_rowguid'
GO
-- Add Default Constraint DF_SalesOrderDetail_UnitPriceDiscount to [Sales].[SalesOrderDetail]
Print 'Add Default Constraint DF_SalesOrderDetail_UnitPriceDiscount to [Sales].[SalesOrderDetail]'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
	ADD
	CONSTRAINT [DF_SalesOrderDetail_UnitPriceDiscount]
	DEFAULT ((0.0)) FOR [UnitPriceDiscount]
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'DF_SalesOrderDetail_UnitPriceDiscount'
GO
-- Create Foreign Key FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID on [Sales].[SalesOrderDetail]
Print 'Create Foreign Key FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID on [Sales].[SalesOrderDetail]'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID]
	FOREIGN KEY ([SalesOrderID]) REFERENCES [Sales].[SalesOrderHeader] ([SalesOrderID])
	ON DELETE CASCADE
ALTER TABLE [Sales].[SalesOrderDetail]
	CHECK CONSTRAINT [FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID]

GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesOrderHeader.PurchaseOrderID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID'
GO
-- Create Foreign Key FK_SalesOrderDetail_SpecialOfferProduct_SpecialOfferIDProductID on [Sales].[SalesOrderDetail]
Print 'Create Foreign Key FK_SalesOrderDetail_SpecialOfferProduct_SpecialOfferIDProductID on [Sales].[SalesOrderDetail]'
GO
ALTER TABLE [Sales].[SalesOrderDetail]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesOrderDetail_SpecialOfferProduct_SpecialOfferIDProductID]
	FOREIGN KEY ([SpecialOfferID], [ProductID]) REFERENCES [Sales].[SpecialOfferProduct] ([SpecialOfferID], [ProductID])
ALTER TABLE [Sales].[SalesOrderDetail]
	CHECK CONSTRAINT [FK_SalesOrderDetail_SpecialOfferProduct_SpecialOfferIDProductID]

GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SpecialOfferProduct.SpecialOfferIDProductID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'CONSTRAINT', N'FK_SalesOrderDetail_SpecialOfferProduct_SpecialOfferIDProductID'
GO
-- Create Index AK_SalesOrderDetail_rowguid on [Sales].[SalesOrderDetail]
Print 'Create Index AK_SalesOrderDetail_rowguid on [Sales].[SalesOrderDetail]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesOrderDetail_rowguid]
	ON [Sales].[SalesOrderDetail] ([rowguid])
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'INDEX', N'AK_SalesOrderDetail_rowguid'
GO
-- Create Index IX_SalesOrderDetail_ProductID on [Sales].[SalesOrderDetail]
Print 'Create Index IX_SalesOrderDetail_ProductID on [Sales].[SalesOrderDetail]'
GO
CREATE NONCLUSTERED INDEX [IX_SalesOrderDetail_ProductID]
	ON [Sales].[SalesOrderDetail] ([ProductID])
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'INDEX', N'IX_SalesOrderDetail_ProductID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shipment tracking number supplied by the shipper.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'CarrierTrackingNumber'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Per product subtotal. Computed as UnitPrice * (1 - UnitPriceDiscount) * OrderQty.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'LineTotal'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Quantity ordered per product.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'OrderQty'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product sold to customer. Foreign key to Product.ProductID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'ProductID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. One incremental unique number per product sold.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'SalesOrderDetailID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to SalesOrderHeader.SalesOrderID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'SalesOrderID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Promotional code. Foreign key to SpecialOffer.SpecialOfferID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'SpecialOfferID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Selling price of a single product.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'UnitPrice'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Discount amount.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', 'COLUMN', N'UnitPriceDiscount'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderDetail]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderDetail]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Individual products associated with a specific sales order. See SalesOrderHeader.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderDetail', NULL, NULL
GO
ALTER TABLE [Sales].[SalesOrderDetail] SET (LOCK_ESCALATION = TABLE)
GO
