SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create function [dbo].[ufnGetPurchaseOrderStatusText]
Print 'Create function [dbo].[ufnGetPurchaseOrderStatusText]'
GO

CREATE FUNCTION [dbo].[ufnGetPurchaseOrderStatusText](@Status [tinyint])
RETURNS [nvarchar](15) 
AS 
-- Returns the sales order status text representation for the status value.
BEGIN
    DECLARE @ret [nvarchar](15);

    SET @ret = 
        CASE @Status
            WHEN 1 THEN 'Pending'
            WHEN 2 THEN 'Approved'
            WHEN 3 THEN 'Rejected'
            WHEN 4 THEN 'Complete'
            ELSE '** Invalid **'
        END;
    
    RETURN @ret
END;
GO
-- Create extended property MS_Description on [dbo].[ufnGetPurchaseOrderStatusText]
Print 'Create extended property MS_Description on [dbo].[ufnGetPurchaseOrderStatusText]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Scalar function returning the text representation of the Status column in the PurchaseOrderHeader table.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetPurchaseOrderStatusText', NULL, NULL
GO
-- Create extended property MS_Description on [dbo].[ufnGetPurchaseOrderStatusText]
Print 'Create extended property MS_Description on [dbo].[ufnGetPurchaseOrderStatusText]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the scalar function ufnGetPurchaseOrdertStatusText. Enter a valid integer.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetPurchaseOrderStatusText', 'PARAMETER', N'@Status'
GO
