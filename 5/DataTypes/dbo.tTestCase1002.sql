-- Create Type [dbo].[tTestCase1002]
Print 'Create Type [dbo].[tTestCase1002]'
GO
CREATE TYPE [dbo].[tTestCase1002]
AS TABLE (
		[f1]     [varchar](50) COLLATE Cyrillic_General_CI_AS NULL,
		[f2]     [int] NULL
)
GO
-- Create Extended Property TestCase on [dbo].[tTestCase1002]
Print 'Create Extended Property TestCase on [dbo].[tTestCase1002]'
GO
EXEC sp_addextendedproperty N'TestCase', N'type tTestCase1002', 'SCHEMA', N'dbo', 'TYPE', N'tTestCase1002', NULL, NULL
GO
-- Add Permissions To The type [dbo].[tTestCase1002]
Print 'Add Permissions To The type [dbo].[tTestCase1002]'
GRANT EXECUTE
	ON TYPE::[dbo].[tTestCase1002]
	TO [lTestDiff]
GO
GRANT REFERENCES
	ON TYPE::[dbo].[tTestCase1002]
	TO [lTestDiff]
GO
