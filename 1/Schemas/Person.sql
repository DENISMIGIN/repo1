-- Create schema [Person]
Print 'Create schema [Person]'
GO
CREATE SCHEMA [Person]
	AUTHORIZATION [dbo]
GO
-- Create extended property MS_Description on [Person]
Print 'Create extended property MS_Description on [Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Contains objects related to names and addresses of customers, vendors, and employees', 'SCHEMA', N'Person', NULL, NULL, NULL, NULL
GO
