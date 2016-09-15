SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Person].[BusinessEntityAddress]
Print 'Create table [Person].[BusinessEntityAddress]'
GO
CREATE TABLE [Person].[BusinessEntityAddress] (
		[BusinessEntityID]     [int] NOT NULL,
		[AddressID]            [int] NOT NULL,
		[AddressTypeID]        [int] NOT NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_BusinessEntityAddress_BusinessEntityID_AddressID_AddressTypeID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [AddressID], [AddressTypeID])
)
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'CONSTRAINT', N'PK_BusinessEntityAddress_BusinessEntityID_AddressID_AddressTypeID'
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'INDEX', N'PK_BusinessEntityAddress_BusinessEntityID_AddressID_AddressTypeID'
GO
-- Add default constraint DF_BusinessEntityAddress_ModifiedDate to [Person].[BusinessEntityAddress]
Print 'Add default constraint DF_BusinessEntityAddress_ModifiedDate to [Person].[BusinessEntityAddress]'
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	ADD
	CONSTRAINT [DF_BusinessEntityAddress_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'CONSTRAINT', N'DF_BusinessEntityAddress_ModifiedDate'
GO
-- Add default constraint DF_BusinessEntityAddress_rowguid to [Person].[BusinessEntityAddress]
Print 'Add default constraint DF_BusinessEntityAddress_rowguid to [Person].[BusinessEntityAddress]'
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	ADD
	CONSTRAINT [DF_BusinessEntityAddress_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'CONSTRAINT', N'DF_BusinessEntityAddress_rowguid'
GO
-- Create foreign key FK_BusinessEntityAddress_Address_AddressID on [Person].[BusinessEntityAddress]
Print 'Create foreign key FK_BusinessEntityAddress_Address_AddressID on [Person].[BusinessEntityAddress]'
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityAddress_Address_AddressID]
	FOREIGN KEY ([AddressID]) REFERENCES [Person].[Address] ([AddressID])
ALTER TABLE [Person].[BusinessEntityAddress]
	CHECK CONSTRAINT [FK_BusinessEntityAddress_Address_AddressID]

GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Address.AddressID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'CONSTRAINT', N'FK_BusinessEntityAddress_Address_AddressID'
GO
-- Create foreign key FK_BusinessEntityAddress_AddressType_AddressTypeID on [Person].[BusinessEntityAddress]
Print 'Create foreign key FK_BusinessEntityAddress_AddressType_AddressTypeID on [Person].[BusinessEntityAddress]'
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityAddress_AddressType_AddressTypeID]
	FOREIGN KEY ([AddressTypeID]) REFERENCES [Person].[AddressType] ([AddressTypeID])
ALTER TABLE [Person].[BusinessEntityAddress]
	CHECK CONSTRAINT [FK_BusinessEntityAddress_AddressType_AddressTypeID]

GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing AddressType.AddressTypeID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'CONSTRAINT', N'FK_BusinessEntityAddress_AddressType_AddressTypeID'
GO
-- Create foreign key FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID on [Person].[BusinessEntityAddress]
Print 'Create foreign key FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID on [Person].[BusinessEntityAddress]'
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[BusinessEntity] ([BusinessEntityID])
ALTER TABLE [Person].[BusinessEntityAddress]
	CHECK CONSTRAINT [FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID]

GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing BusinessEntity.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'CONSTRAINT', N'FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID'
GO
-- Create index AK_BusinessEntityAddress_rowguid on [Person].[BusinessEntityAddress]
Print 'Create index AK_BusinessEntityAddress_rowguid on [Person].[BusinessEntityAddress]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_BusinessEntityAddress_rowguid]
	ON [Person].[BusinessEntityAddress] ([rowguid])
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'INDEX', N'AK_BusinessEntityAddress_rowguid'
GO
-- Create index IX_BusinessEntityAddress_AddressID on [Person].[BusinessEntityAddress]
Print 'Create index IX_BusinessEntityAddress_AddressID on [Person].[BusinessEntityAddress]'
GO
CREATE NONCLUSTERED INDEX [IX_BusinessEntityAddress_AddressID]
	ON [Person].[BusinessEntityAddress] ([AddressID])
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'INDEX', N'IX_BusinessEntityAddress_AddressID'
GO
-- Create index IX_BusinessEntityAddress_AddressTypeID on [Person].[BusinessEntityAddress]
Print 'Create index IX_BusinessEntityAddress_AddressTypeID on [Person].[BusinessEntityAddress]'
GO
CREATE NONCLUSTERED INDEX [IX_BusinessEntityAddress_AddressTypeID]
	ON [Person].[BusinessEntityAddress] ([AddressTypeID])
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'INDEX', N'IX_BusinessEntityAddress_AddressTypeID'
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to Address.AddressID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'COLUMN', N'AddressID'
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to AddressType.AddressTypeID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'COLUMN', N'AddressTypeID'
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to BusinessEntity.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'COLUMN', N'BusinessEntityID'
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Person].[BusinessEntityAddress]
Print 'Create extended property MS_Description on [Person].[BusinessEntityAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping customers, vendors, and employees to their addresses.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityAddress', NULL, NULL
GO
ALTER TABLE [Person].[BusinessEntityAddress] SET (LOCK_ESCALATION = TABLE)
GO
