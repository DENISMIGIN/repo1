SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[fTestCase033a]
Print 'Create Function [dbo].[fTestCase033a]'
GO
/*@@objectName:[dbo]..[fTestCase033a]*/

create function fTestCase033a
(
	@param1		nvarchar(10),
	@param2		nvarchar(20)
)
returns nvarchar(60)
as
begin
	return(@param1 + @param2)
end
GO
