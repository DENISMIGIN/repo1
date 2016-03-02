SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [lTestDiff].[TestCase187]
Print 'Create Table [lTestDiff].[TestCase187]'
GO
CREATE TABLE [lTestDiff].[TestCase187] (
		[f1]     [bit] NULL
)
GO
ALTER TABLE [lTestDiff].[TestCase187] SET (LOCK_ESCALATION = TABLE)
GO
