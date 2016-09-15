SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Sales].[CreditCard]
Print 'Create table [Sales].[CreditCard]'
GO
CREATE TABLE [Sales].[CreditCard] (
		[CreditCardID]     [int] IDENTITY(1, 1) NOT NULL,
		[CardType]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CardNumber]       [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ExpMonth]         [tinyint] NOT NULL,
		[ExpYear]          [smallint] NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL,
		CONSTRAINT [PK_CreditCard_CreditCardID]
		PRIMARY KEY
		CLUSTERED
		([CreditCardID])
)
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'CONSTRAINT', N'PK_CreditCard_CreditCardID'
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'INDEX', N'PK_CreditCard_CreditCardID'
GO
-- Add default constraint DF_CreditCard_ModifiedDate to [Sales].[CreditCard]
Print 'Add default constraint DF_CreditCard_ModifiedDate to [Sales].[CreditCard]'
GO
ALTER TABLE [Sales].[CreditCard]
	ADD
	CONSTRAINT [DF_CreditCard_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'CONSTRAINT', N'DF_CreditCard_ModifiedDate'
GO
-- Create index AK_CreditCard_CardNumber on [Sales].[CreditCard]
Print 'Create index AK_CreditCard_CardNumber on [Sales].[CreditCard]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_CreditCard_CardNumber]
	ON [Sales].[CreditCard] ([CardNumber])
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'INDEX', N'AK_CreditCard_CardNumber'
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Credit card number.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'COLUMN', N'CardNumber'
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Credit card name.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'COLUMN', N'CardType'
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for CreditCard records.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'COLUMN', N'CreditCardID'
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Credit card expiration month.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'COLUMN', N'ExpMonth'
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Credit card expiration year.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'COLUMN', N'ExpYear'
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Sales].[CreditCard]
Print 'Create extended property MS_Description on [Sales].[CreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Customer credit card information.', 'SCHEMA', N'Sales', 'TABLE', N'CreditCard', NULL, NULL
GO
ALTER TABLE [Sales].[CreditCard] SET (LOCK_ESCALATION = TABLE)
GO
