SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Person].[PersonPhone]
Print 'Create table [Person].[PersonPhone]'
GO
CREATE TABLE [Person].[PersonPhone] (
		[BusinessEntityID]      [int] NOT NULL,
		[PhoneNumber]           [dbo].[Phone] NOT NULL,
		[PhoneNumberTypeID]     [int] NOT NULL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_PersonPhone_BusinessEntityID_PhoneNumber_PhoneNumberTypeID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [PhoneNumber], [PhoneNumberTypeID])
)
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'CONSTRAINT', N'PK_PersonPhone_BusinessEntityID_PhoneNumber_PhoneNumberTypeID'
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'INDEX', N'PK_PersonPhone_BusinessEntityID_PhoneNumber_PhoneNumberTypeID'
GO
-- Add default constraint DF_PersonPhone_ModifiedDate to [Person].[PersonPhone]
Print 'Add default constraint DF_PersonPhone_ModifiedDate to [Person].[PersonPhone]'
GO
ALTER TABLE [Person].[PersonPhone]
	ADD
	CONSTRAINT [DF_PersonPhone_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'CONSTRAINT', N'DF_PersonPhone_ModifiedDate'
GO
-- Create foreign key FK_PersonPhone_Person_BusinessEntityID on [Person].[PersonPhone]
Print 'Create foreign key FK_PersonPhone_Person_BusinessEntityID on [Person].[PersonPhone]'
GO
ALTER TABLE [Person].[PersonPhone]
	WITH CHECK
	ADD CONSTRAINT [FK_PersonPhone_Person_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID])
ALTER TABLE [Person].[PersonPhone]
	CHECK CONSTRAINT [FK_PersonPhone_Person_BusinessEntityID]

GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'CONSTRAINT', N'FK_PersonPhone_Person_BusinessEntityID'
GO
-- Create foreign key FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID on [Person].[PersonPhone]
Print 'Create foreign key FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID on [Person].[PersonPhone]'
GO
ALTER TABLE [Person].[PersonPhone]
	WITH CHECK
	ADD CONSTRAINT [FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID]
	FOREIGN KEY ([PhoneNumberTypeID]) REFERENCES [Person].[PhoneNumberType] ([PhoneNumberTypeID])
ALTER TABLE [Person].[PersonPhone]
	CHECK CONSTRAINT [FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID]

GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing PhoneNumberType.PhoneNumberTypeID.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'CONSTRAINT', N'FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID'
GO
-- Create index IX_PersonPhone_PhoneNumber on [Person].[PersonPhone]
Print 'Create index IX_PersonPhone_PhoneNumber on [Person].[PersonPhone]'
GO
CREATE NONCLUSTERED INDEX [IX_PersonPhone_PhoneNumber]
	ON [Person].[PersonPhone] ([PhoneNumber])
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'INDEX', N'IX_PersonPhone_PhoneNumber'
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Business entity identification number. Foreign key to Person.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'COLUMN', N'BusinessEntityID'
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Telephone number identification number.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'COLUMN', N'PhoneNumber'
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Kind of phone number. Foreign key to PhoneNumberType.PhoneNumberTypeID.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', 'COLUMN', N'PhoneNumberTypeID'
GO
-- Create extended property MS_Description on [Person].[PersonPhone]
Print 'Create extended property MS_Description on [Person].[PersonPhone]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Telephone number and type of a person.', 'SCHEMA', N'Person', 'TABLE', N'PersonPhone', NULL, NULL
GO
ALTER TABLE [Person].[PersonPhone] SET (LOCK_ESCALATION = TABLE)
GO
