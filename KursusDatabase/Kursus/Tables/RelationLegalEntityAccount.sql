CREATE TABLE [Kursus].[RelationLegalEntityAccount] (
    [LegalEntityID] UNIQUEIDENTIFIER NOT NULL,
    [AccountID]     UNIQUEIDENTIFIER NOT NULL,
    [RelationType]  VARCHAR (50)     NOT NULL,
    [RowValidFrom]  DATE             NOT NULL,
    [RowValidTo]    DATE             NOT NULL,
    PRIMARY KEY CLUSTERED ([LegalEntityID] ASC, [AccountID] ASC, [RelationType] ASC, [RowValidFrom] ASC)
);

