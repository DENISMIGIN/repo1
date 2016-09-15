SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Purchasing].[PurchaseOrderHeader]
Print 'Create table [Purchasing].[PurchaseOrderHeader]'
GO
CREATE TABLE [Purchasing].[PurchaseOrderHeader] (
		[PurchaseOrderID]     [int] IDENTITY(1, 1) NOT NULL,
		[RevisionNumber]      [tinyint] NOT NULL,
		[Status]              [tinyint] NOT NULL,
		[EmployeeID]          [int] NOT NULL,
		[VendorID]            [int] NOT NULL,
		[ShipMethodID]        [int] NOT NULL,
		[OrderDate]           [datetime] NOT NULL,
		[ShipDate]            [datetime] NULL,
		[SubTotal]            [money] NOT NULL,
		[TaxAmt]              [money] NOT NULL,
		[Freight]             [money] NOT NULL,
		[TotalDue]            AS (isnull(([SubTotal]+[TaxAmt])+[Freight],(0))) PERSISTED NOT NULL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_PurchaseOrderHeader_PurchaseOrderID]
		PRIMARY KEY
		CLUSTERED
		([PurchaseOrderID])
)
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'PK_PurchaseOrderHeader_PurchaseOrderID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'INDEX', N'PK_PurchaseOrderHeader_PurchaseOrderID'
GO
-- Add check constraint CK_PurchaseOrderHeader_Freight to [Purchasing].[PurchaseOrderHeader]
Print 'Add check constraint CK_PurchaseOrderHeader_Freight to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_Freight]
	CHECK
	([Freight]>=(0.00))
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Freight] >= (0.00)', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'CK_PurchaseOrderHeader_Freight'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_Freight]
GO
-- Add check constraint CK_PurchaseOrderHeader_ShipDate to [Purchasing].[PurchaseOrderHeader]
Print 'Add check constraint CK_PurchaseOrderHeader_ShipDate to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_ShipDate]
	CHECK
	([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL)
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [ShipDate] >= [OrderDate] OR [ShipDate] IS NULL', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'CK_PurchaseOrderHeader_ShipDate'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_ShipDate]
GO
-- Add check constraint CK_PurchaseOrderHeader_Status to [Purchasing].[PurchaseOrderHeader]
Print 'Add check constraint CK_PurchaseOrderHeader_Status to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_Status]
	CHECK
	([Status]>=(1) AND [Status]<=(4))
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Status] BETWEEN (1) AND (4)', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'CK_PurchaseOrderHeader_Status'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_Status]
GO
-- Add check constraint CK_PurchaseOrderHeader_SubTotal to [Purchasing].[PurchaseOrderHeader]
Print 'Add check constraint CK_PurchaseOrderHeader_SubTotal to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_SubTotal]
	CHECK
	([SubTotal]>=(0.00))
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SubTotal] >= (0.00)', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'CK_PurchaseOrderHeader_SubTotal'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_SubTotal]
GO
-- Add check constraint CK_PurchaseOrderHeader_TaxAmt to [Purchasing].[PurchaseOrderHeader]
Print 'Add check constraint CK_PurchaseOrderHeader_TaxAmt to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_TaxAmt]
	CHECK
	([TaxAmt]>=(0.00))
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [TaxAmt] >= (0.00)', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'CK_PurchaseOrderHeader_TaxAmt'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_TaxAmt]
GO
-- Add default constraint DF_PurchaseOrderHeader_Freight to [Purchasing].[PurchaseOrderHeader]
Print 'Add default constraint DF_PurchaseOrderHeader_Freight to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_Freight]
	DEFAULT ((0.00)) FOR [Freight]
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'DF_PurchaseOrderHeader_Freight'
GO
-- Add default constraint DF_PurchaseOrderHeader_ModifiedDate to [Purchasing].[PurchaseOrderHeader]
Print 'Add default constraint DF_PurchaseOrderHeader_ModifiedDate to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'DF_PurchaseOrderHeader_ModifiedDate'
GO
-- Add default constraint DF_PurchaseOrderHeader_OrderDate to [Purchasing].[PurchaseOrderHeader]
Print 'Add default constraint DF_PurchaseOrderHeader_OrderDate to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_OrderDate]
	DEFAULT (getdate()) FOR [OrderDate]
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'DF_PurchaseOrderHeader_OrderDate'
GO
-- Add default constraint DF_PurchaseOrderHeader_RevisionNumber to [Purchasing].[PurchaseOrderHeader]
Print 'Add default constraint DF_PurchaseOrderHeader_RevisionNumber to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_RevisionNumber]
	DEFAULT ((0)) FOR [RevisionNumber]
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'DF_PurchaseOrderHeader_RevisionNumber'
GO
-- Add default constraint DF_PurchaseOrderHeader_Status to [Purchasing].[PurchaseOrderHeader]
Print 'Add default constraint DF_PurchaseOrderHeader_Status to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_Status]
	DEFAULT ((1)) FOR [Status]
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'DF_PurchaseOrderHeader_Status'
GO
-- Add default constraint DF_PurchaseOrderHeader_SubTotal to [Purchasing].[PurchaseOrderHeader]
Print 'Add default constraint DF_PurchaseOrderHeader_SubTotal to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_SubTotal]
	DEFAULT ((0.00)) FOR [SubTotal]
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'DF_PurchaseOrderHeader_SubTotal'
GO
-- Add default constraint DF_PurchaseOrderHeader_TaxAmt to [Purchasing].[PurchaseOrderHeader]
Print 'Add default constraint DF_PurchaseOrderHeader_TaxAmt to [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_TaxAmt]
	DEFAULT ((0.00)) FOR [TaxAmt]
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'DF_PurchaseOrderHeader_TaxAmt'
GO
-- Create foreign key FK_PurchaseOrderHeader_Employee_EmployeeID on [Purchasing].[PurchaseOrderHeader]
Print 'Create foreign key FK_PurchaseOrderHeader_Employee_EmployeeID on [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID]
	FOREIGN KEY ([EmployeeID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	CHECK CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID]

GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Employee.EmployeeID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'FK_PurchaseOrderHeader_Employee_EmployeeID'
GO
-- Create foreign key FK_PurchaseOrderHeader_ShipMethod_ShipMethodID on [Purchasing].[PurchaseOrderHeader]
Print 'Create foreign key FK_PurchaseOrderHeader_ShipMethod_ShipMethodID on [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderHeader_ShipMethod_ShipMethodID]
	FOREIGN KEY ([ShipMethodID]) REFERENCES [Purchasing].[ShipMethod] ([ShipMethodID])
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	CHECK CONSTRAINT [FK_PurchaseOrderHeader_ShipMethod_ShipMethodID]

GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing ShipMethod.ShipMethodID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'FK_PurchaseOrderHeader_ShipMethod_ShipMethodID'
GO
-- Create foreign key FK_PurchaseOrderHeader_Vendor_VendorID on [Purchasing].[PurchaseOrderHeader]
Print 'Create foreign key FK_PurchaseOrderHeader_Vendor_VendorID on [Purchasing].[PurchaseOrderHeader]'
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderHeader_Vendor_VendorID]
	FOREIGN KEY ([VendorID]) REFERENCES [Purchasing].[Vendor] ([BusinessEntityID])
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	CHECK CONSTRAINT [FK_PurchaseOrderHeader_Vendor_VendorID]

GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Vendor.VendorID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'CONSTRAINT', N'FK_PurchaseOrderHeader_Vendor_VendorID'
GO
-- Create index IX_PurchaseOrderHeader_EmployeeID on [Purchasing].[PurchaseOrderHeader]
Print 'Create index IX_PurchaseOrderHeader_EmployeeID on [Purchasing].[PurchaseOrderHeader]'
GO
CREATE NONCLUSTERED INDEX [IX_PurchaseOrderHeader_EmployeeID]
	ON [Purchasing].[PurchaseOrderHeader] ([EmployeeID])
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'INDEX', N'IX_PurchaseOrderHeader_EmployeeID'
GO
-- Create index IX_PurchaseOrderHeader_VendorID on [Purchasing].[PurchaseOrderHeader]
Print 'Create index IX_PurchaseOrderHeader_VendorID on [Purchasing].[PurchaseOrderHeader]'
GO
CREATE NONCLUSTERED INDEX [IX_PurchaseOrderHeader_VendorID]
	ON [Purchasing].[PurchaseOrderHeader] ([VendorID])
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'INDEX', N'IX_PurchaseOrderHeader_VendorID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee who created the purchase order. Foreign key to Employee.BusinessEntityID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'EmployeeID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shipping cost.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'Freight'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Purchase order creation date.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'OrderDate'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'PurchaseOrderID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Incremental number to track changes to the purchase order over time.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'RevisionNumber'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Estimated shipment date from the vendor.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'ShipDate'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shipping method. Foreign key to ShipMethod.ShipMethodID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'ShipMethodID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Order current status. 1 = Pending; 2 = Approved; 3 = Rejected; 4 = Complete', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'Status'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Purchase order subtotal. Computed as SUM(PurchaseOrderDetail.LineTotal)for the appropriate PurchaseOrderID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'SubTotal'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tax amount.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'TaxAmt'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Total due to vendor. Computed as Subtotal + TaxAmt + Freight.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'TotalDue'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vendor with whom the purchase order is placed. Foreign key to Vendor.BusinessEntityID.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', 'COLUMN', N'VendorID'
GO
-- Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]
Print 'Create extended property MS_Description on [Purchasing].[PurchaseOrderHeader]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'General purchase order information. See PurchaseOrderDetail.', 'SCHEMA', N'Purchasing', 'TABLE', N'PurchaseOrderHeader', NULL, NULL
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader] SET (LOCK_ESCALATION = TABLE)
GO
