SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Person].[PhoneNumberType]
Print 'Create table [Person].[PhoneNumberType]'
GO
CREATE TABLE [Person].[PhoneNumberType] (
		[PhoneNumberTypeID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]                  [dbo].[Name] NOT NULL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_PhoneNumberType_PhoneNumberTypeID]
		PRIMARY KEY
		CLUSTERED
		([PhoneNumberTypeID])
)
GO
-- Create extended property MS_Description on [Person].[PhoneNumberType]
Print 'Create extended property MS_Description on [Person].[PhoneNumberType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'PhoneNumberType', 'CONSTRAINT', N'PK_PhoneNumberType_PhoneNumberTypeID'
GO
-- Create extended property MS_Description on [Person].[PhoneNumberType]
Print 'Create extended property MS_Description on [Person].[PhoneNumberType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'PhoneNumberType', 'INDEX', N'PK_PhoneNumberType_PhoneNumberTypeID'
GO
-- Add default constraint DF_PhoneNumberType_ModifiedDate to [Person].[PhoneNumberType]
Print 'Add default constraint DF_PhoneNumberType_ModifiedDate to [Person].[PhoneNumberType]'
GO
ALTER TABLE [Person].[PhoneNumberType]
	ADD
	CONSTRAINT [DF_PhoneNumberType_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Person].[PhoneNumberType]
Print 'Create extended property MS_Description on [Person].[PhoneNumberType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'PhoneNumberType', 'CONSTRAINT', N'DF_PhoneNumberType_ModifiedDate'
GO
-- Create extended property MS_Description on [Person].[PhoneNumberType]
Print 'Create extended property MS_Description on [Person].[PhoneNumberType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'PhoneNumberType', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Person].[PhoneNumberType]
Print 'Create extended property MS_Description on [Person].[PhoneNumberType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the telephone number type', 'SCHEMA', N'Person', 'TABLE', N'PhoneNumberType', 'COLUMN', N'Name'
GO
-- Create extended property MS_Description on [Person].[PhoneNumberType]
Print 'Create extended property MS_Description on [Person].[PhoneNumberType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for telephone number type records.', 'SCHEMA', N'Person', 'TABLE', N'PhoneNumberType', 'COLUMN', N'PhoneNumberTypeID'
GO
-- Create extended property MS_Description on [Person].[PhoneNumberType]
Print 'Create extended property MS_Description on [Person].[PhoneNumberType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Type of phone number of a person.', 'SCHEMA', N'Person', 'TABLE', N'PhoneNumberType', NULL, NULL
GO
ALTER TABLE [Person].[PhoneNumberType] SET (LOCK_ESCALATION = TABLE)
GO
