SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [HumanResources].[Employee]
Print 'Create Table [HumanResources].[Employee]'
GO
CREATE TABLE [HumanResources].[Employee] (
		[BusinessEntityID]      [int] NOT NULL,
		[NationalIDNumber]      [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LoginID]               [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[OrganizationNode]      [hierarchyid] NULL,
		[OrganizationLevel]     AS ([OrganizationNode].[GetLevel]()),
		[JobTitle]              [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BirthDate]             [date] NOT NULL,
		[MaritalStatus]         [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Gender]                [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[HireDate]              [date] NOT NULL,
		[SalariedFlag]          [dbo].[Flag] NOT NULL,
		[VacationHours]         [smallint] NOT NULL,
		[SickLeaveHours]        [smallint] NOT NULL,
		[CurrentFlag]           [dbo].[Flag] NOT NULL,
		[rowguid]               [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_Employee_BusinessEntityID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID])
)
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'PK_Employee_BusinessEntityID'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'PK_Employee_BusinessEntityID'
GO
-- Add Check Constraint CK_Employee_BirthDate to [HumanResources].[Employee]
Print 'Add Check Constraint CK_Employee_BirthDate to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [CK_Employee_BirthDate]
	CHECK
	([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(-18),getdate()))
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [BirthDate] >= ''1930-01-01'' AND [BirthDate] <= dateadd(year,(-18),GETDATE())', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_BirthDate'
GO
ALTER TABLE [HumanResources].[Employee]
CHECK CONSTRAINT [CK_Employee_BirthDate]
GO
-- Add Check Constraint CK_Employee_Gender to [HumanResources].[Employee]
Print 'Add Check Constraint CK_Employee_Gender to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [CK_Employee_Gender]
	CHECK
	(upper([Gender])='F' OR upper([Gender])='M')
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Gender]=''f'' OR [Gender]=''m'' OR [Gender]=''F'' OR [Gender]=''M''', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_Gender'
GO
ALTER TABLE [HumanResources].[Employee]
CHECK CONSTRAINT [CK_Employee_Gender]
GO
-- Add Check Constraint CK_Employee_HireDate to [HumanResources].[Employee]
Print 'Add Check Constraint CK_Employee_HireDate to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [CK_Employee_HireDate]
	CHECK
	([HireDate]>='1996-07-01' AND [HireDate]<=dateadd(day,(1),getdate()))
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [HireDate] >= ''1996-07-01'' AND [HireDate] <= dateadd(day,(1),GETDATE())', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_HireDate'
GO
ALTER TABLE [HumanResources].[Employee]
CHECK CONSTRAINT [CK_Employee_HireDate]
GO
-- Add Check Constraint CK_Employee_MaritalStatus to [HumanResources].[Employee]
Print 'Add Check Constraint CK_Employee_MaritalStatus to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [CK_Employee_MaritalStatus]
	CHECK
	(upper([MaritalStatus])='S' OR upper([MaritalStatus])='M')
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [MaritalStatus]=''s'' OR [MaritalStatus]=''m'' OR [MaritalStatus]=''S'' OR [MaritalStatus]=''M''', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_MaritalStatus'
GO
ALTER TABLE [HumanResources].[Employee]
CHECK CONSTRAINT [CK_Employee_MaritalStatus]
GO
-- Add Check Constraint CK_Employee_SickLeaveHours to [HumanResources].[Employee]
Print 'Add Check Constraint CK_Employee_SickLeaveHours to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [CK_Employee_SickLeaveHours]
	CHECK
	([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120))
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SickLeaveHours] >= (0) AND [SickLeaveHours] <= (120)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_SickLeaveHours'
GO
ALTER TABLE [HumanResources].[Employee]
CHECK CONSTRAINT [CK_Employee_SickLeaveHours]
GO
-- Add Check Constraint CK_Employee_VacationHours to [HumanResources].[Employee]
Print 'Add Check Constraint CK_Employee_VacationHours to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [CK_Employee_VacationHours]
	CHECK
	([VacationHours]>=(-40) AND [VacationHours]<=(240))
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [VacationHours] >= (-40) AND [VacationHours] <= (240)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'CK_Employee_VacationHours'
GO
ALTER TABLE [HumanResources].[Employee]
CHECK CONSTRAINT [CK_Employee_VacationHours]
GO
-- Add Default Constraint DF_Employee_CurrentFlag to [HumanResources].[Employee]
Print 'Add Default Constraint DF_Employee_CurrentFlag to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [DF_Employee_CurrentFlag]
	DEFAULT ((1)) FOR [CurrentFlag]
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_CurrentFlag'
GO
-- Add Default Constraint DF_Employee_ModifiedDate to [HumanResources].[Employee]
Print 'Add Default Constraint DF_Employee_ModifiedDate to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [DF_Employee_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_ModifiedDate'
GO
-- Add Default Constraint DF_Employee_rowguid to [HumanResources].[Employee]
Print 'Add Default Constraint DF_Employee_rowguid to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [DF_Employee_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_rowguid'
GO
-- Add Default Constraint DF_Employee_SalariedFlag to [HumanResources].[Employee]
Print 'Add Default Constraint DF_Employee_SalariedFlag to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [DF_Employee_SalariedFlag]
	DEFAULT ((1)) FOR [SalariedFlag]
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1 (TRUE)', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SalariedFlag'
GO
-- Add Default Constraint DF_Employee_SickLeaveHours to [HumanResources].[Employee]
Print 'Add Default Constraint DF_Employee_SickLeaveHours to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [DF_Employee_SickLeaveHours]
	DEFAULT ((0)) FOR [SickLeaveHours]
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_SickLeaveHours'
GO
-- Add Default Constraint DF_Employee_VacationHours to [HumanResources].[Employee]
Print 'Add Default Constraint DF_Employee_VacationHours to [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	ADD
	CONSTRAINT [DF_Employee_VacationHours]
	DEFAULT ((0)) FOR [VacationHours]
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'DF_Employee_VacationHours'
GO
-- Create Foreign Key FK_Employee_Person_BusinessEntityID on [HumanResources].[Employee]
Print 'Create Foreign Key FK_Employee_Person_BusinessEntityID on [HumanResources].[Employee]'
GO
ALTER TABLE [HumanResources].[Employee]
	WITH CHECK
	ADD CONSTRAINT [FK_Employee_Person_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID])
