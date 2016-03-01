SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[fTestCase175]
Print 'Create Function [dbo].[fTestCase175]'
GO
/*@@objectName:[dbo]..[fTestCase175]*/

create function fTestCase175
(
	@param1	int
)
returns int
as
begin
	return(@param1 + 100)
end
GO
