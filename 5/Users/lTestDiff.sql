-- Create User [lTestDiff]
Print 'Create User [lTestDiff]'
GO
CREATE USER [lTestDiff]
	WITHOUT LOGIN
	WITH DEFAULT_SCHEMA = [lTestDiff]
GO
-- Create Extended Property TestCase on [lTestDiff]
Print 'Create Extended Property TestCase on [lTestDiff]'
GO
EXEC sp_addextendedproperty N'TestCase', N'user lTestDiff', 'USER', N'lTestDiff', NULL, NULL, NULL, NULL
GO
