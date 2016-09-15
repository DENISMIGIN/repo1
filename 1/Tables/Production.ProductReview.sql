﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[ProductReview]
Print 'Create table [Production].[ProductReview]'
GO
CREATE TABLE [Production].[ProductReview] (
		[ProductReviewID]     [int] IDENTITY(1, 1) NOT NULL,
		[ProductID]           [int] NOT NULL,
		[ReviewerName]        [dbo].[Name] NOT NULL,
		[ReviewDate]          [datetime] NOT NULL,
		[EmailAddress]        [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Rating]              [int] NOT NULL,
		[Comments]            [nvarchar](3850) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_ProductReview_ProductReviewID]
		PRIMARY KEY
		CLUSTERED
		([ProductReviewID])
)
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'CONSTRAINT', N'PK_ProductReview_ProductReviewID'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'INDEX', N'PK_ProductReview_ProductReviewID'
GO
-- Add check constraint CK_ProductReview_Rating to [Production].[ProductReview]
Print 'Add check constraint CK_ProductReview_Rating to [Production].[ProductReview]'
GO
ALTER TABLE [Production].[ProductReview]
	ADD
	CONSTRAINT [CK_ProductReview_Rating]
	CHECK
	([Rating]>=(1) AND [Rating]<=(5))
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Rating] BETWEEN (1) AND (5)', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'CONSTRAINT', N'CK_ProductReview_Rating'
GO
ALTER TABLE [Production].[ProductReview]
CHECK CONSTRAINT [CK_ProductReview_Rating]
GO
-- Add default constraint DF_ProductReview_ModifiedDate to [Production].[ProductReview]
Print 'Add default constraint DF_ProductReview_ModifiedDate to [Production].[ProductReview]'
GO
ALTER TABLE [Production].[ProductReview]
	ADD
	CONSTRAINT [DF_ProductReview_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'CONSTRAINT', N'DF_ProductReview_ModifiedDate'
GO
-- Add default constraint DF_ProductReview_ReviewDate to [Production].[ProductReview]
Print 'Add default constraint DF_ProductReview_ReviewDate to [Production].[ProductReview]'
GO
ALTER TABLE [Production].[ProductReview]
	ADD
	CONSTRAINT [DF_ProductReview_ReviewDate]
	DEFAULT (getdate()) FOR [ReviewDate]
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'CONSTRAINT', N'DF_ProductReview_ReviewDate'
GO
-- Create foreign key FK_ProductReview_Product_ProductID on [Production].[ProductReview]
Print 'Create foreign key FK_ProductReview_Product_ProductID on [Production].[ProductReview]'
GO
ALTER TABLE [Production].[ProductReview]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductReview_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[ProductReview]
	CHECK CONSTRAINT [FK_ProductReview_Product_ProductID]

GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'CONSTRAINT', N'FK_ProductReview_Product_ProductID'
GO
-- Create index IX_ProductReview_ProductID_Name on [Production].[ProductReview]
Print 'Create index IX_ProductReview_ProductID_Name on [Production].[ProductReview]'
GO
CREATE NONCLUSTERED INDEX [IX_ProductReview_ProductID_Name]
	ON [Production].[ProductReview] ([ProductID], [ReviewerName])
	INCLUDE ([Comments])
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'INDEX', N'IX_ProductReview_ProductID_Name'
GO
-- Create fulltext index on [Production].[ProductReview]
Print 'Create fulltext index on [Production].[ProductReview]'
GO
CREATE FULLTEXT INDEX ON [Production].[ProductReview]
	([Comments] LANGUAGE 1033)
	KEY INDEX [PK_ProductReview_ProductReviewID]
	ON [AW2014FullTextCatalog]
	WITH CHANGE_TRACKING AUTO, STOPLIST SYSTEM
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reviewer''s comments', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'COLUMN', N'Comments'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Reviewer''s e-mail address.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'COLUMN', N'EmailAddress'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'COLUMN', N'ProductID'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ProductReview records.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'COLUMN', N'ProductReviewID'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product rating given by the reviewer. Scale is 1 to 5 with 5 as the highest rating.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'COLUMN', N'Rating'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date review was submitted.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'COLUMN', N'ReviewDate'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the reviewer.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', 'COLUMN', N'ReviewerName'
GO
-- Create extended property MS_Description on [Production].[ProductReview]
Print 'Create extended property MS_Description on [Production].[ProductReview]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Customer reviews of products they have purchased.', 'SCHEMA', N'Production', 'TABLE', N'ProductReview', NULL, NULL
GO
ALTER TABLE [Production].[ProductReview] SET (LOCK_ESCALATION = TABLE)
GO
