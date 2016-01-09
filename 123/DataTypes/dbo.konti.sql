CREATE TYPE [dbo].[konti]
	FROM [varchar](6)
	NULL
GO
GRANT REFERENCES
	ON TYPE::[dbo].[konti]
	TO [public]
GO
