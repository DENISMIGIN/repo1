SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Function [dbo].[fTestCase101]
Print 'Create Function [dbo].[fTestCase101]'
GO
/*@@objectName:[dbo]..[fTestCase101]*/

create function fTestCase101
(
	@param1		varchar(30),
	@param2		varchar(30)
)
returns int
as
begin
	return(columnproperty(object_id(@param1), @param2, 'precision'))
end
GO
