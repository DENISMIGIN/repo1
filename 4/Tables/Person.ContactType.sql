SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Person].[ContactType]
Print 'Create Table [Person].[ContactType]'
GO
CREATE TABLE [Person].[ContactType] (
		[ContactTypeID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]              [dbo].[Name] NOT NULL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_ContactType_ContactTypeID]
		PRIMARY KEY
		CLUSTERED
		([ContactTypeID])
)
GO
-- Create Extended Property MS_Description on [Person].[ContactType]
Print 'Create Extended Property MS_Description on [Person].[ContactType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'ContactType', 'CONSTRAINT', N'PK_ContactType_ContactTypeID'
GO
-- Create Extended Property MS_Description on [Person].[ContactType]
Print 'Create Extended Property MS_Description on [Person].[ContactType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'ContactType', 'INDEX', N'PK_ContactType_ContactTypeID'
GO
-- Add Default Constraint DF_ContactType_ModifiedDate to [Person].[ContactType]
Print 'Add Default Constraint DF_ContactType_ModifiedDate to [Person].[ContactType]'
GO
ALTER TABLE [Person].[ContactType]
	ADD
	CONSTRAINT [DF_ContactType_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Person].[ContactType]
Print 'Create Extended Property MS_Description on [Person].[ContactType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'ContactType', 'CONSTRAINT', N'DF_ContactType_ModifiedDate'
GO
-- Create Index AK_ContactType_Name on [Person].[ContactType]
Print 'Create Index AK_ContactType_Name on [Person].[ContactType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ContactType_Name]
	ON [Person].[ContactType] ([Name])
GO
-- Create Extended Property MS_Description on [Person].[ContactType]
Print 'Create Extended Property MS_Description on [Person].[ContactType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'ContactType', 'INDEX', N'AK_ContactType_Name'
GO
-- Create Extended Property MS_Description on [Person].[ContactType]
Print 'Create Extended Property MS_Description on [Person].[ContactType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ContactType records.', 'SCHEMA', N'Person', 'TABLE', N'ContactType', 'COLUMN', N'ContactTypeID'
GO
-- Create Extended Property MS_Description on [Person].[ContactType]
Print 'Create Extended Property MS_Description on [Person].[ContactType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'ContactType', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Person].[ContactType]
Print 'Create Extended Property MS_Description on [Person].[ContactType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contact type description.', 'SCHEMA', N'Person', 'TABLE', N'ContactType', 'COLUMN', N'Name'
GO
-- Create Extended Property MS_Description on [Person].[ContactType]
Print 'Create Extended Property MS_Description on [Person].[ContactType]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lookup table containing the types of business entity contacts.', 'SCHEMA', N'Person', 'TABLE', N'ContactType', NULL, NULL
GO
ALTER TABLE [Person].[ContactType] SET (LOCK_ESCALATION = TABLE)
GO
