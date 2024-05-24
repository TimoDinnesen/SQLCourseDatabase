CREATE TABLE [Kursus].[Planets] (
    [PlanetID]        DECIMAL (2)     NOT NULL,
    [EnglishName]     VARCHAR (50)    DEFAULT (NULL) NULL,
    [Mass]            DECIMAL (10, 4) DEFAULT (NULL) NULL,
    [Diameter]        INT             DEFAULT (NULL) NULL,
    [Gravity]         INT             DEFAULT (NULL) NULL,
    [Density]         INT             DEFAULT (NULL) NULL,
    [EscapeVelocity]  INT             DEFAULT (NULL) NULL,
    [DistanceFromSun] DECIMAL (10, 4) DEFAULT (NULL) NULL,
    [NumberOfMoons]   INT             DEFAULT (NULL) NULL,
    [Ringsystem]      CHAR (1)        DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([PlanetID] ASC)
);

