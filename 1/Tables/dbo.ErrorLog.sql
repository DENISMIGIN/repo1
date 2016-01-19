SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [dbo].[ErrorLog]
Print 'Create Table [dbo].[ErrorLog]'
GO
CREATE TABLE [dbo].[ErrorLog] (
		[ErrorLogID]         [int] IDENTITY(1, 1) NOT NULL,
		[ErrorTime]          [datetime] NOT NULL,
		[UserName]           [sysname] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ErrorNumber]        [int] NOT NULL,
		[ErrorSeverity]      [int] NULL,
		[ErrorState]         [int] NULL,
		[ErrorProcedure]     [nvarchar](126) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ErrorLine]          [int] NULL,
		[ErrorMessage]       [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_ErrorLog_ErrorLogID]
		PRIMARY KEY
		CLUSTERED
		([ErrorLogID])
)
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'CONSTRAINT', N'PK_ErrorLog_ErrorLogID'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'INDEX', N'PK_ErrorLog_ErrorLogID'
GO
-- Add Default Constraint DF_ErrorLog_ErrorTime to [dbo].[ErrorLog]
Print 'Add Default Constraint DF_ErrorLog_ErrorTime to [dbo].[ErrorLog]'
GO
ALTER TABLE [dbo].[ErrorLog]
	ADD
	CONSTRAINT [DF_ErrorLog_ErrorTime]
	DEFAULT (getdate()) FOR [ErrorTime]
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'CONSTRAINT', N'DF_ErrorLog_ErrorTime'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The line number at which the error occurred.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'ErrorLine'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ErrorLog records.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'ErrorLogID'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The message text of the error that occurred.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'ErrorMessage'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The error number of the error that occurred.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'ErrorNumber'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the stored procedure or trigger where the error occurred.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'ErrorProcedure'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The severity of the error that occurred.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'ErrorSeverity'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The state number of the error that occurred.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'ErrorState'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date and time at which the error occurred.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'ErrorTime'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The user who executed the batch in which the error occurred.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', 'COLUMN', N'UserName'
GO
-- Create Extended Property MS_Description on [dbo].[ErrorLog]
Print 'Create Extended Property MS_Description on [dbo].[ErrorLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Audit table tracking errors in the the AdventureWorks database that are caught by the CATCH block of a TRY...CATCH construct. Data is inserted by stored procedure dbo.uspLogError when it is executed from inside the CATCH block of a TRY...CATCH construct.', 'SCHEMA', N'dbo', 'TABLE', N'ErrorLog', NULL, NULL
GO
ALTER TABLE [dbo].[ErrorLog] SET (LOCK_ESCALATION = TABLE)
GO
