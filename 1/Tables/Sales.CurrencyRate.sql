﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Sales].[CurrencyRate]
Print 'Create table [Sales].[CurrencyRate]'
GO
CREATE TABLE [Sales].[CurrencyRate] (
		[CurrencyRateID]       [int] IDENTITY(1, 1) NOT NULL,
		[CurrencyRateDate]     [datetime] NOT NULL,
		[FromCurrencyCode]     [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ToCurrencyCode]       [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AverageRate]          [money] NOT NULL,
		[EndOfDayRate]         [money] NOT NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_CurrencyRate_CurrencyRateID]
		PRIMARY KEY
		CLUSTERED
		([CurrencyRateID])
)
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'CONSTRAINT', N'PK_CurrencyRate_CurrencyRateID'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'INDEX', N'PK_CurrencyRate_CurrencyRateID'
GO
-- Add default constraint DF_CurrencyRate_ModifiedDate to [Sales].[CurrencyRate]
Print 'Add default constraint DF_CurrencyRate_ModifiedDate to [Sales].[CurrencyRate]'
GO
ALTER TABLE [Sales].[CurrencyRate]
	ADD
	CONSTRAINT [DF_CurrencyRate_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'CONSTRAINT', N'DF_CurrencyRate_ModifiedDate'
GO
-- Create foreign key FK_CurrencyRate_Currency_FromCurrencyCode on [Sales].[CurrencyRate]
Print 'Create foreign key FK_CurrencyRate_Currency_FromCurrencyCode on [Sales].[CurrencyRate]'
GO
ALTER TABLE [Sales].[CurrencyRate]
	WITH CHECK
	ADD CONSTRAINT [FK_CurrencyRate_Currency_FromCurrencyCode]
	FOREIGN KEY ([FromCurrencyCode]) REFERENCES [Sales].[Currency] ([CurrencyCode])
ALTER TABLE [Sales].[CurrencyRate]
	CHECK CONSTRAINT [FK_CurrencyRate_Currency_FromCurrencyCode]

GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Currency.FromCurrencyCode.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'CONSTRAINT', N'FK_CurrencyRate_Currency_FromCurrencyCode'
GO
-- Create foreign key FK_CurrencyRate_Currency_ToCurrencyCode on [Sales].[CurrencyRate]
Print 'Create foreign key FK_CurrencyRate_Currency_ToCurrencyCode on [Sales].[CurrencyRate]'
GO
ALTER TABLE [Sales].[CurrencyRate]
	WITH CHECK
	ADD CONSTRAINT [FK_CurrencyRate_Currency_ToCurrencyCode]
	FOREIGN KEY ([ToCurrencyCode]) REFERENCES [Sales].[Currency] ([CurrencyCode])
ALTER TABLE [Sales].[CurrencyRate]
	CHECK CONSTRAINT [FK_CurrencyRate_Currency_ToCurrencyCode]

GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Currency.ToCurrencyCode.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'CONSTRAINT', N'FK_CurrencyRate_Currency_ToCurrencyCode'
GO
-- Create index AK_CurrencyRate_CurrencyRateDate_FromCurrencyCode_ToCurrencyCode on [Sales].[CurrencyRate]
Print 'Create index AK_CurrencyRate_CurrencyRateDate_FromCurrencyCode_ToCurrencyCode on [Sales].[CurrencyRate]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_CurrencyRate_CurrencyRateDate_FromCurrencyCode_ToCurrencyCode]
	ON [Sales].[CurrencyRate] ([CurrencyRateDate], [FromCurrencyCode], [ToCurrencyCode])
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'INDEX', N'AK_CurrencyRate_CurrencyRateDate_FromCurrencyCode_ToCurrencyCode'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Average exchange rate for the day.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'COLUMN', N'AverageRate'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the exchange rate was obtained.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'COLUMN', N'CurrencyRateDate'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for CurrencyRate records.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'COLUMN', N'CurrencyRateID'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Final exchange rate for the day.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'COLUMN', N'EndOfDayRate'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Exchange rate was converted from this currency code.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'COLUMN', N'FromCurrencyCode'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Exchange rate was converted to this currency code.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', 'COLUMN', N'ToCurrencyCode'
GO
-- Create extended property MS_Description on [Sales].[CurrencyRate]
Print 'Create extended property MS_Description on [Sales].[CurrencyRate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Currency exchange rates.', 'SCHEMA', N'Sales', 'TABLE', N'CurrencyRate', NULL, NULL
GO
ALTER TABLE [Sales].[CurrencyRate] SET (LOCK_ESCALATION = TABLE)
GO