ALTER TABLE [HumanResources].[Employee]
	CHECK CONSTRAINT [FK_Employee_Person_BusinessEntityID]

GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'CONSTRAINT', N'FK_Employee_Person_BusinessEntityID'
GO
-- Create Index AK_Employee_LoginID on [HumanResources].[Employee]
Print 'Create Index AK_Employee_LoginID on [HumanResources].[Employee]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_LoginID]
	ON [HumanResources].[Employee] ([LoginID])
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_LoginID'
GO
-- Create Index AK_Employee_NationalIDNumber on [HumanResources].[Employee]
Print 'Create Index AK_Employee_NationalIDNumber on [HumanResources].[Employee]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_NationalIDNumber]
	ON [HumanResources].[Employee] ([NationalIDNumber])
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_NationalIDNumber'
GO
-- Create Index AK_Employee_rowguid on [HumanResources].[Employee]
Print 'Create Index AK_Employee_rowguid on [HumanResources].[Employee]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Employee_rowguid]
	ON [HumanResources].[Employee] ([rowguid])
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'AK_Employee_rowguid'
GO
-- Create Index IX_Employee_OrganizationLevel_OrganizationNode on [HumanResources].[Employee]
Print 'Create Index IX_Employee_OrganizationLevel_OrganizationNode on [HumanResources].[Employee]'
GO
CREATE NONCLUSTERED INDEX [IX_Employee_OrganizationLevel_OrganizationNode]
	ON [HumanResources].[Employee] ([OrganizationLevel], [OrganizationNode])
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationLevel_OrganizationNode'
GO
-- Create Index IX_Employee_OrganizationNode on [HumanResources].[Employee]
Print 'Create Index IX_Employee_OrganizationNode on [HumanResources].[Employee]'
GO
CREATE NONCLUSTERED INDEX [IX_Employee_OrganizationNode]
	ON [HumanResources].[Employee] ([OrganizationNode])
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'INDEX', N'IX_Employee_OrganizationNode'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date of birth.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BirthDate'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Employee records.  Foreign key to BusinessEntity.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'BusinessEntityID'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'0 = Inactive, 1 = Active', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'CurrentFlag'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'M = Male, F = Female', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'Gender'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee hired on this date.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'HireDate'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Work title such as Buyer or Sales Representative.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'JobTitle'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Network login.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'LoginID'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'M = Married, S = Single', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'MaritalStatus'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique national identification number such as a social security number.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'NationalIDNumber'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The depth of the employee in the corporate hierarchy.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationLevel'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Where the employee is located in corporate hierarchy.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'OrganizationNode'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Job classification. 0 = Hourly, not exempt from collective bargaining. 1 = Salaried, exempt from collective bargaining.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SalariedFlag'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of available sick leave hours.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'SickLeaveHours'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of available vacation hours.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', 'COLUMN', N'VacationHours'
GO
-- Create Extended Property MS_Description on [HumanResources].[Employee]
Print 'Create Extended Property MS_Description on [HumanResources].[Employee]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee information such as salary, department, and title.', 'SCHEMA', N'HumanResources', 'TABLE', N'Employee', NULL, NULL
GO
ALTER TABLE [HumanResources].[Employee] SET (LOCK_ESCALATION = TABLE)
GO
