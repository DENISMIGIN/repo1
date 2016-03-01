-- Create Type [dbo].[tTestCase143]
Print 'Create Type [dbo].[tTestCase143]'
GO
CREATE TYPE [dbo].[tTestCase143]
	FROM [varchar](24)
	NOT NULL
GO
-- Add Permissions To The type [dbo].[tTestCase143]
Print 'Add Permissions To The type [dbo].[tTestCase143]'
GRANT REFERENCES
	ON TYPE::[dbo].[tTestCase143]
	TO [public]
GO
