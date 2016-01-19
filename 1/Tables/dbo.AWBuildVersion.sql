SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [dbo].[AWBuildVersion]
Print 'Create Table [dbo].[AWBuildVersion]'
GO
CREATE TABLE [dbo].[AWBuildVersion] (
		[SystemInformationID]     [tinyint] IDENTITY(1, 1) NOT NULL,
		[Database Version]        [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[VersionDate]             [datetime] NOT NULL,
		[ModifiedDate]            [datetime] NOT NULL,
		CONSTRAINT [PK_AWBuildVersion_SystemInformationID]
		PRIMARY KEY
		CLUSTERED
		([SystemInformationID])
)
GO
-- Create Extended Property MS_Description on [dbo].[AWBuildVersion]
Print 'Create Extended Property MS_Description on [dbo].[AWBuildVersion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'dbo', 'TABLE', N'AWBuildVersion', 'CONSTRAINT', N'PK_AWBuildVersion_SystemInformationID'
GO
-- Create Extended Property MS_Description on [dbo].[AWBuildVersion]
Print 'Create Extended Property MS_Description on [dbo].[AWBuildVersion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'dbo', 'TABLE', N'AWBuildVersion', 'INDEX', N'PK_AWBuildVersion_SystemInformationID'
GO
-- Add Default Constraint DF_AWBuildVersion_ModifiedDate to [dbo].[AWBuildVersion]
Print 'Add Default Constraint DF_AWBuildVersion_ModifiedDate to [dbo].[AWBuildVersion]'
GO
ALTER TABLE [dbo].[AWBuildVersion]
	ADD
	CONSTRAINT [DF_AWBuildVersion_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [dbo].[AWBuildVersion]
Print 'Create Extended Property MS_Description on [dbo].[AWBuildVersion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'dbo', 'TABLE', N'AWBuildVersion', 'CONSTRAINT', N'DF_AWBuildVersion_ModifiedDate'
GO
-- Create Extended Property MS_Description on [dbo].[AWBuildVersion]
Print 'Create Extended Property MS_Description on [dbo].[AWBuildVersion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Version number of the database in 9.yy.mm.dd.00 format.', 'SCHEMA', N'dbo', 'TABLE', N'AWBuildVersion', 'COLUMN', N'Database Version'
GO
-- Create Extended Property MS_Description on [dbo].[AWBuildVersion]
Print 'Create Extended Property MS_Description on [dbo].[AWBuildVersion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'dbo', 'TABLE', N'AWBuildVersion', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [dbo].[AWBuildVersion]
Print 'Create Extended Property MS_Description on [dbo].[AWBuildVersion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for AWBuildVersion records.', 'SCHEMA', N'dbo', 'TABLE', N'AWBuildVersion', 'COLUMN', N'SystemInformationID'
GO
-- Create Extended Property MS_Description on [dbo].[AWBuildVersion]
Print 'Create Extended Property MS_Description on [dbo].[AWBuildVersion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'dbo', 'TABLE', N'AWBuildVersion', 'COLUMN', N'VersionDate'
GO
-- Create Extended Property MS_Description on [dbo].[AWBuildVersion]
Print 'Create Extended Property MS_Description on [dbo].[AWBuildVersion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current version number of the AdventureWorks 2014 sample database. ', 'SCHEMA', N'dbo', 'TABLE', N'AWBuildVersion', NULL, NULL
GO
ALTER TABLE [dbo].[AWBuildVersion] SET (LOCK_ESCALATION = TABLE)
GO
