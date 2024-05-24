CREATE TABLE [Kursus].[AccountTransaction] (
    [TransactionID]   INT              NOT NULL,
    [TransactionTime] DATETIME2 (7)    NOT NULL,
    [FromAccount]     UNIQUEIDENTIFIER NOT NULL,
    [ToAccount]       UNIQUEIDENTIFIER NOT NULL,
    [Amount]          DECIMAL (18, 6)  NOT NULL
);

