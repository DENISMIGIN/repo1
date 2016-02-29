﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Sales].[SalesTaxRate]
Print 'Create Table [Sales].[SalesTaxRate]'
GO
CREATE TABLE [Sales].[SalesTaxRate] (
		[SalesTaxRateID]      [int] IDENTITY(1, 1) NOT NULL,
		[StateProvinceID]     [int] NOT NULL,
		[TaxType]             [tinyint] NOT NULL,
		[TaxRate]             [smallmoney] NOT NULL,
		[Name]                [dbo].[Name] NOT NULL,
		[rowguid]             [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_SalesTaxRate_SalesTaxRateID]
		PRIMARY KEY
		CLUSTERED
		([SalesTaxRateID])
)
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'CONSTRAINT', N'PK_SalesTaxRate_SalesTaxRateID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'INDEX', N'PK_SalesTaxRate_SalesTaxRateID'
GO
-- Add Check Constraint CK_SalesTaxRate_TaxType to [Sales].[SalesTaxRate]
Print 'Add Check Constraint CK_SalesTaxRate_TaxType to [Sales].[SalesTaxRate]'
GO
ALTER TABLE [Sales].[SalesTaxRate]
	ADD
	CONSTRAINT [CK_SalesTaxRate_TaxType]
	CHECK
	([TaxType]>=(1) AND [TaxType]<=(3))
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [TaxType] BETWEEN (1) AND (3)', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'CONSTRAINT', N'CK_SalesTaxRate_TaxType'
GO
ALTER TABLE [Sales].[SalesTaxRate]
CHECK CONSTRAINT [CK_SalesTaxRate_TaxType]
GO
-- Add Default Constraint DF_SalesTaxRate_ModifiedDate to [Sales].[SalesTaxRate]
Print 'Add Default Constraint DF_SalesTaxRate_ModifiedDate to [Sales].[SalesTaxRate]'
GO
ALTER TABLE [Sales].[SalesTaxRate]
	ADD
	CONSTRAINT [DF_SalesTaxRate_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'CONSTRAINT', N'DF_SalesTaxRate_ModifiedDate'
GO
-- Add Default Constraint DF_SalesTaxRate_rowguid to [Sales].[SalesTaxRate]
Print 'Add Default Constraint DF_SalesTaxRate_rowguid to [Sales].[SalesTaxRate]'
GO
ALTER TABLE [Sales].[SalesTaxRate]
	ADD
	CONSTRAINT [DF_SalesTaxRate_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'CONSTRAINT', N'DF_SalesTaxRate_rowguid'
GO
-- Add Default Constraint DF_SalesTaxRate_TaxRate to [Sales].[SalesTaxRate]
Print 'Add Default Constraint DF_SalesTaxRate_TaxRate to [Sales].[SalesTaxRate]'
GO
ALTER TABLE [Sales].[SalesTaxRate]
	ADD
	CONSTRAINT [DF_SalesTaxRate_TaxRate]
	DEFAULT ((0.00)) FOR [TaxRate]
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0.0', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'CONSTRAINT', N'DF_SalesTaxRate_TaxRate'
GO
-- Create Foreign Key FK_SalesTaxRate_StateProvince_StateProvinceID on [Sales].[SalesTaxRate]
Print 'Create Foreign Key FK_SalesTaxRate_StateProvince_StateProvinceID on [Sales].[SalesTaxRate]'
GO
ALTER TABLE [Sales].[SalesTaxRate]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesTaxRate_StateProvince_StateProvinceID]
	FOREIGN KEY ([StateProvinceID]) REFERENCES [Person].[StateProvince] ([StateProvinceID])
ALTER TABLE [Sales].[SalesTaxRate]
	CHECK CONSTRAINT [FK_SalesTaxRate_StateProvince_StateProvinceID]

GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing StateProvince.StateProvinceID.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'CONSTRAINT', N'FK_SalesTaxRate_StateProvince_StateProvinceID'
GO
-- Create Index AK_SalesTaxRate_rowguid on [Sales].[SalesTaxRate]
Print 'Create Index AK_SalesTaxRate_rowguid on [Sales].[SalesTaxRate]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesTaxRate_rowguid]
	ON [Sales].[SalesTaxRate] ([rowguid])
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'INDEX', N'AK_SalesTaxRate_rowguid'
GO
-- Create Index AK_SalesTaxRate_StateProvinceID_TaxType on [Sales].[SalesTaxRate]
Print 'Create Index AK_SalesTaxRate_StateProvinceID_TaxType on [Sales].[SalesTaxRate]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesTaxRate_StateProvinceID_TaxType]
	ON [Sales].[SalesTaxRate] ([StateProvinceID], [TaxType])
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'INDEX', N'AK_SalesTaxRate_StateProvinceID_TaxType'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tax rate description.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'COLUMN', N'Name'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for SalesTaxRate records.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'COLUMN', N'SalesTaxRateID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'State, province, or country/region the sales tax applies to.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'COLUMN', N'StateProvinceID'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tax rate amount.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'COLUMN', N'TaxRate'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'1 = Tax applied to retail transactions, 2 = Tax applied to wholesale transactions, 3 = Tax applied to all sales (retail and wholesale) transactions.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', 'COLUMN', N'TaxType'
GO
-- Create Extended Property MS_Description on [Sales].[SalesTaxRate]
Print 'Create Extended Property MS_Description on [Sales].[SalesTaxRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Tax rate lookup table.', 'SCHEMA', N'Sales', 'TABLE', N'SalesTaxRate', NULL, NULL
GO
ALTER TABLE [Sales].[SalesTaxRate] SET (LOCK_ESCALATION = TABLE)
GO
