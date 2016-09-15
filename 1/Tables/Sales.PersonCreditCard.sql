SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Sales].[PersonCreditCard]
Print 'Create table [Sales].[PersonCreditCard]'
GO
CREATE TABLE [Sales].[PersonCreditCard] (
		[BusinessEntityID]     [int] NOT NULL,
		[CreditCardID]         [int] NOT NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_PersonCreditCard_BusinessEntityID_CreditCardID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [CreditCardID])
)
GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', 'CONSTRAINT', N'PK_PersonCreditCard_BusinessEntityID_CreditCardID'
GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', 'INDEX', N'PK_PersonCreditCard_BusinessEntityID_CreditCardID'
GO
-- Add default constraint DF_PersonCreditCard_ModifiedDate to [Sales].[PersonCreditCard]
Print 'Add default constraint DF_PersonCreditCard_ModifiedDate to [Sales].[PersonCreditCard]'
GO
ALTER TABLE [Sales].[PersonCreditCard]
	ADD
	CONSTRAINT [DF_PersonCreditCard_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', 'CONSTRAINT', N'DF_PersonCreditCard_ModifiedDate'
GO
-- Create foreign key FK_PersonCreditCard_CreditCard_CreditCardID on [Sales].[PersonCreditCard]
Print 'Create foreign key FK_PersonCreditCard_CreditCard_CreditCardID on [Sales].[PersonCreditCard]'
GO
ALTER TABLE [Sales].[PersonCreditCard]
	WITH CHECK
	ADD CONSTRAINT [FK_PersonCreditCard_CreditCard_CreditCardID]
	FOREIGN KEY ([CreditCardID]) REFERENCES [Sales].[CreditCard] ([CreditCardID])
ALTER TABLE [Sales].[PersonCreditCard]
	CHECK CONSTRAINT [FK_PersonCreditCard_CreditCard_CreditCardID]

GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing CreditCard.CreditCardID.', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', 'CONSTRAINT', N'FK_PersonCreditCard_CreditCard_CreditCardID'
GO
-- Create foreign key FK_PersonCreditCard_Person_BusinessEntityID on [Sales].[PersonCreditCard]
Print 'Create foreign key FK_PersonCreditCard_Person_BusinessEntityID on [Sales].[PersonCreditCard]'
GO
ALTER TABLE [Sales].[PersonCreditCard]
	WITH CHECK
	ADD CONSTRAINT [FK_PersonCreditCard_Person_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID])
ALTER TABLE [Sales].[PersonCreditCard]
	CHECK CONSTRAINT [FK_PersonCreditCard_Person_BusinessEntityID]

GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Person.BusinessEntityID.', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', 'CONSTRAINT', N'FK_PersonCreditCard_Person_BusinessEntityID'
GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Business entity identification number. Foreign key to Person.BusinessEntityID.', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', 'COLUMN', N'BusinessEntityID'
GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Credit card identification number. Foreign key to CreditCard.CreditCardID.', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', 'COLUMN', N'CreditCardID'
GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Sales].[PersonCreditCard]
Print 'Create extended property MS_Description on [Sales].[PersonCreditCard]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping people to their credit card information in the CreditCard table. ', 'SCHEMA', N'Sales', 'TABLE', N'PersonCreditCard', NULL, NULL
GO
ALTER TABLE [Sales].[PersonCreditCard] SET (LOCK_ESCALATION = TABLE)
GO
