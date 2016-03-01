SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[fTestCase042]
Print 'Create Function [dbo].[fTestCase042]'
GO
/*@@objectName:[dbo]..[fTestCase042]*/

create function fTestCase042
(
	@param1	as int
)
returns int
as
begin
	return(dbo.fTestCase042a(@param1) * 2)
end
GO
