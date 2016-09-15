-- Create fulltext catalog [AW2014FullTextCatalog]
Print 'Create fulltext catalog [AW2014FullTextCatalog]'
GO
CREATE FULLTEXT CATALOG [AW2014FullTextCatalog]
	WITH ACCENT_SENSITIVITY = ON
	AS DEFAULT
	AUTHORIZATION [dbo]
GO
