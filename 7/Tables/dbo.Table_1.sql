SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [dbo].[Table_1]
Print 'Create Table [dbo].[Table_1]'
GO
CREATE TABLE [dbo].[Table_1] (
		[1]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[s]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[h]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Table_1] SET (LOCK_ESCALATION = TABLE)
GO
