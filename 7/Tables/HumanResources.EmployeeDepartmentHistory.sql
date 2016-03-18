SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Table [HumanResources].[EmployeeDepartmentHistory]'
GO
CREATE TABLE [HumanResources].[EmployeeDepartmentHistory] (
		[BusinessEntityID]     [int] NOT NULL,
		[DepartmentID]         [smallint] NOT NULL,
		[ShiftID]              [tinyint] NOT NULL,
		[StartDate]            [date] NOT NULL,
		[EndDate]              [date] NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_EmployeeDepartmentHistory_BusinessEntityID_StartDate_DepartmentID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [StartDate], [DepartmentID], [ShiftID])
)
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'PK_EmployeeDepartmentHistory_BusinessEntityID_StartDate_DepartmentID'
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'INDEX', N'PK_EmployeeDepartmentHistory_BusinessEntityID_StartDate_DepartmentID'
GO
-- Add Check Constraint CK_EmployeeDepartmentHistory_EndDate to [HumanResources].[EmployeeDepartmentHistory]
Print 'Add Check Constraint CK_EmployeeDepartmentHistory_EndDate to [HumanResources].[EmployeeDepartmentHistory]'
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
	ADD
	CONSTRAINT [CK_EmployeeDepartmentHistory_EndDate]
	CHECK
	([EndDate]>=[StartDate] OR [EndDate] IS NULL)
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NUL', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'CK_EmployeeDepartmentHistory_EndDate'
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
CHECK CONSTRAINT [CK_EmployeeDepartmentHistory_EndDate]
GO
-- Add Default Constraint DF_EmployeeDepartmentHistory_ModifiedDate to [HumanResources].[EmployeeDepartmentHistory]
Print 'Add Default Constraint DF_EmployeeDepartmentHistory_ModifiedDate to [HumanResources].[EmployeeDepartmentHistory]'
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
	ADD
	CONSTRAINT [DF_EmployeeDepartmentHistory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'DF_EmployeeDepartmentHistory_ModifiedDate'
GO
-- Create Foreign Key FK_EmployeeDepartmentHistory_Department_DepartmentID on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Foreign Key FK_EmployeeDepartmentHistory_Department_DepartmentID on [HumanResources].[EmployeeDepartmentHistory]'
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Department_DepartmentID]
	FOREIGN KEY ([DepartmentID]) REFERENCES [HumanResources].[Department] ([DepartmentID])
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
	CHECK CONSTRAINT [FK_EmployeeDepartmentHistory_Department_DepartmentID]

GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Department.DepartmentID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'FK_EmployeeDepartmentHistory_Department_DepartmentID'
GO
-- Create Foreign Key FK_EmployeeDepartmentHistory_Employee_BusinessEntityID on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Foreign Key FK_EmployeeDepartmentHistory_Employee_BusinessEntityID on [HumanResources].[EmployeeDepartmentHistory]'
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
	CHECK CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID]

GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Employee.EmployeeID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'FK_EmployeeDepartmentHistory_Employee_BusinessEntityID'
GO
-- Create Foreign Key FK_EmployeeDepartmentHistory_Shift_ShiftID on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Foreign Key FK_EmployeeDepartmentHistory_Shift_ShiftID on [HumanResources].[EmployeeDepartmentHistory]'
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Shift_ShiftID]
	FOREIGN KEY ([ShiftID]) REFERENCES [HumanResources].[Shift] ([ShiftID])
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory]
	CHECK CONSTRAINT [FK_EmployeeDepartmentHistory_Shift_ShiftID]

GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Shift.ShiftID', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'CONSTRAINT', N'FK_EmployeeDepartmentHistory_Shift_ShiftID'
GO
-- Create Index IX_EmployeeDepartmentHistory_DepartmentID on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Index IX_EmployeeDepartmentHistory_DepartmentID on [HumanResources].[EmployeeDepartmentHistory]'
GO
CREATE NONCLUSTERED INDEX [IX_EmployeeDepartmentHistory_DepartmentID]
	ON [HumanResources].[EmployeeDepartmentHistory] ([DepartmentID])
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'INDEX', N'IX_EmployeeDepartmentHistory_DepartmentID'
GO
-- Create Index IX_EmployeeDepartmentHistory_ShiftID on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Index IX_EmployeeDepartmentHistory_ShiftID on [HumanResources].[EmployeeDepartmentHistory]'
GO
CREATE NONCLUSTERED INDEX [IX_EmployeeDepartmentHistory_ShiftID]
	ON [HumanResources].[EmployeeDepartmentHistory] ([ShiftID])
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'INDEX', N'IX_EmployeeDepartmentHistory_ShiftID'
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee identification number. Foreign key to Employee.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'BusinessEntityID'
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Department in which the employee worked including currently. Foreign key to Department.DepartmentID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'DepartmentID'
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the employee left the department. NULL = Current department.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'EndDate'
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifies which 8-hour shift the employee works. Foreign key to Shift.Shift.ID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'ShiftID'
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the employee started work in the department.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', 'COLUMN', N'StartDate'
GO
-- Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]
Print 'Create Extended Property MS_Description on [HumanResources].[EmployeeDepartmentHistory]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee department transfers.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeeDepartmentHistory', NULL, NULL
GO
ALTER TABLE [HumanResources].[EmployeeDepartmentHistory] SET (LOCK_ESCALATION = TABLE)
GO
