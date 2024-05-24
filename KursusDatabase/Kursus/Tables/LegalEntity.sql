CREATE TABLE [Kursus].[LegalEntity] (
    [LegalEntityID]     UNIQUEIDENTIFIER NOT NULL,
    [FirstName]         VARCHAR (50)     NULL,
    [LastName]          VARCHAR (50)     NULL,
    [Birthday]          DATE             NULL,
    [NationalID]        VARCHAR (30)     NOT NULL,
    [NationalIDType]    VARCHAR (30)     NOT NULL,
    [NationalIDCountry] CHAR (2)         NOT NULL,
    [RowValidFrom]      DATE             NOT NULL,
    [RowValidTo]        DATE             NOT NULL,
    PRIMARY KEY CLUSTERED ([RowValidFrom] ASC)
);

