SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Sales].[SalesPerson]
Print 'Create Table [Sales].[SalesPerson]'
GO
CREATE TABLE [Sales].[SalesPerson] (
		[BusinessEntityID]     [int] NOT NULL,
		[TerritoryID]          [int] NULL,
		[SalesQuota]           [money] NULL,
		[Bonus]                [money] NOT NULL,
		[CommissionPct]        [smallmoney] NOT NULL,
		[SalesYTD]             [money] NOT NULL,
		[SalesLastYear]        [money] NOT NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_SalesPerson_BusinessEntityID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID])
)
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'PK_SalesPerson_BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'INDEX', N'PK_SalesPerson_BusinessEntityID'
GO
-- Add Check Constraint CK_SalesPerson_Bonus to [Sales].[SalesPerson]
Print 'Add Check Constraint CK_SalesPerson_Bonus to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_Bonus]
	CHECK
	([Bonus]>=(0.00))
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Bonus] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'CK_SalesPerson_Bonus'
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_Bonus]
GO
-- Add Check Constraint CK_SalesPerson_CommissionPct to [Sales].[SalesPerson]
Print 'Add Check Constraint CK_SalesPerson_CommissionPct to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_CommissionPct]
	CHECK
	([CommissionPct]>=(0.00))
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [CommissionPct] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'CK_SalesPerson_CommissionPct'
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_CommissionPct]
GO
-- Add Check Constraint CK_SalesPerson_SalesLastYear to [Sales].[SalesPerson]
Print 'Add Check Constraint CK_SalesPerson_SalesLastYear to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_SalesLastYear]
	CHECK
	([SalesLastYear]>=(0.00))
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SalesLastYear] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'CK_SalesPerson_SalesLastYear'
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_SalesLastYear]
GO
-- Add Check Constraint CK_SalesPerson_SalesQuota to [Sales].[SalesPerson]
Print 'Add Check Constraint CK_SalesPerson_SalesQuota to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_SalesQuota]
	CHECK
	([SalesQuota]>(0.00))
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SalesQuota] > (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'CK_SalesPerson_SalesQuota'
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_SalesQuota]
GO
-- Add Check Constraint CK_SalesPerson_SalesYTD to [Sales].[SalesPerson]
Print 'Add Check Constraint CK_SalesPerson_SalesYTD to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_SalesYTD]
	CHECK
	([SalesYTD]>=(0.00))
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [SalesYTD] >= (0.00)', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'CK_SalesPerson_SalesYTD'
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_SalesYTD]
GO
-- Add Default Constraint DF_SalesPerson_Bonus to [Sales].[SalesPerson]
Print 'Add Default Constraint DF_SalesPerson_Bonus to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_Bonus]
	DEFAULT ((0.00)) FOR [Bonus]
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'DF_SalesPerson_Bonus'
GO
-- Add Default Constraint DF_SalesPerson_CommissionPct to [Sales].[SalesPerson]
Print 'Add Default Constraint DF_SalesPerson_CommissionPct to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_CommissionPct]
	DEFAULT ((0.00)) FOR [CommissionPct]
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'DF_SalesPerson_CommissionPct'
GO
-- Add Default Constraint DF_SalesPerson_ModifiedDate to [Sales].[SalesPerson]
Print 'Add Default Constraint DF_SalesPerson_ModifiedDate to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'DF_SalesPerson_ModifiedDate'
GO
-- Add Default Constraint DF_SalesPerson_rowguid to [Sales].[SalesPerson]
Print 'Add Default Constraint DF_SalesPerson_rowguid to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'DF_SalesPerson_rowguid'
GO
-- Add Default Constraint DF_SalesPerson_SalesLastYear to [Sales].[SalesPerson]
Print 'Add Default Constraint DF_SalesPerson_SalesLastYear to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_SalesLastYear]
	DEFAULT ((0.00)) FOR [SalesLastYear]
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'DF_SalesPerson_SalesLastYear'
GO
-- Add Default Constraint DF_SalesPerson_SalesYTD to [Sales].[SalesPerson]
Print 'Add Default Constraint DF_SalesPerson_SalesYTD to [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_SalesYTD]
	DEFAULT ((0.00)) FOR [SalesYTD]
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'DF_SalesPerson_SalesYTD'
GO
-- Create Foreign Key FK_SalesPerson_Employee_BusinessEntityID on [Sales].[SalesPerson]
Print 'Create Foreign Key FK_SalesPerson_Employee_BusinessEntityID on [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [Sales].[SalesPerson]
	CHECK CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]

GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Employee.EmployeeID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'FK_SalesPerson_Employee_BusinessEntityID'
GO
-- Create Foreign Key FK_SalesPerson_SalesTerritory_TerritoryID on [Sales].[SalesPerson]
Print 'Create Foreign Key FK_SalesPerson_SalesTerritory_TerritoryID on [Sales].[SalesPerson]'
GO
ALTER TABLE [Sales].[SalesPerson]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID]
	FOREIGN KEY ([TerritoryID]) REFERENCES [Sales].[SalesTerritory] ([TerritoryID])
ALTER TABLE [Sales].[SalesPerson]
	CHECK CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID]

GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing SalesTerritory.TerritoryID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'CONSTRAINT', N'FK_SalesPerson_SalesTerritory_TerritoryID'
GO
-- Create Index AK_SalesPerson_rowguid on [Sales].[SalesPerson]
Print 'Create Index AK_SalesPerson_rowguid on [Sales].[SalesPerson]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesPerson_rowguid]
	ON [Sales].[SalesPerson] ([rowguid])
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'INDEX', N'AK_SalesPerson_rowguid'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Bonus due if quota is met.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'Bonus'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for SalesPerson records. Foreign key to Employee.BusinessEntityID', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Commision percent received per sale.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'CommissionPct'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales total of previous year.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'SalesLastYear'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Projected yearly sales.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'SalesQuota'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales total year to date.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'SalesYTD'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Territory currently assigned to. Foreign key to SalesTerritory.SalesTerritoryID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', 'COLUMN', N'TerritoryID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesPerson]
Print 'Create Extended Property MS_Description on [Sales].[SalesPerson]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Sales representative current information.', 'SCHEMA', N'Sales', 'TABLE', N'SalesPerson', NULL, NULL
GO
ALTER TABLE [Sales].[SalesPerson] SET (LOCK_ESCALATION = TABLE)
GO
