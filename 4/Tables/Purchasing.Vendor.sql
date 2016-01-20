SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Purchasing].[Vendor]
Print 'Create Table [Purchasing].[Vendor]'
GO
CREATE TABLE [Purchasing].[Vendor] (
		[BusinessEntityID]            [int] NOT NULL,
		[AccountNumber]               [dbo].[AccountNumber] NOT NULL,
		[Name]                        [dbo].[Name] NOT NULL,
		[CreditRating]                [tinyint] NOT NULL,
		[PreferredVendorStatus]       [dbo].[Flag] NOT NULL,
		[ActiveFlag]                  [dbo].[Flag] NOT NULL,
		[PurchasingWebServiceURL]     [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ModifiedDate]                [datetime] NOT NULL,
		CONSTRAINT [PK_Vendor_BusinessEntityID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID])
)
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'CONSTRAINT', N'PK_Vendor_BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'INDEX', N'PK_Vendor_BusinessEntityID'
GO
-- Add Check Constraint CK_Vendor_CreditRating to [Purchasing].[Vendor]
Print 'Add Check Constraint CK_Vendor_CreditRating to [Purchasing].[Vendor]'
GO
ALTER TABLE [Purchasing].[Vendor]
	ADD
	CONSTRAINT [CK_Vendor_CreditRating]
	CHECK
	([CreditRating]>=(1) AND [CreditRating]<=(5))
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [CreditRating] BETWEEN (1) AND (5)', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'CONSTRAINT', N'CK_Vendor_CreditRating'
GO
ALTER TABLE [Purchasing].[Vendor]
CHECK CONSTRAINT [CK_Vendor_CreditRating]
GO
-- Add Default Constraint DF_Vendor_ActiveFlag to [Purchasing].[Vendor]
Print 'Add Default Constraint DF_Vendor_ActiveFlag to [Purchasing].[Vendor]'
GO
ALTER TABLE [Purchasing].[Vendor]
	ADD
	CONSTRAINT [DF_Vendor_ActiveFlag]
	DEFAULT ((1)) FOR [ActiveFlag]
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1 (TRUE)', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'CONSTRAINT', N'DF_Vendor_ActiveFlag'
GO
-- Add Default Constraint DF_Vendor_ModifiedDate to [Purchasing].[Vendor]
Print 'Add Default Constraint DF_Vendor_ModifiedDate to [Purchasing].[Vendor]'
GO
ALTER TABLE [Purchasing].[Vendor]
	ADD
	CONSTRAINT [DF_Vendor_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'CONSTRAINT', N'DF_Vendor_ModifiedDate'
GO
-- Add Default Constraint DF_Vendor_PreferredVendorStatus to [Purchasing].[Vendor]
Print 'Add Default Constraint DF_Vendor_PreferredVendorStatus to [Purchasing].[Vendor]'
GO
ALTER TABLE [Purchasing].[Vendor]
	ADD
	CONSTRAINT [DF_Vendor_PreferredVendorStatus]
	DEFAULT ((1)) FOR [PreferredVendorStatus]
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1 (TRUE)', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'CONSTRAINT', N'DF_Vendor_PreferredVendorStatus'
GO
-- Create Foreign Key FK_Vendor_BusinessEntity_BusinessEntityID on [Purchasing].[Vendor]
Print 'Create Foreign Key FK_Vendor_BusinessEntity_BusinessEntityID on [Purchasing].[Vendor]'
GO
ALTER TABLE [Purchasing].[Vendor]
	WITH CHECK
	ADD CONSTRAINT [FK_Vendor_BusinessEntity_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[BusinessEntity] ([BusinessEntityID])
ALTER TABLE [Purchasing].[Vendor]
	CHECK CONSTRAINT [FK_Vendor_BusinessEntity_BusinessEntityID]

GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing BusinessEntity.BusinessEntityID', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'CONSTRAINT', N'FK_Vendor_BusinessEntity_BusinessEntityID'
GO
-- Create Index AK_Vendor_AccountNumber on [Purchasing].[Vendor]
Print 'Create Index AK_Vendor_AccountNumber on [Purchasing].[Vendor]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Vendor_AccountNumber]
	ON [Purchasing].[Vendor] ([AccountNumber])
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'INDEX', N'AK_Vendor_AccountNumber'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vendor account (identification) number.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'COLUMN', N'AccountNumber'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'0 = Vendor no longer used. 1 = Vendor is actively used.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'COLUMN', N'ActiveFlag'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Vendor records.  Foreign key to BusinessEntity.BusinessEntityID', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'COLUMN', N'BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'1 = Superior, 2 = Excellent, 3 = Above average, 4 = Average, 5 = Below average', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'COLUMN', N'CreditRating'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Company name.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'COLUMN', N'Name'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'0 = Do not use if another vendor is available. 1 = Preferred over other vendors supplying the same product.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'COLUMN', N'PreferredVendorStatus'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Vendor URL.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', 'COLUMN', N'PurchasingWebServiceURL'
GO
-- Create Extended Property MS_Description on [Purchasing].[Vendor]
Print 'Create Extended Property MS_Description on [Purchasing].[Vendor]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Companies from whom Adventure Works Cycles purchases parts or other goods.', 'SCHEMA', N'Purchasing', 'TABLE', N'Vendor', NULL, NULL
GO
ALTER TABLE [Purchasing].[Vendor] SET (LOCK_ESCALATION = TABLE)
GO
