SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[ScrapReason]
Print 'Create table [Production].[ScrapReason]'
GO
CREATE TABLE [Production].[ScrapReason] (
		[ScrapReasonID]     [smallint] IDENTITY(1, 1) NOT NULL,
		[Name]              [dbo].[Name] NOT NULL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_ScrapReason_ScrapReasonID]
		PRIMARY KEY
		CLUSTERED
		([ScrapReasonID])
)
GO
-- Create extended property MS_Description on [Production].[ScrapReason]
Print 'Create extended property MS_Description on [Production].[ScrapReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ScrapReason', 'CONSTRAINT', N'PK_ScrapReason_ScrapReasonID'
GO
-- Create extended property MS_Description on [Production].[ScrapReason]
Print 'Create extended property MS_Description on [Production].[ScrapReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ScrapReason', 'INDEX', N'PK_ScrapReason_ScrapReasonID'
GO
-- Add default constraint DF_ScrapReason_ModifiedDate to [Production].[ScrapReason]
Print 'Add default constraint DF_ScrapReason_ModifiedDate to [Production].[ScrapReason]'
GO
ALTER TABLE [Production].[ScrapReason]
	ADD
	CONSTRAINT [DF_ScrapReason_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[ScrapReason]
Print 'Create extended property MS_Description on [Production].[ScrapReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ScrapReason', 'CONSTRAINT', N'DF_ScrapReason_ModifiedDate'
GO
-- Create index AK_ScrapReason_Name on [Production].[ScrapReason]
Print 'Create index AK_ScrapReason_Name on [Production].[ScrapReason]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_ScrapReason_Name]
	ON [Production].[ScrapReason] ([Name])
GO
-- Create extended property MS_Description on [Production].[ScrapReason]
Print 'Create extended property MS_Description on [Production].[ScrapReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'ScrapReason', 'INDEX', N'AK_ScrapReason_Name'
GO
-- Create extended property MS_Description on [Production].[ScrapReason]
Print 'Create extended property MS_Description on [Production].[ScrapReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ScrapReason', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[ScrapReason]
Print 'Create extended property MS_Description on [Production].[ScrapReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Failure description.', 'SCHEMA', N'Production', 'TABLE', N'ScrapReason', 'COLUMN', N'Name'
GO
-- Create extended property MS_Description on [Production].[ScrapReason]
Print 'Create extended property MS_Description on [Production].[ScrapReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ScrapReason records.', 'SCHEMA', N'Production', 'TABLE', N'ScrapReason', 'COLUMN', N'ScrapReasonID'
GO
-- Create extended property MS_Description on [Production].[ScrapReason]
Print 'Create extended property MS_Description on [Production].[ScrapReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Manufacturing failure reasons lookup table.', 'SCHEMA', N'Production', 'TABLE', N'ScrapReason', NULL, NULL
GO
ALTER TABLE [Production].[ScrapReason] SET (LOCK_ESCALATION = TABLE)
GO
