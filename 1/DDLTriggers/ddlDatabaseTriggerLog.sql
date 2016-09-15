SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create trigger [ddlDatabaseTriggerLog]
Print 'Create trigger [ddlDatabaseTriggerLog]'
GO

CREATE TRIGGER [ddlDatabaseTriggerLog] ON DATABASE 
FOR DDL_DATABASE_LEVEL_EVENTS AS 
BEGIN
    SET NOCOUNT ON;

    DECLARE @data XML;
    DECLARE @schema sysname;
    DECLARE @object sysname;
    DECLARE @eventType sysname;

    SET @data = EVENTDATA();
    SET @eventType = @data.value('(/EVENT_INSTANCE/EventType)[1]', 'sysname');
    SET @schema = @data.value('(/EVENT_INSTANCE/SchemaName)[1]', 'sysname');
    SET @object = @data.value('(/EVENT_INSTANCE/ObjectName)[1]', 'sysname') 

    IF @object IS NOT NULL
        PRINT '  ' + @eventType + ' - ' + @schema + '.' + @object;
    ELSE
        PRINT '  ' + @eventType + ' - ' + @schema;

    IF @eventType IS NULL
        PRINT CONVERT(nvarchar(max), @data);

    INSERT [dbo].[DatabaseLog] 
        (
        [PostTime], 
        [DatabaseUser], 
        [Event], 
        [Schema], 
        [Object], 
        [TSQL], 
        [XmlEvent]
        ) 
    VALUES 
        (
        GETDATE(), 
        CONVERT(sysname, CURRENT_USER), 
        @eventType, 
        CONVERT(sysname, @schema), 
        CONVERT(sysname, @object), 
        @data.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'nvarchar(max)'), 
        @data
        );
END;
GO
-- Create extended property MS_Description on [ddlDatabaseTriggerLog]
Print 'Create extended property MS_Description on [ddlDatabaseTriggerLog]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Database trigger to audit all of the DDL changes made to the AdventureWorks 2014 database.', 'TRIGGER', N'ddlDatabaseTriggerLog', NULL, NULL, NULL, NULL
GO
-- Set Trigger [ddlDatabaseTriggerLog] To Disabled State
Print 'Set Trigger [ddlDatabaseTriggerLog] To Disabled State'

GO
DISABLE TRIGGER [ddlDatabaseTriggerLog]
	ON DATABASE
GO
