-- Create Schema [Production]
Print 'Create Schema [Production]'
GO
CREATE SCHEMA [Production]
	AUTHORIZATION [dbo]
GO
-- Create Extended Property MS_Description on [Production]
Print 'Create Extended Property MS_Description on [Production]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contains objects related to products, inventory, and manufacturing.', 'SCHEMA', N'Production', NULL, NULL, NULL, NULL
GO
