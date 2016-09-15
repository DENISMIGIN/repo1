﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create function [dbo].[ufnGetDocumentStatusText]
Print 'Create function [dbo].[ufnGetDocumentStatusText]'
GO

CREATE FUNCTION [dbo].[ufnGetDocumentStatusText](@Status [tinyint])
RETURNS [nvarchar](16) 
AS 
-- Returns the sales order status text representation for the status value.
BEGIN
    DECLARE @ret [nvarchar](16);

    SET @ret = 
        CASE @Status
            WHEN 1 THEN N'Pending approval'
            WHEN 2 THEN N'Approved'
            WHEN 3 THEN N'Obsolete'
            ELSE N'** Invalid **'
        END;
    
    RETURN @ret
END;
GO
-- Create extended property MS_Description on [dbo].[ufnGetDocumentStatusText]
Print 'Create extended property MS_Description on [dbo].[ufnGetDocumentStatusText]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Scalar function returning the text representation of the Status column in the Document table.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetDocumentStatusText', NULL, NULL
GO
-- Create extended property MS_Description on [dbo].[ufnGetDocumentStatusText]
Print 'Create extended property MS_Description on [dbo].[ufnGetDocumentStatusText]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the scalar function ufnGetDocumentStatusText. Enter a valid integer.', 'SCHEMA', N'dbo', 'FUNCTION', N'ufnGetDocumentStatusText', 'PARAMETER', N'@Status'
GO
