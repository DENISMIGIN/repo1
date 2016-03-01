SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[fTestCase157]
Print 'Create Function [dbo].[fTestCase157]'
GO
/*@@objectName:[dbo]..[fTestCase157]*/

create function fTestCase157
(
	@param1	as int
)
returns int
as
begin
	return(@param1 * @param1)
end
GO
