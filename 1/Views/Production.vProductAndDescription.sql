-- Create view [Production].[vProductAndDescription]
Print 'Create view [Production].[vProductAndDescription]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Production].[vProductAndDescription] 
WITH SCHEMABINDING 
AS 
-- View (indexed or standard) to display products and product descriptions by language.
SELECT 
    p.[ProductID] 
    ,p.[Name] 
    ,pm.[Name] AS [ProductModel] 
    ,pmx.[CultureID] 
    ,pd.[Description] 
FROM [Production].[Product] p 
    INNER JOIN [Production].[ProductModel] pm 
    ON p.[ProductModelID] = pm.[ProductModelID] 
    INNER JOIN [Production].[ProductModelProductDescriptionCulture] pmx 
    ON pm.[ProductModelID] = pmx.[ProductModelID] 
    INNER JOIN [Production].[ProductDescription] pd 
    ON pmx.[ProductDescriptionID] = pd.[ProductDescriptionID];
GO
-- Create extended property MS_Description on [Production].[vProductAndDescription]
Print 'Create extended property MS_Description on [Production].[vProductAndDescription]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product names and descriptions. Product descriptions are provided in multiple languages.', 'SCHEMA', N'Production', 'VIEW', N'vProductAndDescription', NULL, NULL
GO
-- Create index IX_vProductAndDescription on [Production].[vProductAndDescription]
Print 'Create index IX_vProductAndDescription on [Production].[vProductAndDescription]'
GO
CREATE UNIQUE CLUSTERED INDEX [IX_vProductAndDescription]
	ON [Production].[vProductAndDescription] ([CultureID], [ProductID])
GO
-- Create extended property MS_Description on [Production].[vProductAndDescription]
Print 'Create extended property MS_Description on [Production].[vProductAndDescription]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index on the view vProductAndDescription.', 'SCHEMA', N'Production', 'VIEW', N'vProductAndDescription', 'INDEX', N'IX_vProductAndDescription'
GO
