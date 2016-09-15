SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [Production].[Document]
Print 'Create table [Production].[Document]'
GO
CREATE TABLE [Production].[Document] (
		[DocumentNode]        [hierarchyid] NOT NULL,
		[DocumentLevel]       AS ([DocumentNode].[GetLevel]()),
		[Title]               [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Owner]               [int] NOT NULL,
		[FolderFlag]          [bit] NOT NULL,
		[FileName]            [nvarchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FileExtension]       [nvarchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Revision]            [nchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ChangeNumber]        [int] NOT NULL,
		[Status]              [tinyint] NOT NULL,
		[DocumentSummary]     [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Document]            [varbinary](max) NULL,
		[rowguid]             [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [UQ__Document__F73921F763026E5E]
		UNIQUE
		NONCLUSTERED
		([rowguid]),
		CONSTRAINT [PK_Document_DocumentNode]
		PRIMARY KEY
		CLUSTERED
		([DocumentNode])
)
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'Document', 'CONSTRAINT', N'PK_Document_DocumentNode'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'INDEX', N'PK_Document_DocumentNode'
GO
-- Add check constraint CK_Document_Status to [Production].[Document]
Print 'Add check constraint CK_Document_Status to [Production].[Document]'
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [CK_Document_Status]
	CHECK
	([Status]>=(1) AND [Status]<=(3))
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Status] BETWEEN (1) AND (3)', 'SCHEMA', N'Production', 'TABLE', N'Document', 'CONSTRAINT', N'CK_Document_Status'
GO
ALTER TABLE [Production].[Document]
CHECK CONSTRAINT [CK_Document_Status]
GO
-- Add default constraint DF_Document_ChangeNumber to [Production].[Document]
Print 'Add default constraint DF_Document_ChangeNumber to [Production].[Document]'
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [DF_Document_ChangeNumber]
	DEFAULT ((0)) FOR [ChangeNumber]
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of 0', 'SCHEMA', N'Production', 'TABLE', N'Document', 'CONSTRAINT', N'DF_Document_ChangeNumber'
GO
-- Add default constraint DF_Document_FolderFlag to [Production].[Document]
Print 'Add default constraint DF_Document_FolderFlag to [Production].[Document]'
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [DF_Document_FolderFlag]
	DEFAULT ((0)) FOR [FolderFlag]
GO
-- Add default constraint DF_Document_ModifiedDate to [Production].[Document]
Print 'Add default constraint DF_Document_ModifiedDate to [Production].[Document]'
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [DF_Document_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'Document', 'CONSTRAINT', N'DF_Document_ModifiedDate'
GO
-- Add default constraint DF_Document_rowguid to [Production].[Document]
Print 'Add default constraint DF_Document_rowguid to [Production].[Document]'
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [DF_Document_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Production', 'TABLE', N'Document', 'CONSTRAINT', N'DF_Document_rowguid'
GO
-- Create foreign key FK_Document_Employee_Owner on [Production].[Document]
Print 'Create foreign key FK_Document_Employee_Owner on [Production].[Document]'
GO
ALTER TABLE [Production].[Document]
	WITH CHECK
	ADD CONSTRAINT [FK_Document_Employee_Owner]
	FOREIGN KEY ([Owner]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [Production].[Document]
	CHECK CONSTRAINT [FK_Document_Employee_Owner]

GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Employee.BusinessEntityID.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'CONSTRAINT', N'FK_Document_Employee_Owner'
GO
-- Create index AK_Document_DocumentLevel_DocumentNode on [Production].[Document]
Print 'Create index AK_Document_DocumentLevel_DocumentNode on [Production].[Document]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Document_DocumentLevel_DocumentNode]
	ON [Production].[Document] ([DocumentLevel], [DocumentNode])
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'INDEX', N'AK_Document_DocumentLevel_DocumentNode'
GO
-- Create index AK_Document_rowguid on [Production].[Document]
Print 'Create index AK_Document_rowguid on [Production].[Document]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Document_rowguid]
	ON [Production].[Document] ([rowguid])
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support FileStream.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'INDEX', N'AK_Document_rowguid'
GO
-- Create index IX_Document_FileName_Revision on [Production].[Document]
Print 'Create index IX_Document_FileName_Revision on [Production].[Document]'
GO
CREATE NONCLUSTERED INDEX [IX_Document_FileName_Revision]
	ON [Production].[Document] ([FileName], [Revision])
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'INDEX', N'IX_Document_FileName_Revision'
GO
-- Create fulltext index on [Production].[Document]
Print 'Create fulltext index on [Production].[Document]'
GO
CREATE FULLTEXT INDEX ON [Production].[Document]
	([DocumentSummary] LANGUAGE 1033, [Document] TYPE COLUMN [FileExtension] LANGUAGE 1033)
	KEY INDEX [PK_Document_DocumentNode]
	ON [AW2014FullTextCatalog]
	WITH CHANGE_TRACKING AUTO, STOPLIST SYSTEM
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Engineering change approval number.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'ChangeNumber'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Complete document.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'Document'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Depth in the document hierarchy.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'DocumentLevel'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Document records.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'DocumentNode'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Document abstract.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'DocumentSummary'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'File extension indicating the document type. For example, .doc or .txt.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'FileExtension'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'File name of the document', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'FileName'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'0 = This is a folder, 1 = This is a document.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'FolderFlag'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'ModifiedDate'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee who controls the document.  Foreign key to Employee.BusinessEntityID', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'Owner'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Revision number of the document. ', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'Revision'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Required for FileStream.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'rowguid'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'1 = Pending approval, 2 = Approved, 3 = Obsolete', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'Status'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Title of the document.', 'SCHEMA', N'Production', 'TABLE', N'Document', 'COLUMN', N'Title'
GO
-- Create extended property MS_Description on [Production].[Document]
Print 'Create extended property MS_Description on [Production].[Document]'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product maintenance documents.', 'SCHEMA', N'Production', 'TABLE', N'Document', NULL, NULL
GO
ALTER TABLE [Production].[Document] SET (LOCK_ESCALATION = TABLE)
GO
