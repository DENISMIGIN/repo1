SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[TestCase001]
Print 'Create table [dbo].[TestCase001]'
GO
CREATE TABLE [dbo].[TestCase001] (
		[f1]     [nvarchar](10) COLLATE Cyrillic_General_CI_AS NULL,
		[f2]     [nvarchar](20) COLLATE Cyrillic_General_CI_AS NULL,
		[f3]     AS ([dbo].[fTestCase001]([f1],[f2]))
)
GO
ALTER TABLE [dbo].[TestCase001] SET (LOCK_ESCALATION = TABLE)
GO
