SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Person].[AddressType]
Print 'Create Table [Person].[AddressType]'
GO
CREATE TABLE [Person].[AddressType] (
		[AddressTypeID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]              [dbo].[Name] NOT NULL,
		[rowguid]           [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_AddressType_AddressTypeID]
		PRIMARY KEY
		CLUSTERED
		([AddressTypeID])
)
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'CONSTRAINT', N'PK_AddressType_AddressTypeID'
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'INDEX', N'PK_AddressType_AddressTypeID'
GO
-- Add Default Constraint DF_AddressType_ModifiedDate to [Person].[AddressType]
Print 'Add Default Constraint DF_AddressType_ModifiedDate to [Person].[AddressType]'
GO
ALTER TABLE [Person].[AddressType]
	ADD
	CONSTRAINT [DF_AddressType_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'CONSTRAINT', N'DF_AddressType_ModifiedDate'
GO
-- Add Default Constraint DF_AddressType_rowguid to [Person].[AddressType]
Print 'Add Default Constraint DF_AddressType_rowguid to [Person].[AddressType]'
GO
ALTER TABLE [Person].[AddressType]
	ADD
	CONSTRAINT [DF_AddressType_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'CONSTRAINT', N'DF_AddressType_rowguid'
GO
-- Create Index AK_AddressType_Name on [Person].[AddressType]
Print 'Create Index AK_AddressType_Name on [Person].[AddressType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_AddressType_Name]
	ON [Person].[AddressType] ([Name])
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'INDEX', N'AK_AddressType_Name'
GO
-- Create Index AK_AddressType_rowguid on [Person].[AddressType]
Print 'Create Index AK_AddressType_rowguid on [Person].[AddressType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_AddressType_rowguid]
	ON [Person].[AddressType] ([rowguid])
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'INDEX', N'AK_AddressType_rowguid'
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for AddressType records.', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'COLUMN', N'AddressTypeID'
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address type description. For example, Billing, Home, or Shipping.', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'COLUMN', N'Name'
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'AddressType', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Person].[AddressType]
Print 'Create Extended Property MS_Description on [Person].[AddressType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Types of addresses stored in the Address table. ', 'SCHEMA', N'Person', 'TABLE', N'AddressType', NULL, NULL
GO
ALTER TABLE [Person].[AddressType] SET (LOCK_ESCALATION = TABLE)
GO
