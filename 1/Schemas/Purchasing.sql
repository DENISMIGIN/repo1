-- Create schema [Purchasing]
Print 'Create schema [Purchasing]'
GO
CREATE SCHEMA [Purchasing]
	AUTHORIZATION [dbo]
GO
-- Create extended property MS_Description on [Purchasing]
Print 'Create extended property MS_Description on [Purchasing]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contains objects related to vendors and purchase orders.', 'SCHEMA', N'Purchasing', NULL, NULL, NULL, NULL
GO
