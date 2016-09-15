-- Create schema [Sales]
Print 'Create schema [Sales]'
GO
CREATE SCHEMA [Sales]
	AUTHORIZATION [dbo]
GO
-- Create extended property MS_Description on [Sales]
Print 'Create extended property MS_Description on [Sales]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contains objects related to customers, sales orders, and sales territories.', 'SCHEMA', N'Sales', NULL, NULL, NULL, NULL
GO
