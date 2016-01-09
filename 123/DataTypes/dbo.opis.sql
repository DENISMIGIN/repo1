CREATE TYPE [dbo].[opis]
	FROM [varchar](60)
	NULL
GO
GRANT REFERENCES
	ON TYPE::[dbo].[opis]
	TO [public]
GO
