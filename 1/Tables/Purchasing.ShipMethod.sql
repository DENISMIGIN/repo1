SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Purchasing].[ShipMethod]
Print 'Create table [Purchasing].[ShipMethod]'
GO
CREATE TABLE [Purchasing].[ShipMethod] (
		[ShipMethodID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]             [dbo].[Name] NOT NULL,
		[ShipBase]         [money] NOT NULL,
		[ShipRate]         [money] NOT NULL,
		[rowguid]          [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]     [datetime] NOT NULL,
		CONSTRAINT [PK_ShipMethod_ShipMethodID]
		PRIMARY KEY
		CLUSTERED
		([ShipMethodID])
)
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'CONSTRAINT', N'PK_ShipMethod_ShipMethodID'
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'INDEX', N'PK_ShipMethod_ShipMethodID'
GO
-- Add check constraint CK_ShipMethod_ShipBase to [Purchasing].[ShipMethod]
Print 'Add check constraint CK_ShipMethod_ShipBase to [Purchasing].[ShipMethod]'
GO
ALTER TABLE [Purchasing].[ShipMethod]
	ADD
	CONSTRAINT [CK_ShipMethod_ShipBase]
	CHECK
	([ShipBase]>(0.00))
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [ShipBase] > (0.00)', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'CONSTRAINT', N'CK_ShipMethod_ShipBase'
GO
ALTER TABLE [Purchasing].[ShipMethod]
CHECK CONSTRAINT [CK_ShipMethod_ShipBase]
GO
-- Add check constraint CK_ShipMethod_ShipRate to [Purchasing].[ShipMethod]
Print 'Add check constraint CK_ShipMethod_ShipRate to [Purchasing].[ShipMethod]'
GO
ALTER TABLE [Purchasing].[ShipMethod]
	ADD
	CONSTRAINT [CK_ShipMethod_ShipRate]
	CHECK
	([ShipRate]>(0.00))
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [ShipRate] > (0.00)', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'CONSTRAINT', N'CK_ShipMethod_ShipRate'
GO
ALTER TABLE [Purchasing].[ShipMethod]
CHECK CONSTRAINT [CK_ShipMethod_ShipRate]
GO
-- Add default constraint DF_ShipMethod_ModifiedDate to [Purchasing].[ShipMethod]
Print 'Add default constraint DF_ShipMethod_ModifiedDate to [Purchasing].[ShipMethod]'
GO
ALTER TABLE [Purchasing].[ShipMethod]
	ADD
	CONSTRAINT [DF_ShipMethod_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'CONSTRAINT', N'DF_ShipMethod_ModifiedDate'
GO
-- Add default constraint DF_ShipMethod_rowguid to [Purchasing].[ShipMethod]
Print 'Add default constraint DF_ShipMethod_rowguid to [Purchasing].[ShipMethod]'
GO
ALTER TABLE [Purchasing].[ShipMethod]
	ADD
	CONSTRAINT [DF_ShipMethod_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'CONSTRAINT', N'DF_ShipMethod_rowguid'
GO
-- Add default constraint DF_ShipMethod_ShipBase to [Purchasing].[ShipMethod]
Print 'Add default constraint DF_ShipMethod_ShipBase to [Purchasing].[ShipMethod]'
GO
ALTER TABLE [Purchasing].[ShipMethod]
	ADD
	CONSTRAINT [DF_ShipMethod_ShipBase]
	DEFAULT ((0.00)) FOR [ShipBase]
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'CONSTRAINT', N'DF_ShipMethod_ShipBase'
GO
-- Add default constraint DF_ShipMethod_ShipRate to [Purchasing].[ShipMethod]
Print 'Add default constraint DF_ShipMethod_ShipRate to [Purchasing].[ShipMethod]'
GO
ALTER TABLE [Purchasing].[ShipMethod]
	ADD
	CONSTRAINT [DF_ShipMethod_ShipRate]
	DEFAULT ((0.00)) FOR [ShipRate]
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'CONSTRAINT', N'DF_ShipMethod_ShipRate'
GO
-- Create index AK_ShipMethod_Name on [Purchasing].[ShipMethod]
Print 'Create index AK_ShipMethod_Name on [Purchasing].[ShipMethod]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ShipMethod_Name]
	ON [Purchasing].[ShipMethod] ([Name])
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'INDEX', N'AK_ShipMethod_Name'
GO
-- Create index AK_ShipMethod_rowguid on [Purchasing].[ShipMethod]
Print 'Create index AK_ShipMethod_rowguid on [Purchasing].[ShipMethod]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ShipMethod_rowguid]
	ON [Purchasing].[ShipMethod] ([rowguid])
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'INDEX', N'AK_ShipMethod_rowguid'
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shipping company name.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'COLUMN', N'Name'
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Minimum shipping charge.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'COLUMN', N'ShipBase'
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ShipMethod records.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'COLUMN', N'ShipMethodID'
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shipping charge per pound.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', 'COLUMN', N'ShipRate'
GO
-- Create extended property MS_Description on [Purchasing].[ShipMethod]
Print 'Create extended property MS_Description on [Purchasing].[ShipMethod]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shipping company lookup table.', 'SCHEMA', N'Purchasing', 'TABLE', N'ShipMethod', NULL, NULL
GO
ALTER TABLE [Purchasing].[ShipMethod] SET (LOCK_ESCALATION = TABLE)
GO
