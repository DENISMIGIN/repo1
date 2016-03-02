-- Create Rule [dbo].[rlTestCase059]
Print 'Create Rule [dbo].[rlTestCase059]'
GO
/*@@objectName:[dbo]..[rlTestCase059]*/

create rule rlTestCase059
as
upper(@value) in ('A', 'B', 'C', 'D', 'E')
GO
