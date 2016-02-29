-- Create Fulltext Catalog [AW2014FullTextCatalog]
Print 'Create Fulltext Catalog [AW2014FullTextCatalog]'
GO
CREATE FULLTEXT CATALOG [AW2014FullTextCatalog]
	WITH ACCENT_SENSITIVITY = ON
	AS DEFAULT
	AUTHORIZATION [dbo]
GO
