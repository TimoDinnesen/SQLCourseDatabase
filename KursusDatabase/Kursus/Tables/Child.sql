CREATE TABLE [Kursus].[Child] (
    [ChildID]       CHAR (4)       NOT NULL,
    [FirstName]     VARCHAR (50)   NULL,
    [LastName]      VARCHAR (50)   NULL,
    [MotherID]      CHAR (4)       NULL,
    [Gender]        CHAR (1)       NULL,
    [Birthday]      DATE           NULL,
    [BirthHeightCM] DECIMAL (4, 2) NULL,
    [BirthWeightKG] DECIMAL (4, 3) NULL,
    PRIMARY KEY CLUSTERED ([ChildID] ASC)
);

