SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [dbo].[t1]
Print 'Create Table [dbo].[t1]'
GO
CREATE TABLE [dbo].[t1] (
		[c1]     [int] NULL,
		[c2]     [int] NULL,
		[c3]     [int] NULL,
		[c4]     [int] NULL
)
GO
ALTER TABLE [dbo].[t1] SET (LOCK_ESCALATION = TABLE)
GO
