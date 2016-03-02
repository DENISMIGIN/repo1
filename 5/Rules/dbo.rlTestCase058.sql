-- Create Rule [dbo].[rlTestCase058]
Print 'Create Rule [dbo].[rlTestCase058]'
GO
/*@@objectName:[dbo]..[rlTestCase058]*/

create rule rlTestCase058
as
@value > 1000 and @value < 2000
GO
