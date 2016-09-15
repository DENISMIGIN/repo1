SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [HumanResources].[Shift]
Print 'Create table [HumanResources].[Shift]'
GO
CREATE TABLE [HumanResources].[Shift] (
		[ShiftID]          [tinyint] IDENTITY(1, 1) NOT NULL,
		[Name]             [dbo].[Name] NOT NULL,
		[StartTime]        [time](7) NOT NULL,
		[EndTime]          [time](7) NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL,
		CONSTRAINT [PK_Shift_ShiftID]
		PRIMARY KEY
		CLUSTERED
		([ShiftID])
)
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'CONSTRAINT', N'PK_Shift_ShiftID'
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'INDEX', N'PK_Shift_ShiftID'
GO
-- Add default constraint DF_Shift_ModifiedDate to [HumanResources].[Shift]
Print 'Add default constraint DF_Shift_ModifiedDate to [HumanResources].[Shift]'
GO
ALTER TABLE [HumanResources].[Shift]
	ADD
	CONSTRAINT [DF_Shift_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'CONSTRAINT', N'DF_Shift_ModifiedDate'
GO
-- Create index AK_Shift_Name on [HumanResources].[Shift]
Print 'Create index AK_Shift_Name on [HumanResources].[Shift]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Shift_Name]
	ON [HumanResources].[Shift] ([Name])
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'INDEX', N'AK_Shift_Name'
GO
-- Create index AK_Shift_StartTime_EndTime on [HumanResources].[Shift]
Print 'Create index AK_Shift_StartTime_EndTime on [HumanResources].[Shift]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Shift_StartTime_EndTime]
	ON [HumanResources].[Shift] ([StartTime], [EndTime])
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'INDEX', N'AK_Shift_StartTime_EndTime'
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shift end time.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'COLUMN', N'EndTime'
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shift description.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'COLUMN', N'Name'
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Shift records.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'COLUMN', N'ShiftID'
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shift start time.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', 'COLUMN', N'StartTime'
GO
-- Create extended property MS_Description on [HumanResources].[Shift]
Print 'Create extended property MS_Description on [HumanResources].[Shift]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Work shift lookup table.', 'SCHEMA', N'HumanResources', 'TABLE', N'Shift', NULL, NULL
GO
ALTER TABLE [HumanResources].[Shift] SET (LOCK_ESCALATION = TABLE)
GO
