SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Production].[ProductPhoto]
Print 'Create Table [Production].[ProductPhoto]'
GO
CREATE TABLE [Production].[ProductPhoto] (
		[ProductPhotoID]             [int] IDENTITY(1, 1) NOT NULL,
		[ThumbNailPhoto]             [varbinary](max) NULL,
		[ThumbnailPhotoFileName]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LargePhoto]                 [varbinary](max) NULL,
		[LargePhotoFileName]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ModifiedDate]               [datetime] NOT NULL,
		CONSTRAINT [PK_ProductPhoto_ProductPhotoID]
		PRIMARY KEY
		CLUSTERED
		([ProductPhotoID])
)
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'CONSTRAINT', N'PK_ProductPhoto_ProductPhotoID'
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'INDEX', N'PK_ProductPhoto_ProductPhotoID'
GO
-- Add Default Constraint DF_ProductPhoto_ModifiedDate to [Production].[ProductPhoto]
Print 'Add Default Constraint DF_ProductPhoto_ModifiedDate to [Production].[ProductPhoto]'
GO
ALTER TABLE [Production].[ProductPhoto]
	ADD
	CONSTRAINT [DF_ProductPhoto_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'CONSTRAINT', N'DF_ProductPhoto_ModifiedDate'
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Large image of the product.', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'COLUMN', N'LargePhoto'
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Large image file name.', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'COLUMN', N'LargePhotoFileName'
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for ProductPhoto records.', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'COLUMN', N'ProductPhotoID'
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Small image of the product.', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'COLUMN', N'ThumbNailPhoto'
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Small image file name.', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', 'COLUMN', N'ThumbnailPhotoFileName'
GO
-- Create Extended Property MS_Description on [Production].[ProductPhoto]
Print 'Create Extended Property MS_Description on [Production].[ProductPhoto]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product images.', 'SCHEMA', N'Production', 'TABLE', N'ProductPhoto', NULL, NULL
GO
ALTER TABLE [Production].[ProductPhoto] SET (LOCK_ESCALATION = TABLE)
GO
