SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[ProductModelIllustration]
Print 'Create table [Production].[ProductModelIllustration]'
GO
CREATE TABLE [Production].[ProductModelIllustration] (
		[ProductModelID]     [int] NOT NULL,
		[IllustrationID]     [int] NOT NULL,
		[ModifiedDate]       [datetime] NOT NULL,
		CONSTRAINT [PK_ProductModelIllustration_ProductModelID_IllustrationID]
		PRIMARY KEY
		CLUSTERED
		([ProductModelID], [IllustrationID])
)
GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', 'CONSTRAINT', N'PK_ProductModelIllustration_ProductModelID_IllustrationID'
GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', 'INDEX', N'PK_ProductModelIllustration_ProductModelID_IllustrationID'
GO
-- Add default constraint DF_ProductModelIllustration_ModifiedDate to [Production].[ProductModelIllustration]
Print 'Add default constraint DF_ProductModelIllustration_ModifiedDate to [Production].[ProductModelIllustration]'
GO
ALTER TABLE [Production].[ProductModelIllustration]
	ADD
	CONSTRAINT [DF_ProductModelIllustration_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', 'CONSTRAINT', N'DF_ProductModelIllustration_ModifiedDate'
GO
-- Create foreign key FK_ProductModelIllustration_Illustration_IllustrationID on [Production].[ProductModelIllustration]
Print 'Create foreign key FK_ProductModelIllustration_Illustration_IllustrationID on [Production].[ProductModelIllustration]'
GO
ALTER TABLE [Production].[ProductModelIllustration]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductModelIllustration_Illustration_IllustrationID]
	FOREIGN KEY ([IllustrationID]) REFERENCES [Production].[Illustration] ([IllustrationID])
ALTER TABLE [Production].[ProductModelIllustration]
	CHECK CONSTRAINT [FK_ProductModelIllustration_Illustration_IllustrationID]

GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Illustration.IllustrationID.', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', 'CONSTRAINT', N'FK_ProductModelIllustration_Illustration_IllustrationID'
GO
-- Create foreign key FK_ProductModelIllustration_ProductModel_ProductModelID on [Production].[ProductModelIllustration]
Print 'Create foreign key FK_ProductModelIllustration_ProductModel_ProductModelID on [Production].[ProductModelIllustration]'
GO
ALTER TABLE [Production].[ProductModelIllustration]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductModelIllustration_ProductModel_ProductModelID]
	FOREIGN KEY ([ProductModelID]) REFERENCES [Production].[ProductModel] ([ProductModelID])
ALTER TABLE [Production].[ProductModelIllustration]
	CHECK CONSTRAINT [FK_ProductModelIllustration_ProductModel_ProductModelID]

GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing ProductModel.ProductModelID.', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', 'CONSTRAINT', N'FK_ProductModelIllustration_ProductModel_ProductModelID'
GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to Illustration.IllustrationID.', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', 'COLUMN', N'IllustrationID'
GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key. Foreign key to ProductModel.ProductModelID.', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', 'COLUMN', N'ProductModelID'
GO
-- Create extended property MS_Description on [Production].[ProductModelIllustration]
Print 'Create extended property MS_Description on [Production].[ProductModelIllustration]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping product models and illustrations.', 'SCHEMA', N'Production', 'TABLE', N'ProductModelIllustration', NULL, NULL
GO
ALTER TABLE [Production].[ProductModelIllustration] SET (LOCK_ESCALATION = TABLE)
GO
