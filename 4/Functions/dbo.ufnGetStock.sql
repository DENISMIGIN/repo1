SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[ufnGetStock]
Print 'Create Function [dbo].[ufnGetStock]'
GO

CREATE FUNCTION [dbo].[ufnGetStock](@ProductID [int])
RETURNS [int] 
AS 
-- Returns the stock level for the product. This function is used internally only
BEGIN
    DECLARE @ret int;
    
    SELECT @ret = SUM(p.[Quantity]) 
    FROM [Production].[ProductInventory] p 
    WHERE p.[ProductID] = @ProductID 
        AND p.[LocationID] = '6'; -- Only look at inventory in the misc storage
    
    IF (@ret IS NULL) 
        SET @ret = 0
    
    RETURN @ret
END;
GO
-- Create Extended Property MS_Description on [dbo].[ufnGetStock]
Print 'Create Extended Property MS_Description on [dbo].[ufnGetStock]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Scalar function returning the quantity of inventory in LocationID 6 (Miscellaneous Storage)for a specified ProductID.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetStock', NULL, NULL
GO
-- Create Extended Property MS_Description on [dbo].[ufnGetStock]
Print 'Create Extended Property MS_Description on [dbo].[ufnGetStock]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the scalar function ufnGetStock. Enter a valid ProductID from the Production.ProductInventory table.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetStock', 'PARAMETER', N'@ProductID'
GO
