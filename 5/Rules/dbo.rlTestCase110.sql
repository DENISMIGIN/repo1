-- Create Rule [dbo].[rlTestCase110]
Print 'Create Rule [dbo].[rlTestCase110]'
GO
/*@@objectName:[lTestDiff]..[rlTestCase110]*/

create rule rlTestCase110
as
@value > 1000 and @value < 2000
GO
