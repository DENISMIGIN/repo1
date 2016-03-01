SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[fTestCase268]
Print 'Create Function [dbo].[fTestCase268]'
GO
/*@@objectName:[dbo]..[fTestCase268]*/

create function dbo.fTestCase268
(
	@param1	as int
)
returns int
as
begin
	return(@param1 * @param1)
end
GO
