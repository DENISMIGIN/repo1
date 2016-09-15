-- Create view [Person].[vStateProvinceCountryRegion]
Print 'Create view [Person].[vStateProvinceCountryRegion]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Person].[vStateProvinceCountryRegion] 
WITH SCHEMABINDING 
AS 
SELECT 
    sp.[StateProvinceID] 
    ,sp.[StateProvinceCode] 
    ,sp.[IsOnlyStateProvinceFlag] 
    ,sp.[Name] AS [StateProvinceName] 
    ,sp.[TerritoryID] 
    ,cr.[CountryRegionCode] 
    ,cr.[Name] AS [CountryRegionName]
FROM [Person].[StateProvince] sp 
    INNER JOIN [Person].[CountryRegion] cr 
    ON sp.[CountryRegionCode] = cr.[CountryRegionCode];
GO
-- Create extended property MS_Description on [Person].[vStateProvinceCountryRegion]
Print 'Create extended property MS_Description on [Person].[vStateProvinceCountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Joins StateProvince table with CountryRegion table.', 'SCHEMA', N'Person', 'VIEW', N'vStateProvinceCountryRegion', NULL, NULL
GO
-- Create index IX_vStateProvinceCountryRegion on [Person].[vStateProvinceCountryRegion]
Print 'Create index IX_vStateProvinceCountryRegion on [Person].[vStateProvinceCountryRegion]'
GO
CREATE UNIQUE CLUSTERED INDEX [IX_vStateProvinceCountryRegion]
	ON [Person].[vStateProvinceCountryRegion] ([StateProvinceID], [CountryRegionCode])
GO
-- Create extended property MS_Description on [Person].[vStateProvinceCountryRegion]
Print 'Create extended property MS_Description on [Person].[vStateProvinceCountryRegion]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index on the view vStateProvinceCountryRegion.', 'SCHEMA', N'Person', 'VIEW', N'vStateProvinceCountryRegion', 'INDEX', N'IX_vStateProvinceCountryRegion'
GO
