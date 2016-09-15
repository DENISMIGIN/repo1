SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[TransactionHistoryArchive]
Print 'Create table [Production].[TransactionHistoryArchive]'
GO
CREATE TABLE [Production].[TransactionHistoryArchive] (
		[TransactionID]            [int] NOT NULL,
		[ProductID]                [int] NOT NULL,
		[ReferenceOrderID]         [int] NOT NULL,
		[ReferenceOrderLineID]     [int] NOT NULL,
		[TransactionDate]          [datetime] NOT NULL,
		[TransactionType]          [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Quantity]                 [int] NOT NULL,
		[ActualCost]               [money] NOT NULL,
		[ModifiedDate]             [datetime] NOT NULL,
		CONSTRAINT [PK_TransactionHistoryArchive_TransactionID]
		PRIMARY KEY
		CLUSTERED
		([TransactionID])
)
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'CONSTRAINT', N'PK_TransactionHistoryArchive_TransactionID'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'INDEX', N'PK_TransactionHistoryArchive_TransactionID'
GO
-- Add check constraint CK_TransactionHistoryArchive_TransactionType to [Production].[TransactionHistoryArchive]
Print 'Add check constraint CK_TransactionHistoryArchive_TransactionType to [Production].[TransactionHistoryArchive]'
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
	ADD
	CONSTRAINT [CK_TransactionHistoryArchive_TransactionType]
	CHECK
	(upper([TransactionType])='P' OR upper([TransactionType])='S' OR upper([TransactionType])='W')
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [TransactionType]=''p'' OR [TransactionType]=''s'' OR [TransactionType]=''w'' OR [TransactionType]=''P'' OR [TransactionType]=''S'' OR [TransactionType]=''W''', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'CONSTRAINT', N'CK_TransactionHistoryArchive_TransactionType'
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
CHECK CONSTRAINT [CK_TransactionHistoryArchive_TransactionType]
GO
-- Add default constraint DF_TransactionHistoryArchive_ModifiedDate to [Production].[TransactionHistoryArchive]
Print 'Add default constraint DF_TransactionHistoryArchive_ModifiedDate to [Production].[TransactionHistoryArchive]'
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
	ADD
	CONSTRAINT [DF_TransactionHistoryArchive_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'CONSTRAINT', N'DF_TransactionHistoryArchive_ModifiedDate'
GO
-- Add default constraint DF_TransactionHistoryArchive_ReferenceOrderLineID to [Production].[TransactionHistoryArchive]
Print 'Add default constraint DF_TransactionHistoryArchive_ReferenceOrderLineID to [Production].[TransactionHistoryArchive]'
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
	ADD
	CONSTRAINT [DF_TransactionHistoryArchive_ReferenceOrderLineID]
	DEFAULT ((0)) FOR [ReferenceOrderLineID]
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'CONSTRAINT', N'DF_TransactionHistoryArchive_ReferenceOrderLineID'
GO
-- Add default constraint DF_TransactionHistoryArchive_TransactionDate to [Production].[TransactionHistoryArchive]
Print 'Add default constraint DF_TransactionHistoryArchive_TransactionDate to [Production].[TransactionHistoryArchive]'
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
	ADD
	CONSTRAINT [DF_TransactionHistoryArchive_TransactionDate]
	DEFAULT (getdate()) FOR [TransactionDate]
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'CONSTRAINT', N'DF_TransactionHistoryArchive_TransactionDate'
GO
-- Create index IX_TransactionHistoryArchive_ProductID on [Production].[TransactionHistoryArchive]
Print 'Create index IX_TransactionHistoryArchive_ProductID on [Production].[TransactionHistoryArchive]'
GO
CREATE NONCLUSTERED INDEX [IX_TransactionHistoryArchive_ProductID]
	ON [Production].[TransactionHistoryArchive] ([ProductID])
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'INDEX', N'IX_TransactionHistoryArchive_ProductID'
GO
-- Create index IX_TransactionHistoryArchive_ReferenceOrderID_ReferenceOrderLineID on [Production].[TransactionHistoryArchive]
Print 'Create index IX_TransactionHistoryArchive_ReferenceOrderID_ReferenceOrderLineID on [Production].[TransactionHistoryArchive]'
GO
CREATE NONCLUSTERED INDEX [IX_TransactionHistoryArchive_ReferenceOrderID_ReferenceOrderLineID]
	ON [Production].[TransactionHistoryArchive] ([ReferenceOrderID], [ReferenceOrderLineID])
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'INDEX', N'IX_TransactionHistoryArchive_ReferenceOrderID_ReferenceOrderLineID'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product cost.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'ActualCost'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'ProductID'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product quantity.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'Quantity'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Purchase order, sales order, or work order identification number.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'ReferenceOrderID'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Line number associated with the purchase order, sales order, or work order.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'ReferenceOrderLineID'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time of the transaction.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'TransactionDate'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for TransactionHistoryArchive records.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'TransactionID'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'W = Work Order, S = Sales Order, P = Purchase Order', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', 'COLUMN', N'TransactionType'
GO
-- Create extended property MS_Description on [Production].[TransactionHistoryArchive]
Print 'Create extended property MS_Description on [Production].[TransactionHistoryArchive]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Transactions for previous years.', 'SCHEMA', N'Production', 'TABLE', N'TransactionHistoryArchive', NULL, NULL
GO
ALTER TABLE [Production].[TransactionHistoryArchive] SET (LOCK_ESCALATION = TABLE)
GO
