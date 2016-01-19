﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Sales].[Currency]
Print 'Create Table [Sales].[Currency]'
GO
CREATE TABLE [Sales].[Currency] (
		[CurrencyCode]     [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Name]             [dbo].[Name] NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL,
		CONSTRAINT [PK_Currency_CurrencyCode]
		PRIMARY KEY
		CLUSTERED
		([CurrencyCode])
)
GO
-- Create Extended Property MS_Description on [Sales].[Currency]
Print 'Create Extended Property MS_Description on [Sales].[Currency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'Currency', 'CONSTRAINT', N'PK_Currency_CurrencyCode'
GO
-- Create Extended Property MS_Description on [Sales].[Currency]
Print 'Create Extended Property MS_Description on [Sales].[Currency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'Currency', 'INDEX', N'PK_Currency_CurrencyCode'
GO
-- Add Default Constraint DF_Currency_ModifiedDate to [Sales].[Currency]
Print 'Add Default Constraint DF_Currency_ModifiedDate to [Sales].[Currency]'
GO
ALTER TABLE [Sales].[Currency]
	ADD
	CONSTRAINT [DF_Currency_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Sales].[Currency]
Print 'Create Extended Property MS_Description on [Sales].[Currency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'Currency', 'CONSTRAINT', N'DF_Currency_ModifiedDate'
GO
-- Create Index AK_Currency_Name on [Sales].[Currency]
Print 'Create Index AK_Currency_Name on [Sales].[Currency]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Currency_Name]
	ON [Sales].[Currency] ([Name])
GO
-- Create Extended Property MS_Description on [Sales].[Currency]
Print 'Create Extended Property MS_Description on [Sales].[Currency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'Currency', 'INDEX', N'AK_Currency_Name'
GO
-- Create Extended Property MS_Description on [Sales].[Currency]
Print 'Create Extended Property MS_Description on [Sales].[Currency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ISO code for the Currency.', 'SCHEMA', N'Sales', 'TABLE', N'Currency', 'COLUMN', N'CurrencyCode'
GO
-- Create Extended Property MS_Description on [Sales].[Currency]
Print 'Create Extended Property MS_Description on [Sales].[Currency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'Currency', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Sales].[Currency]
Print 'Create Extended Property MS_Description on [Sales].[Currency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Currency name.', 'SCHEMA', N'Sales', 'TABLE', N'Currency', 'COLUMN', N'Name'
GO
-- Create Extended Property MS_Description on [Sales].[Currency]
Print 'Create Extended Property MS_Description on [Sales].[Currency]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lookup table containing standard ISO currencies.', 'SCHEMA', N'Sales', 'TABLE', N'Currency', NULL, NULL
GO
ALTER TABLE [Sales].[Currency] SET (LOCK_ESCALATION = TABLE)
GO
