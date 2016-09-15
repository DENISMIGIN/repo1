﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create function [dbo].[ufnGetAccountingEndDate]
Print 'Create function [dbo].[ufnGetAccountingEndDate]'
GO

CREATE FUNCTION [dbo].[ufnGetAccountingEndDate]()
RETURNS [datetime] 
AS 
BEGIN
    RETURN DATEADD(millisecond, -2, CONVERT(datetime, '20040701', 112));
END;
GO
-- Create extended property MS_Description on [dbo].[ufnGetAccountingEndDate]
Print 'Create extended property MS_Description on [dbo].[ufnGetAccountingEndDate]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Scalar function used in the uSalesOrderHeader trigger to set the starting account date.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetAccountingEndDate', NULL, NULL
GO
