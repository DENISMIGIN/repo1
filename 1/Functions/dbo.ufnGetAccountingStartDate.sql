SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[ufnGetAccountingStartDate]
Print 'Create Function [dbo].[ufnGetAccountingStartDate]'
GO

CREATE FUNCTION [dbo].[ufnGetAccountingStartDate]()
RETURNS [datetime] 
AS 
BEGIN
    RETURN CONVERT(datetime, '20030701', 112);
END;
GO
-- Create Extended Property MS_Description on [dbo].[ufnGetAccountingStartDate]
Print 'Create Extended Property MS_Description on [dbo].[ufnGetAccountingStartDate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Scalar function used in the uSalesOrderHeader trigger to set the ending account date.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetAccountingStartDate', NULL, NULL
GO
