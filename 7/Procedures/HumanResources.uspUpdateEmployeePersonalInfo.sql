SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Create Procedure [HumanResources].[uspUpdateEmployeePersonalInfo]
Print 'Create Procedure [HumanResources].[uspUpdateEmployeePersonalInfo]'
GO

CREATE PROCEDURE [HumanResources].[uspUpdateEmployeePersonalInfo]
    @BusinessEntityID [int], 
    @NationalIDNumber [nvarchar](15), 
    @BirthDate [datetime], 
    @MaritalStatus [nchar](1), 
    @Gender [nchar](1)
WITH EXECUTE AS CALLER
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        UPDATE [HumanResources].[Employee] 
        SET [NationalIDNumber] = @NationalIDNumber 
            ,[BirthDate] = @BirthDate 
            ,[MaritalStatus] = @MaritalStatus 
            ,[Gender] = @Gender 
        WHERE [BusinessEntityID] = @BusinessEntityID;
    END TRY
    BEGIN CATCH
        EXECUTE [dbo].[uspLogError];
    END CATCH;
END;
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Updates the Employee table with the values specified in the input parameters for the given EmployeeID.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeePersonalInfo', NULL, NULL
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a birth date for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeePersonalInfo', 'PARAMETER', N'@BirthDate'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeePersonalInfo. Enter a valid BusinessEntityID from the HumanResources.Employee table.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeePersonalInfo', 'PARAMETER', N'@BusinessEntityID'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a gender for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeePersonalInfo', 'PARAMETER', N'@Gender'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a marital status for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeePersonalInfo', 'PARAMETER', N'@MaritalStatus'
GO
-- Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]
Print 'Create Extended Property MS_Description on [HumanResources].[uspUpdateEmployeePersonalInfo]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Input parameter for the stored procedure uspUpdateEmployeeHireInfo. Enter a national ID for the employee.', 'SCHEMA', N'HumanResources', 'PROCEDURE', N'uspUpdateEmployeePersonalInfo', 'PARAMETER', N'@NationalIDNumber'
GO
