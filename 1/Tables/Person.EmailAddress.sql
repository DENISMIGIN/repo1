SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Person].[EmailAddress]
Print 'Create table [Person].[EmailAddress]'
GO
CREATE TABLE [Person].[EmailAddress] (
		[BusinessEntityID]     [int] NOT NULL,
		[EmailAddressID]       [int] IDENTITY(1, 1) NOT NULL,
		[EmailAddress]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_EmailAddress_BusinessEntityID_EmailAddressID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [EmailAddressID])
)
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'CONSTRAINT', N'PK_EmailAddress_BusinessEntityID_EmailAddressID'
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'INDEX', N'PK_EmailAddress_BusinessEntityID_EmailAddressID'
GO
-- Add default constraint DF_EmailAddress_ModifiedDate to [Person].[EmailAddress]
Print 'Add default constraint DF_EmailAddress_ModifiedDate to [Person].[EmailAddress]'
GO
ALTER TABLE [Person].[EmailAddress]
	ADD
	CONSTRAINT [DF_EmailAddress_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'CONSTRAINT', N'DF_EmailAddress_ModifiedDate'
GO
-- Add default constraint DF_EmailAddress_rowguid to [Person].[EmailAddress]
Print 'Add default constraint DF_EmailAddress_rowguid to [Person].[EmailAddress]'
GO
ALTER TABLE [Person].[EmailAddress]
	ADD
	CONSTRAINT [DF_EmailAddress_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'CONSTRAINT', N'DF_EmailAddress_rowguid'
GO
-- Create foreign key FK_EmailAddress_Person_BusinessEntityID on [Person].[EmailAddress]
Print 'Create foreign key FK_EmailAddress_Person_BusinessEntityID on [Person].[EmailAddress]'
GO
ALTER TABLE [Person].[EmailAddress]
	WITH CHECK
	ADD CONSTRAINT [FK_EmailAddress_Person_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID])
ALTER TABLE [Person].[EmailAddress]
	CHECK CONSTRAINT [FK_EmailAddress_Person_BusinessEntityID]

GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'CONSTRAINT', N'FK_EmailAddress_Person_BusinessEntityID'
GO
-- Create index IX_EmailAddress_EmailAddress on [Person].[EmailAddress]
Print 'Create index IX_EmailAddress_EmailAddress on [Person].[EmailAddress]'
GO
CREATE NONCLUSTERED INDEX [IX_EmailAddress_EmailAddress]
	ON [Person].[EmailAddress] ([EmailAddress])
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'INDEX', N'IX_EmailAddress_EmailAddress'
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Person associated with this email address.  Foreign key to Person.BusinessEntityID', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'COLUMN', N'BusinessEntityID'
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'E-mail address for the person.', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'COLUMN', N'EmailAddress'
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. ID of this email address.', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'COLUMN', N'EmailAddressID'
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Person].[EmailAddress]
Print 'Create extended property MS_Description on [Person].[EmailAddress]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Where to send a person email.', 'SCHEMA', N'Person', 'TABLE', N'EmailAddress', NULL, NULL
GO
ALTER TABLE [Person].[EmailAddress] SET (LOCK_ESCALATION = TABLE)
GO
