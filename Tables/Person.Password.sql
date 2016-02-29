SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Person].[Password]
Print 'Create Table [Person].[Password]'
GO
CREATE TABLE [Person].[Password] (
		[BusinessEntityID]     [int] NOT NULL,
		[PasswordHash]         [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PasswordSalt]         [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_Password_BusinessEntityID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID])
)
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'Password', 'CONSTRAINT', N'PK_Password_BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'Password', 'INDEX', N'PK_Password_BusinessEntityID'
GO
-- Add Default Constraint DF_Password_ModifiedDate to [Person].[Password]
Print 'Add Default Constraint DF_Password_ModifiedDate to [Person].[Password]'
GO
ALTER TABLE [Person].[Password]
	ADD
	CONSTRAINT [DF_Password_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'Password', 'CONSTRAINT', N'DF_Password_ModifiedDate'
GO
-- Add Default Constraint DF_Password_rowguid to [Person].[Password]
Print 'Add Default Constraint DF_Password_rowguid to [Person].[Password]'
GO
ALTER TABLE [Person].[Password]
	ADD
	CONSTRAINT [DF_Password_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'Password', 'CONSTRAINT', N'DF_Password_rowguid'
GO
-- Create Foreign Key FK_Password_Person_BusinessEntityID on [Person].[Password]
Print 'Create Foreign Key FK_Password_Person_BusinessEntityID on [Person].[Password]'
GO
ALTER TABLE [Person].[Password]
	WITH CHECK
	ADD CONSTRAINT [FK_Password_Person_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID])
ALTER TABLE [Person].[Password]
	CHECK CONSTRAINT [FK_Password_Person_BusinessEntityID]

GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'Password', 'CONSTRAINT', N'FK_Password_Person_BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'Password', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Password for the e-mail account.', 'SCHEMA', N'Person', 'TABLE', N'Password', 'COLUMN', N'PasswordHash'
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Random value concatenated with the password string before the password is hashed.', 'SCHEMA', N'Person', 'TABLE', N'Password', 'COLUMN', N'PasswordSalt'
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'Password', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Person].[Password]
Print 'Create Extended Property MS_Description on [Person].[Password]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'One way hashed authentication information', 'SCHEMA', N'Person', 'TABLE', N'Password', NULL, NULL
GO
ALTER TABLE [Person].[Password] SET (LOCK_ESCALATION = TABLE)
GO
