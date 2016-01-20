SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Production].[Illustration]
Print 'Create Table [Production].[Illustration]'
GO
CREATE TABLE [Production].[Illustration] (
		[IllustrationID]     [int] IDENTITY(1, 1) NOT NULL,
		[Diagram]            [xml] NULL,
		[ModifiedDate]       [datetime] NOT NULL,
		CONSTRAINT [PK_Illustration_IllustrationID]
		PRIMARY KEY
		CLUSTERED
		([IllustrationID])
)
GO
-- Create Extended Property MS_Description on [Production].[Illustration]
Print 'Create Extended Property MS_Description on [Production].[Illustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'Illustration', 'CONSTRAINT', N'PK_Illustration_IllustrationID'
GO
-- Create Extended Property MS_Description on [Production].[Illustration]
Print 'Create Extended Property MS_Description on [Production].[Illustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'Illustration', 'INDEX', N'PK_Illustration_IllustrationID'
GO
-- Add Default Constraint DF_Illustration_ModifiedDate to [Production].[Illustration]
Print 'Add Default Constraint DF_Illustration_ModifiedDate to [Production].[Illustration]'
GO
ALTER TABLE [Production].[Illustration]
	ADD
	CONSTRAINT [DF_Illustration_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Production].[Illustration]
Print 'Create Extended Property MS_Description on [Production].[Illustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'Illustration', 'CONSTRAINT', N'DF_Illustration_ModifiedDate'
GO
-- Create Extended Property MS_Description on [Production].[Illustration]
Print 'Create Extended Property MS_Description on [Production].[Illustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Illustrations used in manufacturing instructions. Stored as XML.', 'SCHEMA', N'Production', 'TABLE', N'Illustration', 'COLUMN', N'Diagram'
GO
-- Create Extended Property MS_Description on [Production].[Illustration]
Print 'Create Extended Property MS_Description on [Production].[Illustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Illustration records.', 'SCHEMA', N'Production', 'TABLE', N'Illustration', 'COLUMN', N'IllustrationID'
GO
-- Create Extended Property MS_Description on [Production].[Illustration]
Print 'Create Extended Property MS_Description on [Production].[Illustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'Illustration', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Production].[Illustration]
Print 'Create Extended Property MS_Description on [Production].[Illustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bicycle assembly diagrams.', 'SCHEMA', N'Production', 'TABLE', N'Illustration', NULL, NULL
GO
ALTER TABLE [Production].[Illustration] SET (LOCK_ESCALATION = TABLE)
GO
