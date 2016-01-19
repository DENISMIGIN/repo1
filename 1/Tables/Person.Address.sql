SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Person].[Address]
Print 'Create Table [Person].[Address]'
GO
CREATE TABLE [Person].[Address] (
		[AddressID]           [int] IDENTITY(1, 1) NOT FOR REPLICATION NOT NULL,
		[AddressLine1]        [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AddressLine2]        [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[City]                [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[StateProvinceID]     [int] NOT NULL,
		[PostalCode]          [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SpatialLocation]     [geography] NULL,
		[rowguid]             [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_Address_AddressID]
		PRIMARY KEY
		CLUSTERED
		([AddressID])
)
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'Address', 'CONSTRAINT', N'PK_Address_AddressID'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'INDEX', N'PK_Address_AddressID'
GO
-- Add Default Constraint DF_Address_ModifiedDate to [Person].[Address]
Print 'Add Default Constraint DF_Address_ModifiedDate to [Person].[Address]'
GO
ALTER TABLE [Person].[Address]
	ADD
	CONSTRAINT [DF_Address_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'Address', 'CONSTRAINT', N'DF_Address_ModifiedDate'
GO
-- Add Default Constraint DF_Address_rowguid to [Person].[Address]
Print 'Add Default Constraint DF_Address_rowguid to [Person].[Address]'
GO
ALTER TABLE [Person].[Address]
	ADD
	CONSTRAINT [DF_Address_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'Address', 'CONSTRAINT', N'DF_Address_rowguid'
GO
-- Create Foreign Key FK_Address_StateProvince_StateProvinceID on [Person].[Address]
Print 'Create Foreign Key FK_Address_StateProvince_StateProvinceID on [Person].[Address]'
GO
ALTER TABLE [Person].[Address]
	WITH CHECK
	ADD CONSTRAINT [FK_Address_StateProvince_StateProvinceID]
	FOREIGN KEY ([StateProvinceID]) REFERENCES [Person].[StateProvince] ([StateProvinceID])
ALTER TABLE [Person].[Address]
	CHECK CONSTRAINT [FK_Address_StateProvince_StateProvinceID]

GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing StateProvince.StateProvinceID.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'CONSTRAINT', N'FK_Address_StateProvince_StateProvinceID'
GO
-- Create Index AK_Address_rowguid on [Person].[Address]
Print 'Create Index AK_Address_rowguid on [Person].[Address]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Address_rowguid]
	ON [Person].[Address] ([rowguid])
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'INDEX', N'AK_Address_rowguid'
GO
-- Create Index IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode on [Person].[Address]
Print 'Create Index IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode on [Person].[Address]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode]
	ON [Person].[Address] ([AddressLine1], [AddressLine2], [City], [StateProvinceID], [PostalCode])
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'INDEX', N'IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode'
GO
-- Create Index IX_Address_StateProvinceID on [Person].[Address]
Print 'Create Index IX_Address_StateProvinceID on [Person].[Address]'
GO
CREATE NONCLUSTERED INDEX [IX_Address_StateProvinceID]
	ON [Person].[Address] ([StateProvinceID])
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'INDEX', N'IX_Address_StateProvinceID'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Address records.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'AddressID'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First street address line.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'AddressLine1'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Second street address line.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'AddressLine2'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the city.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'City'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Postal code for the street address.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'PostalCode'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Latitude and longitude of this address.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'SpatialLocation'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique identification number for the state or province. Foreign key to StateProvince table.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'StateProvinceID'
GO
-- Create Extended Property MS_Description on [Person].[Address]
Print 'Create Extended Property MS_Description on [Person].[Address]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Street address information for customers, employees, and vendors.', 'SCHEMA', N'Person', 'TABLE', N'Address', NULL, NULL
GO
ALTER TABLE [Person].[Address] SET (LOCK_ESCALATION = TABLE)
GO
