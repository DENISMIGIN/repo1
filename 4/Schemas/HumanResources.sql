-- Create Schema [HumanResources]
Print 'Create Schema [HumanResources]'
GO
CREATE SCHEMA [HumanResources]
	AUTHORIZATION [dbo]
GO
-- Create Extended Property MS_Description on [HumanResources]
Print 'Create Extended Property MS_Description on [HumanResources]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contains objects related to employees and departments.', 'SCHEMA', N'HumanResources', NULL, NULL, NULL, NULL
GO
