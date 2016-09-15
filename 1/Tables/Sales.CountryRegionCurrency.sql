SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Sales].[CountryRegionCurrency]
Print 'Create table [Sales].[CountryRegionCurrency]'
GO
CREATE TABLE [Sales].[CountryRegionCurrency] (
		[CountryRegionCode]     [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CurrencyCode]          [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_CountryRegionCurrency_CountryRegionCode_CurrencyCode]
		PRIMARY KEY
		CLUSTERED
		([CountryRegionCode], [CurrencyCode])
)
GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'CONSTRAINT', N'PK_CountryRegionCurrency_CountryRegionCode_CurrencyCode'
GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'INDEX', N'PK_CountryRegionCurrency_CountryRegionCode_CurrencyCode'
GO
-- Add default constraint DF_CountryRegionCurrency_ModifiedDate to [Sales].[CountryRegionCurrency]
Print 'Add default constraint DF_CountryRegionCurrency_ModifiedDate to [Sales].[CountryRegionCurrency]'
GO
ALTER TABLE [Sales].[CountryRegionCurrency]
	ADD
	CONSTRAINT [DF_CountryRegionCurrency_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'CONSTRAINT', N'DF_CountryRegionCurrency_ModifiedDate'
GO
-- Create foreign key FK_CountryRegionCurrency_CountryRegion_CountryRegionCode on [Sales].[CountryRegionCurrency]
Print 'Create foreign key FK_CountryRegionCurrency_CountryRegion_CountryRegionCode on [Sales].[CountryRegionCurrency]'
GO
ALTER TABLE [Sales].[CountryRegionCurrency]
	WITH CHECK
	ADD CONSTRAINT [FK_CountryRegionCurrency_CountryRegion_CountryRegionCode]
	FOREIGN KEY ([CountryRegionCode]) REFERENCES [Person].[CountryRegion] ([CountryRegionCode])
ALTER TABLE [Sales].[CountryRegionCurrency]
	CHECK CONSTRAINT [FK_CountryRegionCurrency_CountryRegion_CountryRegionCode]

GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'CONSTRAINT', N'FK_CountryRegionCurrency_CountryRegion_CountryRegionCode'
GO
-- Create foreign key FK_CountryRegionCurrency_Currency_CurrencyCode on [Sales].[CountryRegionCurrency]
Print 'Create foreign key FK_CountryRegionCurrency_Currency_CurrencyCode on [Sales].[CountryRegionCurrency]'
GO
ALTER TABLE [Sales].[CountryRegionCurrency]
	WITH CHECK
	ADD CONSTRAINT [FK_CountryRegionCurrency_Currency_CurrencyCode]
	FOREIGN KEY ([CurrencyCode]) REFERENCES [Sales].[Currency] ([CurrencyCode])
ALTER TABLE [Sales].[CountryRegionCurrency]
	CHECK CONSTRAINT [FK_CountryRegionCurrency_Currency_CurrencyCode]

GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Currency.CurrencyCode.', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'CONSTRAINT', N'FK_CountryRegionCurrency_Currency_CurrencyCode'
GO
-- Create index IX_CountryRegionCurrency_CurrencyCode on [Sales].[CountryRegionCurrency]
Print 'Create index IX_CountryRegionCurrency_CurrencyCode on [Sales].[CountryRegionCurrency]'
GO
CREATE NONCLUSTERED INDEX [IX_CountryRegionCurrency_CurrencyCode]
	ON [Sales].[CountryRegionCurrency] ([CurrencyCode])
GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'INDEX', N'IX_CountryRegionCurrency_CurrencyCode'
GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ISO code for countries and regions. Foreign key to CountryRegion.CountryRegionCode.', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'COLUMN', N'CountryRegionCode'
GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ISO standard currency code. Foreign key to Currency.CurrencyCode.', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'COLUMN', N'CurrencyCode'
GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Sales].[CountryRegionCurrency]
Print 'Create extended property MS_Description on [Sales].[CountryRegionCurrency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping ISO currency codes to a country or region.', 'SCHEMA', N'Sales', 'TABLE', N'CountryRegionCurrency', NULL, NULL
GO
ALTER TABLE [Sales].[CountryRegionCurrency] SET (LOCK_ESCALATION = TABLE)
GO
