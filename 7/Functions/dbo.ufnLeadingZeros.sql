SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[ufnLeadingZeros]
Print 'Create Function [dbo].[ufnLeadingZeros]'
GO

CREATE FUNCTION [dbo].[ufnLeadingZeros](
    @Value int
) 
RETURNS varchar(8) 
WITH SCHEMABINDING 
AS 
BEGIN
    DECLARE @ReturnValue varchar(8);

    SET @ReturnValue = CONVERT(varchar(8), @Value);
    SET @ReturnValue = REPLICATE('0', 8 - DATALENGTH(@ReturnValue)) + @ReturnValue;

    RETURN (@ReturnValue);
END;
GO
-- Create Extended Property MS_Description on [dbo].[ufnLeadingZeros]
Print 'Create Extended Property MS_Description on [dbo].[ufnLeadingZeros]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Scalar function used by the Sales.Customer table to help set the account number.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnLeadingZeros', NULL, NULL
GO
-- Create Extended Property MS_Description on [dbo].[ufnLeadingZeros]
Print 'Create Extended Property MS_Description on [dbo].[ufnLeadingZeros]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the scalar function ufnLeadingZeros. Enter a valid integer.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnLeadingZeros', 'PARAMETER', N'@Value'
GO
