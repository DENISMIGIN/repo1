-- Create Synonym [dbo].[snTestCase187]
Print 'Create Synonym [dbo].[snTestCase187]'
GO
CREATE SYNONYM [dbo].[snTestCase187] FOR [lTestDiff].[TestCase187]
GO
-- Alter the authorization for Synonym [dbo].[snTestCase187]
Print 'Alter the authorization for Synonym [dbo].[snTestCase187]'
GO
ALTER AUTHORIZATION
	ON [dbo].[snTestCase187]
	TO [lTestDiff]
GO
-- Create Extended Property TestCase on [dbo].[snTestCase187]
Print 'Create Extended Property TestCase on [dbo].[snTestCase187]'
GO
EXEC sp_addextendedproperty N'TestCase', N'synonym snTestCase187', 'SCHEMA', N'dbo', 'SYNONYM', N'snTestCase187', NULL, NULL
GO
