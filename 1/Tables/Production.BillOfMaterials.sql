﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[BillOfMaterials]
Print 'Create table [Production].[BillOfMaterials]'
GO
CREATE TABLE [Production].[BillOfMaterials] (
		[BillOfMaterialsID]     [int] IDENTITY(1, 1) NOT NULL,
		[ProductAssemblyID]     [int] NULL,
		[ComponentID]           [int] NOT NULL,
		[StartDate]             [datetime] NOT NULL,
		[EndDate]               [datetime] NULL,
		[UnitMeasureCode]       [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BOMLevel]              [smallint] NOT NULL,
		[PerAssemblyQty]        [decimal](8, 2) NOT NULL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_BillOfMaterials_BillOfMaterialsID]
		PRIMARY KEY
		NONCLUSTERED
		([BillOfMaterialsID])
)
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'PK_BillOfMaterials_BillOfMaterialsID'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'INDEX', N'PK_BillOfMaterials_BillOfMaterialsID'
GO
-- Add check constraint CK_BillOfMaterials_BOMLevel to [Production].[BillOfMaterials]
Print 'Add check constraint CK_BillOfMaterials_BOMLevel to [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_BOMLevel]
	CHECK
	([ProductAssemblyID] IS NULL AND [BOMLevel]=(0) AND [PerAssemblyQty]=(1.00) OR [ProductAssemblyID] IS NOT NULL AND [BOMLevel]>=(1))
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [ProductAssemblyID] IS NULL AND [BOMLevel] = (0) AND [PerAssemblyQty] = (1) OR [ProductAssemblyID] IS NOT NULL AND [BOMLevel] >= (1)', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'CK_BillOfMaterials_BOMLevel'
GO
ALTER TABLE [Production].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_BOMLevel]
GO
-- Add check constraint CK_BillOfMaterials_EndDate to [Production].[BillOfMaterials]
Print 'Add check constraint CK_BillOfMaterials_EndDate to [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_EndDate]
	CHECK
	([EndDate]>[StartDate] OR [EndDate] IS NULL)
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint EndDate] > [StartDate] OR [EndDate] IS NULL', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'CK_BillOfMaterials_EndDate'
GO
ALTER TABLE [Production].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_EndDate]
GO
-- Add check constraint CK_BillOfMaterials_PerAssemblyQty to [Production].[BillOfMaterials]
Print 'Add check constraint CK_BillOfMaterials_PerAssemblyQty to [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_PerAssemblyQty]
	CHECK
	([PerAssemblyQty]>=(1.00))
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [PerAssemblyQty] >= (1.00)', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'CK_BillOfMaterials_PerAssemblyQty'
GO
ALTER TABLE [Production].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_PerAssemblyQty]
GO
-- Add check constraint CK_BillOfMaterials_ProductAssemblyID to [Production].[BillOfMaterials]
Print 'Add check constraint CK_BillOfMaterials_ProductAssemblyID to [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_ProductAssemblyID]
	CHECK
	([ProductAssemblyID]<>[ComponentID])
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [ProductAssemblyID] <> [ComponentID]', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'CK_BillOfMaterials_ProductAssemblyID'
GO
ALTER TABLE [Production].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_ProductAssemblyID]
GO
-- Add default constraint DF_BillOfMaterials_ModifiedDate to [Production].[BillOfMaterials]
Print 'Add default constraint DF_BillOfMaterials_ModifiedDate to [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'DF_BillOfMaterials_ModifiedDate'
GO
-- Add default constraint DF_BillOfMaterials_PerAssemblyQty to [Production].[BillOfMaterials]
Print 'Add default constraint DF_BillOfMaterials_PerAssemblyQty to [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_PerAssemblyQty]
	DEFAULT ((1.00)) FOR [PerAssemblyQty]
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 1.0', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'DF_BillOfMaterials_PerAssemblyQty'
GO
-- Add default constraint DF_BillOfMaterials_StartDate to [Production].[BillOfMaterials]
Print 'Add default constraint DF_BillOfMaterials_StartDate to [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_StartDate]
	DEFAULT (getdate()) FOR [StartDate]
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'DF_BillOfMaterials_StartDate'
GO
-- Create foreign key FK_BillOfMaterials_Product_ComponentID on [Production].[BillOfMaterials]
Print 'Create foreign key FK_BillOfMaterials_Product_ComponentID on [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	WITH CHECK
	ADD CONSTRAINT [FK_BillOfMaterials_Product_ComponentID]
	FOREIGN KEY ([ComponentID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[BillOfMaterials]
	CHECK CONSTRAINT [FK_BillOfMaterials_Product_ComponentID]

GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ComponentID.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'FK_BillOfMaterials_Product_ComponentID'
GO
-- Create foreign key FK_BillOfMaterials_Product_ProductAssemblyID on [Production].[BillOfMaterials]
Print 'Create foreign key FK_BillOfMaterials_Product_ProductAssemblyID on [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	WITH CHECK
	ADD CONSTRAINT [FK_BillOfMaterials_Product_ProductAssemblyID]
	FOREIGN KEY ([ProductAssemblyID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[BillOfMaterials]
	CHECK CONSTRAINT [FK_BillOfMaterials_Product_ProductAssemblyID]

GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductAssemblyID.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'FK_BillOfMaterials_Product_ProductAssemblyID'
GO
-- Create foreign key FK_BillOfMaterials_UnitMeasure_UnitMeasureCode on [Production].[BillOfMaterials]
Print 'Create foreign key FK_BillOfMaterials_UnitMeasure_UnitMeasureCode on [Production].[BillOfMaterials]'
GO
ALTER TABLE [Production].[BillOfMaterials]
	WITH CHECK
	ADD CONSTRAINT [FK_BillOfMaterials_UnitMeasure_UnitMeasureCode]
	FOREIGN KEY ([UnitMeasureCode]) REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode])
ALTER TABLE [Production].[BillOfMaterials]
	CHECK CONSTRAINT [FK_BillOfMaterials_UnitMeasure_UnitMeasureCode]

GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing UnitMeasure.UnitMeasureCode.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'CONSTRAINT', N'FK_BillOfMaterials_UnitMeasure_UnitMeasureCode'
GO
-- Create index AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate on [Production].[BillOfMaterials]
Print 'Create index AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate on [Production].[BillOfMaterials]'
GO
CREATE UNIQUE CLUSTERED INDEX [AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate]
	ON [Production].[BillOfMaterials] ([ProductAssemblyID], [ComponentID], [StartDate])
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'INDEX', N'AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate'
GO
-- Create index IX_BillOfMaterials_UnitMeasureCode on [Production].[BillOfMaterials]
Print 'Create index IX_BillOfMaterials_UnitMeasureCode on [Production].[BillOfMaterials]'
GO
CREATE NONCLUSTERED INDEX [IX_BillOfMaterials_UnitMeasureCode]
	ON [Production].[BillOfMaterials] ([UnitMeasureCode])
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'INDEX', N'IX_BillOfMaterials_UnitMeasureCode'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for BillOfMaterials records.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'BillOfMaterialsID'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates the depth the component is from its parent (AssemblyID).', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'BOMLevel'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Component identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'ComponentID'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the component stopped being used in the assembly item.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'EndDate'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Quantity of the component needed to create the assembly.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'PerAssemblyQty'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Parent product identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'ProductAssemblyID'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the component started being used in the assembly item.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'StartDate'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Standard code identifying the unit of measure for the quantity.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', 'COLUMN', N'UnitMeasureCode'
GO
-- Create extended property MS_Description on [Production].[BillOfMaterials]
Print 'Create extended property MS_Description on [Production].[BillOfMaterials]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Items required to make bicycles and bicycle subassemblies. It identifies the heirarchical relationship between a parent product and its components.', 'SCHEMA', N'Production', 'TABLE', N'BillOfMaterials', NULL, NULL
GO
ALTER TABLE [Production].[BillOfMaterials] SET (LOCK_ESCALATION = TABLE)
GO
