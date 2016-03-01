-- Create Type [dbo].[tTestCase144]
Print 'Create Type [dbo].[tTestCase144]'
GO
CREATE TYPE [dbo].[tTestCase144]
	FROM [int]
	NOT NULL
GO
-- Add Permissions To The type [dbo].[tTestCase144]
Print 'Add Permissions To The type [dbo].[tTestCase144]'
GRANT REFERENCES
	ON TYPE::[dbo].[tTestCase144]
	TO [public]
GO
