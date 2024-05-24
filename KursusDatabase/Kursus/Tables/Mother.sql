CREATE TABLE [Kursus].[Mother] (
    [MotherID]      CHAR (4)        NOT NULL,
    [FirstName]     VARCHAR (50)    NULL,
    [LastName]      VARCHAR (50)    NULL,
    [MonthlyBudget] DECIMAL (15, 2) NULL,
    PRIMARY KEY CLUSTERED ([MotherID] ASC)
);

