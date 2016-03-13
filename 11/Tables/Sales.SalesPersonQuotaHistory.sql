SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Sales].[SalesPersonQuotaHistory]
Print 'Create Table [Sales].[SalesPersonQuotaHistory]'
GO
CREATE TABLE [Sales].[SalesPersonQuotaHistory] (
		[BusinessEntityID]     [int] NOT NULL,
		[QuotaDate]            [datetime] NOT NULL,
		[SalesQuota]           [money] NOT NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_SalesPersonQuotaHistory_BusinessEntityID_QuotaDate]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [QuotaDate])
)
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'CONSTRAINT', N'PK_SalesPersonQuotaHistory_BusinessEntityID_QuotaDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'INDEX', N'PK_SalesPersonQuotaHistory_BusinessEntityID_QuotaDate'
GO
-- Add Check Constraint CK_SalesPersonQuotaHistory_SalesQuota to [Sales].[SalesPersonQuotaHistory]
Print 'Add Check Constraint CK_SalesPersonQuotaHistory_SalesQuota to [Sales].[SalesPersonQuotaHistory]'
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory]
	ADD
	CONSTRAINT [CK_SalesPersonQuotaHistory_SalesQuota]
	CHECK
	([SalesQuota]>(0.00))
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SalesQuota] > (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'CONSTRAINT', N'CK_SalesPersonQuotaHistory_SalesQuota'
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory]
CHECK CONSTRAINT [CK_SalesPersonQuotaHistory_SalesQuota]
GO
-- Add Default Constraint DF_SalesPersonQuotaHistory_ModifiedDate to [Sales].[SalesPersonQuotaHistory]
Print 'Add Default Constraint DF_SalesPersonQuotaHistory_ModifiedDate to [Sales].[SalesPersonQuotaHistory]'
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory]
	ADD
	CONSTRAINT [DF_SalesPersonQuotaHistory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'CONSTRAINT', N'DF_SalesPersonQuotaHistory_ModifiedDate'
GO
-- Add Default Constraint DF_SalesPersonQuotaHistory_rowguid to [Sales].[SalesPersonQuotaHistory]
Print 'Add Default Constraint DF_SalesPersonQuotaHistory_rowguid to [Sales].[SalesPersonQuotaHistory]'
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory]
	ADD
	CONSTRAINT [DF_SalesPersonQuotaHistory_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'CONSTRAINT', N'DF_SalesPersonQuotaHistory_rowguid'
GO
-- Create Foreign Key FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID on [Sales].[SalesPersonQuotaHistory]
Print 'Create Foreign Key FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID on [Sales].[SalesPersonQuotaHistory]'
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Sales].[SalesPerson] ([BusinessEntityID])
ALTER TABLE [Sales].[SalesPersonQuotaHistory]
	CHECK CONSTRAINT [FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID]

GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesPerson.SalesPersonID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'CONSTRAINT', N'FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID'
GO
-- Create Index AK_SalesPersonQuotaHistory_rowguid on [Sales].[SalesPersonQuotaHistory]
Print 'Create Index AK_SalesPersonQuotaHistory_rowguid on [Sales].[SalesPersonQuotaHistory]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesPersonQuotaHistory_rowguid]
	ON [Sales].[SalesPersonQuotaHistory] ([rowguid])
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'INDEX', N'AK_SalesPersonQuotaHistory_rowguid'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales person identification number. Foreign key to SalesPerson.BusinessEntityID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'COLUMN', N'BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales quota date.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'COLUMN', N'QuotaDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales quota amount.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', 'COLUMN', N'SalesQuota'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]
Print 'Create Extended Property MS_Description on [Sales].[SalesPersonQuotaHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales performance tracking.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPersonQuotaHistory', NULL, NULL
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory] SET (LOCK_ESCALATION = TABLE)
GO
