SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Procedure [HumanResources].[uspUpdateEmployeeLogin]
Print 'Create Procedure [HumanResources].[uspUpdateEmployeeLogin]'
GO

CREATE PROCEDURE [HumanResources].[uspUpdateEmployeeLogin]
    @BusinessEntityID [int], 
    @OrganizationNode [hierarchyid],
    @LoginID [nvarchar](256),
    @JobTitle [nvarchar](50),
    @HireDate [datetime],
    @CurrentFlag [dbo].[Flag]
WITH EXECUTE AS CALLER
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        UPDATE [HumanResources].[Employee] 
        SET [OrganizationNode] = @OrganizationNode 
            ,[LoginID] = @LoginID 
            ,[JobTitle] = @JobTitle 
            ,[HireDate] = @HireDate 
            ,[CurrentFlag] = @CurrentFlag 
        WHERE [BusinessEntityID] = @BusinessEntityID;
    END TRY
    BEGIN CATCH
        EXECUTE [dbo].[uspLogError];
    END CATCH;
END;
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Updates the Employee table with the values specified in the input parameters for the given BusinessEntityID.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeeLogin', NULL, NULL
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeLogin. Enter a valid EmployeeID from the Employee table.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeeLogin', 'PARAMETER', N'@BusinessEntityID'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter the current flag for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeeLogin', 'PARAMETER', N'@CurrentFlag'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a hire date for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeeLogin', 'PARAMETER', N'@HireDate'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a title for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeeLogin', 'PARAMETER', N'@JobTitle'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a valid login for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeeLogin', 'PARAMETER', N'@LoginID'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeeLogin]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a valid ManagerID for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeeLogin', 'PARAMETER', N'@OrganizationNode'
GO
