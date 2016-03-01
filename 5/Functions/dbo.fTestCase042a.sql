SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[fTestCase042a]
Print 'Create Function [dbo].[fTestCase042a]'
GO
/*@@objectName:[dbo]..[fTestCase042a]*/

CREATE function fTestCase042a
(
	@param1	as int
)
returns int
as
begin
	return(@param1 * @param1)
end
GO
