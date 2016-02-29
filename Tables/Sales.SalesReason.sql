SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Sales].[SalesReason]
Print 'Create Table [Sales].[SalesReason]'
GO
CREATE TABLE [Sales].[SalesReason] (
		[SalesReasonID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]              [dbo].[Name] NOT NULL,
		[ReasonType]        [dbo].[Name] NOT NULL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_SalesReason_SalesReasonID]
		PRIMARY KEY
		CLUSTERED
		([SalesReasonID])
)
GO
-- Create Extended Property MS_Description on [Sales].[SalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SalesReason', 'CONSTRAINT', N'PK_SalesReason_SalesReasonID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'SalesReason', 'INDEX', N'PK_SalesReason_SalesReasonID'
GO
-- Add Default Constraint DF_SalesReason_ModifiedDate to [Sales].[SalesReason]
Print 'Add Default Constraint DF_SalesReason_ModifiedDate to [Sales].[SalesReason]'
GO
ALTER TABLE [Sales].[SalesReason]
	ADD
	CONSTRAINT [DF_SalesReason_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Sales].[SalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SalesReason', 'CONSTRAINT', N'DF_SalesReason_ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SalesReason', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales reason description.', 'SCHEMA', N'Sales', 'TABLE', N'SalesReason', 'COLUMN', N'Name'
GO
-- Create Extended Property MS_Description on [Sales].[SalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category the sales reason belongs to.', 'SCHEMA', N'Sales', 'TABLE', N'SalesReason', 'COLUMN', N'ReasonType'
GO
-- Create Extended Property MS_Description on [Sales].[SalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for SalesReason records.', 'SCHEMA', N'Sales', 'TABLE', N'SalesReason', 'COLUMN', N'SalesReasonID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesReason]
Print 'Create Extended Property MS_Description on [Sales].[SalesReason]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lookup table of customer purchase reasons.', 'SCHEMA', N'Sales', 'TABLE', N'SalesReason', NULL, NULL
GO
ALTER TABLE [Sales].[SalesReason] SET (LOCK_ESCALATION = TABLE)
GO
