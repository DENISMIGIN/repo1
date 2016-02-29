SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create Table [Person].[Person]
Print 'Create Table [Person].[Person]'
GO
CREATE TABLE [Person].[Person] (
		[BusinessEntityID]          [int] NOT NULL,
		[PersonType]                [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[NameStyle]                 [dbo].[NameStyle] NOT NULL,
		[Title]                     [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FirstName]                 [dbo].[Name] NOT NULL,
		[MiddleName]                [dbo].[Name] NULL,
		[LastName]                  [dbo].[Name] NOT NULL,
		[Suffix]                    [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EmailPromotion]            [int] NOT NULL,
		[AdditionalContactInfo]     [xml](CONTENT [Person].[AdditionalContactInfoSchemaCollection]) NULL,
		[Demographics]              [xml](CONTENT [Person].[IndividualSurveySchemaCollection]) NULL,
		[rowguid]                   [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]              [datetime] NOT NULL,
		CONSTRAINT [PK_Person_BusinessEntityID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID])
)
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'Person', 'CONSTRAINT', N'PK_Person_BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'INDEX', N'PK_Person_BusinessEntityID'
GO
-- Add Check Constraint CK_Person_EmailPromotion to [Person].[Person]
Print 'Add Check Constraint CK_Person_EmailPromotion to [Person].[Person]'
GO
ALTER TABLE [Person].[Person]
	ADD
	CONSTRAINT [CK_Person_EmailPromotion]
	CHECK
	([EmailPromotion]>=(0) AND [EmailPromotion]<=(2))
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [EmailPromotion] >= (0) AND [EmailPromotion] <= (2)', 'SCHEMA', N'Person', 'TABLE', N'Person', 'CONSTRAINT', N'CK_Person_EmailPromotion'
GO
ALTER TABLE [Person].[Person]
CHECK CONSTRAINT [CK_Person_EmailPromotion]
GO
-- Add Check Constraint CK_Person_PersonType to [Person].[Person]
Print 'Add Check Constraint CK_Person_PersonType to [Person].[Person]'
GO
ALTER TABLE [Person].[Person]
	ADD
	CONSTRAINT [CK_Person_PersonType]
	CHECK
	([PersonType] IS NULL OR (upper([PersonType])='GC' OR upper([PersonType])='SP' OR upper([PersonType])='EM' OR upper([PersonType])='IN' OR upper([PersonType])='VC' OR upper([PersonType])='SC'))
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [PersonType] is one of SC, VC, IN, EM or SP.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'CONSTRAINT', N'CK_Person_PersonType'
GO
ALTER TABLE [Person].[Person]
CHECK CONSTRAINT [CK_Person_PersonType]
GO
-- Add Default Constraint DF_Person_EmailPromotion to [Person].[Person]
Print 'Add Default Constraint DF_Person_EmailPromotion to [Person].[Person]'
GO
ALTER TABLE [Person].[Person]
	ADD
	CONSTRAINT [DF_Person_EmailPromotion]
	DEFAULT ((0)) FOR [EmailPromotion]
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'Person', 'TABLE', N'Person', 'CONSTRAINT', N'DF_Person_EmailPromotion'
GO
-- Add Default Constraint DF_Person_ModifiedDate to [Person].[Person]
Print 'Add Default Constraint DF_Person_ModifiedDate to [Person].[Person]'
GO
ALTER TABLE [Person].[Person]
	ADD
	CONSTRAINT [DF_Person_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Person', 'TABLE', N'Person', 'CONSTRAINT', N'DF_Person_ModifiedDate'
GO
-- Add Default Constraint DF_Person_NameStyle to [Person].[Person]
Print 'Add Default Constraint DF_Person_NameStyle to [Person].[Person]'
GO
ALTER TABLE [Person].[Person]
	ADD
	CONSTRAINT [DF_Person_NameStyle]
	DEFAULT ((0)) FOR [NameStyle]
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'Person', 'TABLE', N'Person', 'CONSTRAINT', N'DF_Person_NameStyle'
GO
-- Add Default Constraint DF_Person_rowguid to [Person].[Person]
Print 'Add Default Constraint DF_Person_rowguid to [Person].[Person]'
GO
ALTER TABLE [Person].[Person]
	ADD
	CONSTRAINT [DF_Person_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'Person', 'CONSTRAINT', N'DF_Person_rowguid'
GO
-- Create Foreign Key FK_Person_BusinessEntity_BusinessEntityID on [Person].[Person]
Print 'Create Foreign Key FK_Person_BusinessEntity_BusinessEntityID on [Person].[Person]'
GO
ALTER TABLE [Person].[Person]
	WITH CHECK
	ADD CONSTRAINT [FK_Person_BusinessEntity_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[BusinessEntity] ([BusinessEntityID])
ALTER TABLE [Person].[Person]
	CHECK CONSTRAINT [FK_Person_BusinessEntity_BusinessEntityID]

GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing BusinessEntity.BusinessEntityID.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'CONSTRAINT', N'FK_Person_BusinessEntity_BusinessEntityID'
GO
-- Create Index AK_Person_rowguid on [Person].[Person]
Print 'Create Index AK_Person_rowguid on [Person].[Person]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Person_rowguid]
	ON [Person].[Person] ([rowguid])
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'INDEX', N'AK_Person_rowguid'
GO
-- Create Index IX_Person_LastName_FirstName_MiddleName on [Person].[Person]
Print 'Create Index IX_Person_LastName_FirstName_MiddleName on [Person].[Person]'
GO
CREATE NONCLUSTERED INDEX [IX_Person_LastName_FirstName_MiddleName]
	ON [Person].[Person] ([LastName], [FirstName], [MiddleName])
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Additional contact information about the person stored in xml format. ', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'AdditionalContactInfo'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Person records.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'BusinessEntityID'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Personal information such as hobbies, and income collected from online shoppers. Used for sales analysis.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'Demographics'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'0 = Contact does not wish to receive e-mail promotions, 1 = Contact does wish to receive e-mail promotions from AdventureWorks, 2 = Contact does wish to receive e-mail promotions from AdventureWorks and selected partners. ', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'EmailPromotion'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First name of the person.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'FirstName'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last name of the person.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'LastName'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Middle name or middle initial of the person.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'MiddleName'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'ModifiedDate'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'0 = The data in FirstName and LastName are stored in western style (first name, last name) order.  1 = Eastern style (last name, first name) order.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'NameStyle'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary type of person: SC = Store Contact, IN = Individual (retail) customer, SP = Sales person, EM = Employee (non-sales), VC = Vendor contact, GC = General contact', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'PersonType'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'rowguid'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Surname suffix. For example, Sr. or Jr.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'Suffix'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A courtesy title. For example, Mr. or Ms.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'COLUMN', N'Title'
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Human beings involved with AdventureWorks: employees, customer contacts, and vendor contacts.', 'SCHEMA', N'Person', 'TABLE', N'Person', NULL, NULL
GO
-- Create Xml Index PXML_Person_AddContact on [Person].[Person]
Print 'Create Xml Index PXML_Person_AddContact on [Person].[Person]'
GO
CREATE PRIMARY XML INDEX [PXML_Person_AddContact]
	ON [Person].[Person] ([AdditionalContactInfo])
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary XML index.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'INDEX', N'PXML_Person_AddContact'
GO
-- Create Xml Index PXML_Person_Demographics on [Person].[Person]
Print 'Create Xml Index PXML_Person_Demographics on [Person].[Person]'
GO
CREATE PRIMARY XML INDEX [PXML_Person_Demographics]
	ON [Person].[Person] ([Demographics])
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary XML index.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'INDEX', N'PXML_Person_Demographics'
GO
-- Create Xml Index XMLPATH_Person_Demographics on [Person].[Person]
Print 'Create Xml Index XMLPATH_Person_Demographics on [Person].[Person]'
GO
CREATE XML INDEX [XMLPATH_Person_Demographics]
	ON [Person].[Person] ([Demographics])
	USING XML INDEX [PXML_Person_Demographics]
	FOR PATH
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary XML index for path.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'INDEX', N'XMLPATH_Person_Demographics'
GO
-- Create Xml Index XMLPROPERTY_Person_Demographics on [Person].[Person]
Print 'Create Xml Index XMLPROPERTY_Person_Demographics on [Person].[Person]'
GO
CREATE XML INDEX [XMLPROPERTY_Person_Demographics]
	ON [Person].[Person] ([Demographics])
	USING XML INDEX [PXML_Person_Demographics]
	FOR PROPERTY
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary XML index for property.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'INDEX', N'XMLPROPERTY_Person_Demographics'
GO
-- Create Xml Index XMLVALUE_Person_Demographics on [Person].[Person]
Print 'Create Xml Index XMLVALUE_Person_Demographics on [Person].[Person]'
GO
CREATE XML INDEX [XMLVALUE_Person_Demographics]
	ON [Person].[Person] ([Demographics])
	USING XML INDEX [PXML_Person_Demographics]
	FOR VALUE
GO
-- Create Extended Property MS_Description on [Person].[Person]
Print 'Create Extended Property MS_Description on [Person].[Person]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Secondary XML index for value.', 'SCHEMA', N'Person', 'TABLE', N'Person', 'INDEX', N'XMLVALUE_Person_Demographics'
GO
ALTER TABLE [Person].[Person] SET (LOCK_ESCALATION = TABLE)
GO
