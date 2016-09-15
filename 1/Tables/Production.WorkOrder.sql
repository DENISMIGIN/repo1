SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[WorkOrder]
Print 'Create table [Production].[WorkOrder]'
GO
CREATE TABLE [Production].[WorkOrder] (
		[WorkOrderID]       [int] IDENTITY(1, 1) NOT NULL,
		[ProductID]         [int] NOT NULL,
		[OrderQty]          [int] NOT NULL,
		[StockedQty]        AS (isnull([OrderQty]-[ScrappedQty],(0))),
		[ScrappedQty]       [smallint] NOT NULL,
		[StartDate]         [datetime] NOT NULL,
		[EndDate]           [datetime] NULL,
		[DueDate]           [datetime] NOT NULL,
		[ScrapReasonID]     [smallint] NULL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_WorkOrder_WorkOrderID]
		PRIMARY KEY
		CLUSTERED
		([WorkOrderID])
)
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'CONSTRAINT', N'PK_WorkOrder_WorkOrderID'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'INDEX', N'PK_WorkOrder_WorkOrderID'
GO
-- Add check constraint CK_WorkOrder_EndDate to [Production].[WorkOrder]
Print 'Add check constraint CK_WorkOrder_EndDate to [Production].[WorkOrder]'
GO
ALTER TABLE [Production].[WorkOrder]
	ADD
	CONSTRAINT [CK_WorkOrder_EndDate]
	CHECK
	([EndDate]>=[StartDate] OR [EndDate] IS NULL)
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'CONSTRAINT', N'CK_WorkOrder_EndDate'
GO
ALTER TABLE [Production].[WorkOrder]
CHECK CONSTRAINT [CK_WorkOrder_EndDate]
GO
-- Add check constraint CK_WorkOrder_OrderQty to [Production].[WorkOrder]
Print 'Add check constraint CK_WorkOrder_OrderQty to [Production].[WorkOrder]'
GO
ALTER TABLE [Production].[WorkOrder]
	ADD
	CONSTRAINT [CK_WorkOrder_OrderQty]
	CHECK
	([OrderQty]>(0))
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [OrderQty] > (0)', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'CONSTRAINT', N'CK_WorkOrder_OrderQty'
GO
ALTER TABLE [Production].[WorkOrder]
CHECK CONSTRAINT [CK_WorkOrder_OrderQty]
GO
-- Add check constraint CK_WorkOrder_ScrappedQty to [Production].[WorkOrder]
Print 'Add check constraint CK_WorkOrder_ScrappedQty to [Production].[WorkOrder]'
GO
ALTER TABLE [Production].[WorkOrder]
	ADD
	CONSTRAINT [CK_WorkOrder_ScrappedQty]
	CHECK
	([ScrappedQty]>=(0))
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [ScrappedQty] >= (0)', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'CONSTRAINT', N'CK_WorkOrder_ScrappedQty'
GO
ALTER TABLE [Production].[WorkOrder]
CHECK CONSTRAINT [CK_WorkOrder_ScrappedQty]
GO
-- Add default constraint DF_WorkOrder_ModifiedDate to [Production].[WorkOrder]
Print 'Add default constraint DF_WorkOrder_ModifiedDate to [Production].[WorkOrder]'
GO
ALTER TABLE [Production].[WorkOrder]
	ADD
	CONSTRAINT [DF_WorkOrder_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'CONSTRAINT', N'DF_WorkOrder_ModifiedDate'
GO
-- Create foreign key FK_WorkOrder_Product_ProductID on [Production].[WorkOrder]
Print 'Create foreign key FK_WorkOrder_Product_ProductID on [Production].[WorkOrder]'
GO
ALTER TABLE [Production].[WorkOrder]
	WITH CHECK
	ADD CONSTRAINT [FK_WorkOrder_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[WorkOrder]
	CHECK CONSTRAINT [FK_WorkOrder_Product_ProductID]

GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'CONSTRAINT', N'FK_WorkOrder_Product_ProductID'
GO
-- Create foreign key FK_WorkOrder_ScrapReason_ScrapReasonID on [Production].[WorkOrder]
Print 'Create foreign key FK_WorkOrder_ScrapReason_ScrapReasonID on [Production].[WorkOrder]'
GO
ALTER TABLE [Production].[WorkOrder]
	WITH CHECK
	ADD CONSTRAINT [FK_WorkOrder_ScrapReason_ScrapReasonID]
	FOREIGN KEY ([ScrapReasonID]) REFERENCES [Production].[ScrapReason] ([ScrapReasonID])
ALTER TABLE [Production].[WorkOrder]
	CHECK CONSTRAINT [FK_WorkOrder_ScrapReason_ScrapReasonID]

GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing ScrapReason.ScrapReasonID.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'CONSTRAINT', N'FK_WorkOrder_ScrapReason_ScrapReasonID'
GO
-- Create index IX_WorkOrder_ProductID on [Production].[WorkOrder]
Print 'Create index IX_WorkOrder_ProductID on [Production].[WorkOrder]'
GO
CREATE NONCLUSTERED INDEX [IX_WorkOrder_ProductID]
	ON [Production].[WorkOrder] ([ProductID])
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'INDEX', N'IX_WorkOrder_ProductID'
GO
-- Create index IX_WorkOrder_ScrapReasonID on [Production].[WorkOrder]
Print 'Create index IX_WorkOrder_ScrapReasonID on [Production].[WorkOrder]'
GO
CREATE NONCLUSTERED INDEX [IX_WorkOrder_ScrapReasonID]
	ON [Production].[WorkOrder] ([ScrapReasonID])
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'INDEX', N'IX_WorkOrder_ScrapReasonID'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Work order due date.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'DueDate'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Work order end date.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'EndDate'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product quantity to build.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'OrderQty'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'ProductID'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Quantity that failed inspection.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'ScrappedQty'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reason for inspection failure.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'ScrapReasonID'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Work order start date.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'StartDate'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Quantity built and put in inventory.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'StockedQty'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for WorkOrder records.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'COLUMN', N'WorkOrderID'
GO
-- Create extended property MS_Description on [Production].[WorkOrder]
Print 'Create extended property MS_Description on [Production].[WorkOrder]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Manufacturing work orders.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', NULL, NULL
GO
ALTER TABLE [Production].[WorkOrder] SET (LOCK_ESCALATION = TABLE)
GO
