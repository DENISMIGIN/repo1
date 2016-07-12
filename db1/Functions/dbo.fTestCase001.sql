SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create function [dbo].[fTestCase001]
Print 'Create function [dbo].[fTestCase001]'
GO
create function fTestCase001
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
