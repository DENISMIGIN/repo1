SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Table [Sales].[SalesOrderHeaderSalesReason]'
GO
CREATE TABLE [Sales].[SalesOrderHeaderSalesReason] (
		[SalesOrderID]      [int] NOT NULL,
		[SalesReasonID]     [int] NOT NULL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_SalesOrderHeaderSalesReason_SalesOrderID_SalesReasonID]
		PRIMARY KEY
		CLUSTERED
		([SalesOrderID], [SalesReasonID])
)
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', 'CONSTRAINT', N'PK_SalesOrderHeaderSalesReason_SalesOrderID_SalesReasonID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', 'INDEX', N'PK_SalesOrderHeaderSalesReason_SalesOrderID_SalesReasonID'
GO
-- Add Default Constraint DF_SalesOrderHeaderSalesReason_ModifiedDate to [Sales].[SalesOrderHeaderSalesReason]
Print 'Add Default Constraint DF_SalesOrderHeaderSalesReason_ModifiedDate to [Sales].[SalesOrderHeaderSalesReason]'
GO
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason]
	ADD
	CONSTRAINT [DF_SalesOrderHeaderSalesReason_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', 'CONSTRAINT', N'DF_SalesOrderHeaderSalesReason_ModifiedDate'
GO
-- Create Foreign Key FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Foreign Key FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID on [Sales].[SalesOrderHeaderSalesReason]'
GO
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID]
	FOREIGN KEY ([SalesOrderID]) REFERENCES [Sales].[SalesOrderHeader] ([SalesOrderID])
	ON DELETE CASCADE
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason]
	CHECK CONSTRAINT [FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID]

GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesOrderHeader.SalesOrderID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', 'CONSTRAINT', N'FK_SalesOrderHeaderSalesReason_SalesOrderHeader_SalesOrderID'
GO
-- Create Foreign Key FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Foreign Key FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID on [Sales].[SalesOrderHeaderSalesReason]'
GO
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID]
	FOREIGN KEY ([SalesReasonID]) REFERENCES [Sales].[SalesReason] ([SalesReasonID])
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason]
	CHECK CONSTRAINT [FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID]

GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesReason.SalesReasonID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', 'CONSTRAINT', N'FK_SalesOrderHeaderSalesReason_SalesReason_SalesReasonID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to SalesOrderHeader.SalesOrderID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', 'COLUMN', N'SalesOrderID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to SalesReason.SalesReasonID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', 'COLUMN', N'SalesReasonID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesOrderHeaderSalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping sales orders to sales reason codes.', 'SCHEMA', N'Sales', 'TABLE', N'SalesOrderHeaderSalesReason', NULL, NULL
GO
ALTER TABLE [Sales].[SalesOrderHeaderSalesReason] SET (LOCK_ESCALATION = TABLE)
GO
