SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[Table_1]
Print 'Create table [dbo].[Table_1]'
GO
CREATE TABLE [dbo].[Table_1] (
		[111]     [nchar](10) COLLATE Cyrillic_General_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Table_1] SET (LOCK_ESCALATION = TABLE)
GO
