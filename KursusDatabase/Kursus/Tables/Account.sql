CREATE TABLE [Kursus].[Account] (
    [AccountID]               UNIQUEIDENTIFIER NOT NULL,
    [AccountType]             VARCHAR (50)     NULL,
    [CustomersNameForAccount] VARCHAR (150)    NULL,
    [Balance]                 DECIMAL (18, 2)  NOT NULL,
    [RowValidFrom]            DATE             NOT NULL,
    [RowValidTo]              DATE             NOT NULL,
    PRIMARY KEY CLUSTERED ([AccountID] ASC, [RowValidFrom] ASC)
);

