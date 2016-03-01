SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[fTestCase176]
Print 'Create Function [dbo].[fTestCase176]'
GO
/*@@objectName:[dbo]..[fTestCase176]*/

create function fTestCase176
()
returns money
as
begin
	return(10000)
end
GO
