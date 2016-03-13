SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Person].[BusinessEntityContact]
Print 'Create Table [Person].[BusinessEntityContact]'
GO
CREATE TABLE [Person].[BusinessEntityContact] (
		[BusinessEntityID]     [int] NOT NULL,
		[PersonID]             [int] NOT NULL,
		[ContactTypeID]        [int] NOT NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_BusinessEntityContact_BusinessEntityID_PersonID_ContactTypeID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [PersonID], [ContactTypeID])
)
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'CONSTRAINT', N'PK_BusinessEntityContact_BusinessEntityID_PersonID_ContactTypeID'
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'INDEX', N'PK_BusinessEntityContact_BusinessEntityID_PersonID_ContactTypeID'
GO
-- Add Default Constraint DF_BusinessEntityContact_ModifiedDate to [Person].[BusinessEntityContact]
Print 'Add Default Constraint DF_BusinessEntityContact_ModifiedDate to [Person].[BusinessEntityContact]'
GO
ALTER TABLE [Person].[BusinessEntityContact]
	ADD
	CONSTRAINT [DF_BusinessEntityContact_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'CONSTRAINT', N'DF_BusinessEntityContact_ModifiedDate'
GO
-- Add Default Constraint DF_BusinessEntityContact_rowguid to [Person].[BusinessEntityContact]
Print 'Add Default Constraint DF_BusinessEntityContact_rowguid to [Person].[BusinessEntityContact]'
GO
ALTER TABLE [Person].[BusinessEntityContact]
	ADD
	CONSTRAINT [DF_BusinessEntityContact_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'CONSTRAINT', N'DF_BusinessEntityContact_rowguid'
GO
-- Create Foreign Key FK_BusinessEntityContact_BusinessEntity_BusinessEntityID on [Person].[BusinessEntityContact]
Print 'Create Foreign Key FK_BusinessEntityContact_BusinessEntity_BusinessEntityID on [Person].[BusinessEntityContact]'
GO
ALTER TABLE [Person].[BusinessEntityContact]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityContact_BusinessEntity_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[BusinessEntity] ([BusinessEntityID])
ALTER TABLE [Person].[BusinessEntityContact]
	CHECK CONSTRAINT [FK_BusinessEntityContact_BusinessEntity_BusinessEntityID]

GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing BusinessEntity.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'CONSTRAINT', N'FK_BusinessEntityContact_BusinessEntity_BusinessEntityID'
GO
-- Create Foreign Key FK_BusinessEntityContact_ContactType_ContactTypeID on [Person].[BusinessEntityContact]
Print 'Create Foreign Key FK_BusinessEntityContact_ContactType_ContactTypeID on [Person].[BusinessEntityContact]'
GO
ALTER TABLE [Person].[BusinessEntityContact]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityContact_ContactType_ContactTypeID]
	FOREIGN KEY ([ContactTypeID]) REFERENCES [Person].[ContactType] ([ContactTypeID])
ALTER TABLE [Person].[BusinessEntityContact]
	CHECK CONSTRAINT [FK_BusinessEntityContact_ContactType_ContactTypeID]

GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing ContactType.ContactTypeID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'CONSTRAINT', N'FK_BusinessEntityContact_ContactType_ContactTypeID'
GO
-- Create Foreign Key FK_BusinessEntityContact_Person_PersonID on [Person].[BusinessEntityContact]
Print 'Create Foreign Key FK_BusinessEntityContact_Person_PersonID on [Person].[BusinessEntityContact]'
GO
ALTER TABLE [Person].[BusinessEntityContact]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityContact_Person_PersonID]
	FOREIGN KEY ([PersonID]) REFERENCES [Person].[Person] ([BusinessEntityID])
ALTER TABLE [Person].[BusinessEntityContact]
	CHECK CONSTRAINT [FK_BusinessEntityContact_Person_PersonID]

GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'CONSTRAINT', N'FK_BusinessEntityContact_Person_PersonID'
GO
-- Create Index AK_BusinessEntityContact_rowguid on [Person].[BusinessEntityContact]
Print 'Create Index AK_BusinessEntityContact_rowguid on [Person].[BusinessEntityContact]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_BusinessEntityContact_rowguid]
	ON [Person].[BusinessEntityContact] ([rowguid])
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'INDEX', N'AK_BusinessEntityContact_rowguid'
GO
-- Create Index IX_BusinessEntityContact_ContactTypeID on [Person].[BusinessEntityContact]
Print 'Create Index IX_BusinessEntityContact_ContactTypeID on [Person].[BusinessEntityContact]'
GO
CREATE NONCLUSTERED INDEX [IX_BusinessEntityContact_ContactTypeID]
	ON [Person].[BusinessEntityContact] ([ContactTypeID])
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'INDEX', N'IX_BusinessEntityContact_ContactTypeID'
GO
-- Create Index IX_BusinessEntityContact_PersonID on [Person].[BusinessEntityContact]
Print 'Create Index IX_BusinessEntityContact_PersonID on [Person].[BusinessEntityContact]'
GO
CREATE NONCLUSTERED INDEX [IX_BusinessEntityContact_PersonID]
	ON [Person].[BusinessEntityContact] ([PersonID])
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'INDEX', N'IX_BusinessEntityContact_PersonID'
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to BusinessEntity.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'COLUMN', N'BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.  Foreign key to ContactType.ContactTypeID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'COLUMN', N'ContactTypeID'
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to Person.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'COLUMN', N'PersonID'
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Person].[BusinessEntityContact]
Print 'Create Extended Property MS_Description on [Person].[BusinessEntityContact]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping stores, vendors, and employees to people', 'SCHEMA', N'Person', 'TABLE', N'BusinessEntityContact', NULL, NULL
GO
ALTER TABLE [Person].[BusinessEntityContact] SET (LOCK_ESCALATION = TABLE)
GO
