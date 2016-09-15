SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create function [dbo].[ufnGetProductStandardCost]
Print 'Create function [dbo].[ufnGetProductStandardCost]'
GO

CREATE FUNCTION [dbo].[ufnGetProductStandardCost](@ProductID [int], @OrderDate [datetime])
RETURNS [money] 
AS 
-- Returns the standard cost for the product on a specific date.
BEGIN
    DECLARE @StandardCost money;

    SELECT @StandardCost = pch.[StandardCost] 
    FROM [Production].[Product] p 
        INNER JOIN [Production].[ProductCostHistory] pch 
        ON p.[ProductID] = pch.[ProductID] 
            AND p.[ProductID] = @ProductID 
            AND @OrderDate BETWEEN pch.[StartDate] AND COALESCE(pch.[EndDate], CONVERT(datetime, '99991231', 112)); -- Make sure we get all the prices!

    RETURN @StandardCost;
END;
GO
-- Create extended property MS_Description on [dbo].[ufnGetProductStandardCost]
Print 'Create extended property MS_Description on [dbo].[ufnGetProductStandardCost]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Scalar function returning the standard cost for a given product on a particular order date.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetProductStandardCost', NULL, NULL
GO
-- Create extended property MS_Description on [dbo].[ufnGetProductStandardCost]
Print 'Create extended property MS_Description on [dbo].[ufnGetProductStandardCost]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the scalar function ufnGetProductStandardCost. Enter a valid order date.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetProductStandardCost', 'PARAMETER', N'@OrderDate'
GO
-- Create extended property MS_Description on [dbo].[ufnGetProductStandardCost]
Print 'Create extended property MS_Description on [dbo].[ufnGetProductStandardCost]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the scalar function ufnGetProductStandardCost. Enter a valid ProductID from the Production.Product table.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetProductStandardCost', 'PARAMETER', N'@ProductID'
GO
