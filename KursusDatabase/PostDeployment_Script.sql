/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO Kursus.Planets (PlanetID, EnglishName, Mass, Diameter, Density, Gravity, EscapeVelocity, DistanceFromSun, NumberOfMoons, RingSystem) VALUES
	(1, 'Mercury', 0.3300, 4879, 5427, 4, 4, 57.90, 0, 'N'),
	(2, 'Venus', 4.8700, 12104, 5243, 9, 10, 108.20, 0, 'N'),
	(3, 'Earth', 5.9700, 12756, 5514, 10, 11, 149.60, 1, 'N'),
	(4, 'Mars', 0.6420, 6792, 3933, 4, 5, 227.90, 2, 'N'),
	(5, 'Jupiter', 1898.0000, 142984, 1326, 23, 60, 778.60, 67, 'Y'),
	(6, 'Saturn', 568.0000, 120536, 687, 9, 36, 1433.50, 62, 'Y'),
	(7, 'Uranus', 86.8000, 51118, 1271, 9, 21, 2872.50, 27, 'Y'),
	(8, 'Neptune', 102.0000, 49528, 1638, 11, 24, 4495.10, 14, 'Y');
	
go

INSERT INTO Kursus.Child (ChildID, FirstName, LastName, MotherID, Gender, Birthday, BirthHeightCM, BirthWeightKG) VALUES
	('AA23', 'Athena' , 'Andrews'  , 'CC33', 'F', '2011-06-23',45.0,2.500), 
	('AE25', 'Ben'    , 'Andrews'  , 'CC33', 'M', '2011-03-12',60.0,4.500),
	('FA45', 'Charly' , 'Andrews'  , 'CC33', 'M', '2015-07-13',55.4,3.620),
	('HH13', 'Maria'  , 'Olsen'    , 'EA12', 'F', '2011-03-12',54.5,3.830),
	('JJ65', 'Charly' , 'Olsen'    , 'EA12', 'M', '2012-06-23',53.7,4.240),
	('KI67', 'Laura'  , 'Larsen'   , 'JU76', 'F', '2015-02-28',56.4,3.550),
	('ER87', 'Sandra' , 'Larsen'   , 'JU76', 'F', '2018-07-23',57.2,3.360),
	('AB65', 'Laura'  , 'Henderson', 'WE22', 'F', '2014-11-21',45.4,2.870),	
	('BC67', 'Lars '  , 'Jensen'   , 'KL78', 'M', '2011-03-12',56.5,3.730),
	('CD56', 'Laura'  , 'Jensen'   , 'KL78', 'F', '2013-12-21',48.0,3.750),
	('DE45', 'Lars'   , 'Jensen'   , 'QW25', 'M', '2015-10-06',51.1,3.660),
	('EG34', 'Sandra' , 'Jensen'   , 'QW25', 'F', '2017-10-09',58.4,3.620),
	('FH23', 'Kim'    , 'Jensen'   , 'ZX55', 'M', '2012-03-24',56.0,3.550),
	('GC12', 'Maggie' , 'Jensen'   , 'ZX55', 'F', '2014-10-16',48.9,3.570),
	('KL42', 'Marcus' , 'Anderson' , 'YR55', 'M', '2013-07-15',49.6,3.880),
	('KI52', 'Jimmy'  , 'Carlson'  , 'UT55', 'M', '2014-10-16',50.4,3.990)
go

INSERT INTO Kursus.Mother (MotherID, FirstName, LastName, MonthlyBudget) VALUES
	('CC33', 'Betty'  , 'Andrews'  , 10000), 
	('EA12', 'Nadie'  , 'Olsen'    , 25000),
	('JU76', 'Andrea' , 'Larsen'   , 25000),
	('WE22', 'Rebecca', 'Henderson', 8000),	
	('KL78', 'Ruth'   , 'Jensen'   , 50000),
	('QW25', 'Sandie' , 'Jensen'   , 12300),
	('ZX55', 'Jen'    , 'Jensen'   , 17000),
	('YR55', 'Beth'   , 'Anderson' , 7000),
	('UT55', 'Rebecca', 'Carlson'  , 12500)
go


INSERT INTO [Kursus].[LegalEntity] values
           ('189ABB13-7766-4492-84F8-5B740195909E' ,'Hans'         ,'Hansen'                         ,'1966-05-01','010566-1235','CPR','DK','2011-01-10','2021-02-17')
		  ,('189ABB13-7766-4492-84F8-5B740195909E' ,'Hans-Kristian','Hansen'                         ,'1966-05-01','010566-1235','CPR','DK','2021-02-18','9999-12-31')
		  ,('E2BB3059-82EE-47B0-9B1E-3C77138E632B' ,'Bjørn'        ,'Jensen'                         ,'1998-03-03','030398-1039','CPR','DK','2000-01-10','2021-07-24')
		  ,('E2BB3059-82EE-47B0-9B1E-3C77138E632B' ,'Bjørn'        ,'Ørn'                            ,'1998-03-03','030398-1139','CPR','DK','2021-07-25','2021-07-25')
		  ,('E2BB3059-82EE-47B0-9B1E-3C77138E632B' ,'Bjørn'        ,'Jensen'                         ,'1998-03-03','030398-1139','CPR','DK','2021-07-26','9999-12-31')
		  ,('F6380B19-F999-47A1-A9D0-1771574B046B' ,'Leonora'      ,'Christine'                      ,'1997-08-23','230897-7766','CPR','DK','2010-01-05','2021-05-15')
		  ,('E2CA2DFA-BB47-4C3F-A2DC-3668CD048F06' ,'Sasha'        ,'Christensen'                    ,'1985-11-09','091185-1234','CPR','DK','2010-04-24','2021-04-16')
		  ,('E2CA2DFA-BB47-4C3F-A2DC-3668CD048F06' ,'Sasha'        ,'Christensen'                    ,'1985-11-09','091185-1235','CPR','DK','2021-04-17','9999-12-31')
		  ,('4AEF1270-2EBA-4F99-8300-CD1E3C009E3A' ,'Jens'         ,'Nørregaard'                     ,'1951-04-04','040451-4545','CPR','DK','2003-03-14','9999-12-31')
		  ,('1D3D5158-6B77-4EE6-907C-E317A601B3FE' ,'Maria'        ,'Hansen'                         ,'1952-07-09','090752-6634','CPR','DK','2000-04-04','2012-10-12')
		  ,('1D3D5158-6B77-4EE6-907C-E317A601B3FE' ,'Maria'        ,'Nørregaard'                     ,'1952-07-09','090752-6634','CPR','DK','2012-10-13','9999-12-31')		  		  		  
		  ,('A9D8C271-A426-4A9F-89D7-D07E9D0C3A77' ,'Markus'       ,'Laursen'                        ,'1995-03-25','250395-0231','CPR','DK','2010-07-23','9999-12-31')
		  ,('EA4F7F22-3444-41A4-9A07-D0DB1491547B' ,'Mikkel'       ,'Hedegaard'                      ,'1985-11-09','091185-1235','CPR','DK','2012-03-05','9999-12-31')		   
		  ,('5566F315-57BD-4D77-AC50-22B6CEFFA6AF' ,'Tine'         ,'Jensen'                         ,'1982-02-24','240282-1214','CPR','DK','2000-01-05','2001-06-07')		   
		  ,('5566F315-57BD-4D77-AC50-22B6CEFFA6AF' ,'Tilde'        ,'Jensen'                         ,'1985-02-24','240282-1214','CPR','DK','2001-06-08','2004-12-10')		   
		  ,('5566F315-57BD-4D77-AC50-22B6CEFFA6AF' ,'Marie-Tilde'  ,'Eskildsen'                      ,'1985-02-24','240282-1214','CPR','DK','2004-12-11','2006-06-12')		   
		  ,('5566F315-57BD-4D77-AC50-22B6CEFFA6AF' ,'Marie-Liuise' ,'Von. Eskildsen'                 ,'1985-02-24','240282-1214','CPR','DK','2006-06-13','2006-07-13')		   
		  ,('5566F315-57BD-4D77-AC50-22B6CEFFA6AF' ,'Maria-Louise Abildgaard' ,'Eskildsen'           ,'1985-02-24','240282-1214','CPR','DK','2006-07-14','2006-08-12')		   
		  ,('5566F315-57BD-4D77-AC50-22B6CEFFA6AF' ,'Maria-Louise Abildgaard' ,'Nørgaard-Eskildsen'  ,'1985-02-24','240282-1214','CPR','DK','2006-08-13','2020-05-31')		   
		  ,('5566F315-57BD-4D77-AC50-22B6CEFFA6AF' ,'Mariluu'      ,'Anderson'                       ,'1985-02-24','433-43-373565','SSN','US','2020-06-01','9999-12-31')	
		  
GO


INSERT [Kursus].[Account]  VALUES (N'cbcdd56b-8323-4a26-a852-08f71888f023', N'33', N'Arv', CAST(300000.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'2021-05-15' AS Date))
INSERT [Kursus].[Account]  VALUES (N'55f291e0-4328-443d-a7e6-1884c6378484', N'33', N'Lønkonto', CAST(256142.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'032f7ec2-61bb-46ba-89a2-1d9e78054fdc', N'33', N'Lønkonto', CAST(256142.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(100.00 AS Decimal(18, 2)), CAST(N'2013-01-03' AS Date), CAST(N'2013-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(1100.00 AS Decimal(18, 2)), CAST(N'2013-03-28' AS Date), CAST(N'2013-04-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(2100.00 AS Decimal(18, 2)), CAST(N'2013-05-28' AS Date), CAST(N'2013-06-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(3100.00 AS Decimal(18, 2)), CAST(N'2013-07-28' AS Date), CAST(N'2013-08-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(4100.00 AS Decimal(18, 2)), CAST(N'2013-09-28' AS Date), CAST(N'2013-10-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(5100.00 AS Decimal(18, 2)), CAST(N'2013-11-28' AS Date), CAST(N'2013-12-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(6100.00 AS Decimal(18, 2)), CAST(N'2014-01-28' AS Date), CAST(N'2014-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(7100.00 AS Decimal(18, 2)), CAST(N'2014-03-28' AS Date), CAST(N'2014-04-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(8100.00 AS Decimal(18, 2)), CAST(N'2014-05-28' AS Date), CAST(N'2014-06-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(9100.00 AS Decimal(18, 2)), CAST(N'2014-07-28' AS Date), CAST(N'2014-08-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(10100.00 AS Decimal(18, 2)), CAST(N'2014-09-28' AS Date), CAST(N'2014-10-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(11100.00 AS Decimal(18, 2)), CAST(N'2014-11-28' AS Date), CAST(N'2014-12-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(12100.00 AS Decimal(18, 2)), CAST(N'2015-01-28' AS Date), CAST(N'2015-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(13100.00 AS Decimal(18, 2)), CAST(N'2015-03-28' AS Date), CAST(N'2015-04-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(14100.00 AS Decimal(18, 2)), CAST(N'2015-05-28' AS Date), CAST(N'2015-06-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(15100.00 AS Decimal(18, 2)), CAST(N'2015-07-28' AS Date), CAST(N'2015-08-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(16100.00 AS Decimal(18, 2)), CAST(N'2015-09-28' AS Date), CAST(N'2015-10-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(17100.00 AS Decimal(18, 2)), CAST(N'2015-11-28' AS Date), CAST(N'2015-12-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(18100.00 AS Decimal(18, 2)), CAST(N'2016-01-28' AS Date), CAST(N'2016-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(19100.00 AS Decimal(18, 2)), CAST(N'2016-03-28' AS Date), CAST(N'2016-04-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(20100.00 AS Decimal(18, 2)), CAST(N'2016-05-28' AS Date), CAST(N'2016-06-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(21100.00 AS Decimal(18, 2)), CAST(N'2016-07-28' AS Date), CAST(N'2016-08-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(22100.00 AS Decimal(18, 2)), CAST(N'2016-09-28' AS Date), CAST(N'2016-10-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(23100.00 AS Decimal(18, 2)), CAST(N'2016-11-28' AS Date), CAST(N'2016-12-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(24100.00 AS Decimal(18, 2)), CAST(N'2017-01-28' AS Date), CAST(N'2017-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(25100.00 AS Decimal(18, 2)), CAST(N'2017-03-28' AS Date), CAST(N'2017-04-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(26100.00 AS Decimal(18, 2)), CAST(N'2017-05-28' AS Date), CAST(N'2017-06-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(27100.00 AS Decimal(18, 2)), CAST(N'2017-07-28' AS Date), CAST(N'2017-08-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(28100.00 AS Decimal(18, 2)), CAST(N'2017-09-28' AS Date), CAST(N'2017-10-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(29100.00 AS Decimal(18, 2)), CAST(N'2017-11-28' AS Date), CAST(N'2017-12-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(30100.00 AS Decimal(18, 2)), CAST(N'2018-01-28' AS Date), CAST(N'2018-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(31100.00 AS Decimal(18, 2)), CAST(N'2018-03-28' AS Date), CAST(N'2018-04-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(32100.00 AS Decimal(18, 2)), CAST(N'2018-05-28' AS Date), CAST(N'2018-06-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(33100.00 AS Decimal(18, 2)), CAST(N'2018-07-28' AS Date), CAST(N'2018-08-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(34100.00 AS Decimal(18, 2)), CAST(N'2018-09-28' AS Date), CAST(N'2018-10-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(35100.00 AS Decimal(18, 2)), CAST(N'2018-11-28' AS Date), CAST(N'2018-12-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(36100.00 AS Decimal(18, 2)), CAST(N'2019-01-28' AS Date), CAST(N'2019-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(37100.00 AS Decimal(18, 2)), CAST(N'2019-03-28' AS Date), CAST(N'2019-04-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(38100.00 AS Decimal(18, 2)), CAST(N'2019-05-28' AS Date), CAST(N'2019-06-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'4c709d5e-372f-4be3-bab2-53450b0c064a', N'33', N'Rejseopsparing', CAST(39100.00 AS Decimal(18, 2)), CAST(N'2019-07-28' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(0.00 AS Decimal(18, 2)), CAST(N'2005-01-01' AS Date), CAST(N'2012-10-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(497.66 AS Decimal(18, 2)), CAST(N'2012-11-01' AS Date), CAST(N'2012-11-02' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(113.93 AS Decimal(18, 2)), CAST(N'2012-11-03' AS Date), CAST(N'2012-11-04' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(295.45 AS Decimal(18, 2)), CAST(N'2012-11-05' AS Date), CAST(N'2012-11-06' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(-20.74 AS Decimal(18, 2)), CAST(N'2012-11-07' AS Date), CAST(N'2012-11-08' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(-382.86 AS Decimal(18, 2)), CAST(N'2012-11-09' AS Date), CAST(N'2012-11-10' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(12.48 AS Decimal(18, 2)), CAST(N'2012-11-11' AS Date), CAST(N'2012-11-11' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(192.21 AS Decimal(18, 2)), CAST(N'2012-11-12' AS Date), CAST(N'2012-11-12' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(390.44 AS Decimal(18, 2)), CAST(N'2012-11-13' AS Date), CAST(N'2012-11-13' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(-55.54 AS Decimal(18, 2)), CAST(N'2012-11-14' AS Date), CAST(N'2012-11-14' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(226.28 AS Decimal(18, 2)), CAST(N'2012-11-15' AS Date), CAST(N'2012-11-15' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(329.00 AS Decimal(18, 2)), CAST(N'2012-11-16' AS Date), CAST(N'2012-11-16' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(-8.25 AS Decimal(18, 2)), CAST(N'2012-11-17' AS Date), CAST(N'2012-11-17' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(337.42 AS Decimal(18, 2)), CAST(N'2012-11-18' AS Date), CAST(N'2012-11-18' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(215.76 AS Decimal(18, 2)), CAST(N'2012-11-19' AS Date), CAST(N'2012-11-19' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(318.11 AS Decimal(18, 2)), CAST(N'2012-11-20' AS Date), CAST(N'2012-11-20' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(50.41 AS Decimal(18, 2)), CAST(N'2012-11-21' AS Date), CAST(N'2012-11-21' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(84.37 AS Decimal(18, 2)), CAST(N'2012-11-22' AS Date), CAST(N'2012-11-22' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(411.83 AS Decimal(18, 2)), CAST(N'2012-11-23' AS Date), CAST(N'2012-11-23' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(589.75 AS Decimal(18, 2)), CAST(N'2012-11-24' AS Date), CAST(N'2012-11-24' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(694.52 AS Decimal(18, 2)), CAST(N'2012-11-25' AS Date), CAST(N'2012-11-25' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1166.45 AS Decimal(18, 2)), CAST(N'2012-11-26' AS Date), CAST(N'2012-11-26' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1182.10 AS Decimal(18, 2)), CAST(N'2012-11-27' AS Date), CAST(N'2012-11-27' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1355.39 AS Decimal(18, 2)), CAST(N'2012-11-28' AS Date), CAST(N'2012-11-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(881.08 AS Decimal(18, 2)), CAST(N'2012-11-29' AS Date), CAST(N'2012-11-29' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(564.67 AS Decimal(18, 2)), CAST(N'2012-11-30' AS Date), CAST(N'2012-11-30' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(758.71 AS Decimal(18, 2)), CAST(N'2012-12-01' AS Date), CAST(N'2012-12-01' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(985.73 AS Decimal(18, 2)), CAST(N'2012-12-02' AS Date), CAST(N'2012-12-02' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(679.14 AS Decimal(18, 2)), CAST(N'2012-12-03' AS Date), CAST(N'2012-12-03' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1029.29 AS Decimal(18, 2)), CAST(N'2012-12-04' AS Date), CAST(N'2012-12-04' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(596.20 AS Decimal(18, 2)), CAST(N'2012-12-05' AS Date), CAST(N'2012-12-05' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1070.19 AS Decimal(18, 2)), CAST(N'2012-12-06' AS Date), CAST(N'2012-12-06' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1466.20 AS Decimal(18, 2)), CAST(N'2012-12-07' AS Date), CAST(N'2012-12-07' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1392.24 AS Decimal(18, 2)), CAST(N'2012-12-08' AS Date), CAST(N'2012-12-08' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1126.08 AS Decimal(18, 2)), CAST(N'2012-12-09' AS Date), CAST(N'2012-12-09' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(852.29 AS Decimal(18, 2)), CAST(N'2012-12-10' AS Date), CAST(N'2012-12-10' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(898.17 AS Decimal(18, 2)), CAST(N'2012-12-11' AS Date), CAST(N'2012-12-11' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c20a7bd6-8f75-4a29-9f31-5735ba8c6815', N'33', N'Lønkonto', CAST(1369.11 AS Decimal(18, 2)), CAST(N'2012-12-12' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Min opsparing', CAST(1000.00 AS Decimal(18, 2)), CAST(N'2011-04-04' AS Date), CAST(N'2011-04-30' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Min opsparing', CAST(2000.00 AS Decimal(18, 2)), CAST(N'2011-05-01' AS Date), CAST(N'2011-05-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Min opsparing', CAST(3000.00 AS Decimal(18, 2)), CAST(N'2011-06-01' AS Date), CAST(N'2011-06-30' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Min opsparing', CAST(4000.00 AS Decimal(18, 2)), CAST(N'2011-07-01' AS Date), CAST(N'2011-07-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Min opsparing', CAST(5000.00 AS Decimal(18, 2)), CAST(N'2011-08-01' AS Date), CAST(N'2011-08-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Min opsparing', CAST(6000.00 AS Decimal(18, 2)), CAST(N'2011-09-01' AS Date), CAST(N'2011-09-30' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Min opsparing', CAST(7000.00 AS Decimal(18, 2)), CAST(N'2011-10-01' AS Date), CAST(N'2011-10-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Vores opsparing', CAST(8000.00 AS Decimal(18, 2)), CAST(N'2011-11-01' AS Date), CAST(N'2011-11-30' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Vores opsparing', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2011-12-01' AS Date), CAST(N'2011-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Vores opsparing', CAST(5444.00 AS Decimal(18, 2)), CAST(N'2012-01-01' AS Date), CAST(N'2012-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Vores opsparing', CAST(3044.00 AS Decimal(18, 2)), CAST(N'2012-03-01' AS Date), CAST(N'2012-03-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Vores opsparing', CAST(2055.00 AS Decimal(18, 2)), CAST(N'2012-04-01' AS Date), CAST(N'2012-05-13' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e873184d-dc2b-4239-bd95-5fcb2663f33b', N'33', N'Vores opsparing', CAST(14.00 AS Decimal(18, 2)), CAST(N'2012-05-14' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(0.00 AS Decimal(18, 2)), CAST(N'2013-01-03' AS Date), CAST(N'2013-01-05' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(458.47 AS Decimal(18, 2)), CAST(N'2013-01-06' AS Date), CAST(N'2013-01-06' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(805.02 AS Decimal(18, 2)), CAST(N'2013-01-07' AS Date), CAST(N'2013-01-07' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(767.57 AS Decimal(18, 2)), CAST(N'2013-01-08' AS Date), CAST(N'2013-01-08' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(584.82 AS Decimal(18, 2)), CAST(N'2013-01-09' AS Date), CAST(N'2013-01-09' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(1226.73 AS Decimal(18, 2)), CAST(N'2013-01-10' AS Date), CAST(N'2013-01-10' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(1068.36 AS Decimal(18, 2)), CAST(N'2013-01-11' AS Date), CAST(N'2013-01-11' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-773.72 AS Decimal(18, 2)), CAST(N'2013-01-12' AS Date), CAST(N'2013-01-12' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(1645.46 AS Decimal(18, 2)), CAST(N'2013-01-13' AS Date), CAST(N'2013-01-13' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-4.21 AS Decimal(18, 2)), CAST(N'2013-01-14' AS Date), CAST(N'2013-01-14' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-1418.23 AS Decimal(18, 2)), CAST(N'2013-01-15' AS Date), CAST(N'2013-01-15' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-910.13 AS Decimal(18, 2)), CAST(N'2013-01-16' AS Date), CAST(N'2013-01-16' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-1826.80 AS Decimal(18, 2)), CAST(N'2013-01-17' AS Date), CAST(N'2013-01-17' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-1719.54 AS Decimal(18, 2)), CAST(N'2013-01-18' AS Date), CAST(N'2013-01-18' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(822.60 AS Decimal(18, 2)), CAST(N'2013-01-19' AS Date), CAST(N'2013-01-19' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(1045.81 AS Decimal(18, 2)), CAST(N'2013-01-20' AS Date), CAST(N'2013-01-20' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(3753.24 AS Decimal(18, 2)), CAST(N'2013-01-21' AS Date), CAST(N'2013-01-21' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(6335.32 AS Decimal(18, 2)), CAST(N'2013-01-22' AS Date), CAST(N'2013-01-22' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(5598.01 AS Decimal(18, 2)), CAST(N'2013-01-23' AS Date), CAST(N'2013-01-23' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(4901.16 AS Decimal(18, 2)), CAST(N'2013-01-24' AS Date), CAST(N'2013-01-24' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(6474.12 AS Decimal(18, 2)), CAST(N'2013-01-25' AS Date), CAST(N'2013-01-25' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(5694.28 AS Decimal(18, 2)), CAST(N'2013-01-26' AS Date), CAST(N'2013-01-26' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(8368.26 AS Decimal(18, 2)), CAST(N'2013-01-27' AS Date), CAST(N'2013-01-27' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(9218.38 AS Decimal(18, 2)), CAST(N'2013-01-28' AS Date), CAST(N'2013-01-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(12107.14 AS Decimal(18, 2)), CAST(N'2013-01-29' AS Date), CAST(N'2013-01-29' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(11815.79 AS Decimal(18, 2)), CAST(N'2013-01-30' AS Date), CAST(N'2013-01-30' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(12368.10 AS Decimal(18, 2)), CAST(N'2013-01-31' AS Date), CAST(N'2013-01-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(11248.13 AS Decimal(18, 2)), CAST(N'2013-02-01' AS Date), CAST(N'2013-02-01' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(12393.44 AS Decimal(18, 2)), CAST(N'2013-02-02' AS Date), CAST(N'2013-02-02' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(14730.26 AS Decimal(18, 2)), CAST(N'2013-02-03' AS Date), CAST(N'2013-02-03' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(12902.00 AS Decimal(18, 2)), CAST(N'2013-02-04' AS Date), CAST(N'2013-02-04' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(11450.25 AS Decimal(18, 2)), CAST(N'2013-02-05' AS Date), CAST(N'2013-02-05' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(12407.57 AS Decimal(18, 2)), CAST(N'2013-02-06' AS Date), CAST(N'2013-02-06' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(10978.56 AS Decimal(18, 2)), CAST(N'2013-02-07' AS Date), CAST(N'2013-02-07' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(12868.29 AS Decimal(18, 2)), CAST(N'2013-02-08' AS Date), CAST(N'2013-02-08' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(14329.41 AS Decimal(18, 2)), CAST(N'2013-02-09' AS Date), CAST(N'2013-02-09' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(13163.57 AS Decimal(18, 2)), CAST(N'2013-02-10' AS Date), CAST(N'2013-02-10' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(12297.27 AS Decimal(18, 2)), CAST(N'2013-02-11' AS Date), CAST(N'2013-02-11' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(11330.33 AS Decimal(18, 2)), CAST(N'2013-02-12' AS Date), CAST(N'2013-02-12' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(10639.31 AS Decimal(18, 2)), CAST(N'2013-02-13' AS Date), CAST(N'2013-02-13' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(8160.80 AS Decimal(18, 2)), CAST(N'2013-02-14' AS Date), CAST(N'2013-02-14' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(9660.67 AS Decimal(18, 2)), CAST(N'2013-02-15' AS Date), CAST(N'2013-02-15' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(7153.10 AS Decimal(18, 2)), CAST(N'2013-02-16' AS Date), CAST(N'2013-02-16' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(6241.73 AS Decimal(18, 2)), CAST(N'2013-02-17' AS Date), CAST(N'2013-02-17' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(6513.44 AS Decimal(18, 2)), CAST(N'2013-02-18' AS Date), CAST(N'2013-02-18' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(5168.05 AS Decimal(18, 2)), CAST(N'2013-02-19' AS Date), CAST(N'2013-02-19' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(2756.74 AS Decimal(18, 2)), CAST(N'2013-02-20' AS Date), CAST(N'2013-02-20' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(4203.14 AS Decimal(18, 2)), CAST(N'2013-02-21' AS Date), CAST(N'2013-02-21' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(3997.54 AS Decimal(18, 2)), CAST(N'2013-02-22' AS Date), CAST(N'2013-02-22' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(3885.32 AS Decimal(18, 2)), CAST(N'2013-02-23' AS Date), CAST(N'2013-02-23' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(5166.87 AS Decimal(18, 2)), CAST(N'2013-02-24' AS Date), CAST(N'2013-02-24' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(6046.60 AS Decimal(18, 2)), CAST(N'2013-02-25' AS Date), CAST(N'2013-02-25' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(4711.26 AS Decimal(18, 2)), CAST(N'2013-02-26' AS Date), CAST(N'2013-02-26' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(4907.62 AS Decimal(18, 2)), CAST(N'2013-02-27' AS Date), CAST(N'2013-02-27' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(5660.91 AS Decimal(18, 2)), CAST(N'2013-02-28' AS Date), CAST(N'2013-02-28' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(5259.03 AS Decimal(18, 2)), CAST(N'2013-03-01' AS Date), CAST(N'2013-03-01' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(3169.59 AS Decimal(18, 2)), CAST(N'2013-03-02' AS Date), CAST(N'2013-03-02' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(1075.94 AS Decimal(18, 2)), CAST(N'2013-03-03' AS Date), CAST(N'2013-03-03' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-1048.39 AS Decimal(18, 2)), CAST(N'2013-03-04' AS Date), CAST(N'2013-03-04' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-1896.92 AS Decimal(18, 2)), CAST(N'2013-03-05' AS Date), CAST(N'2013-03-05' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-4889.99 AS Decimal(18, 2)), CAST(N'2013-03-06' AS Date), CAST(N'2013-03-06' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-4182.79 AS Decimal(18, 2)), CAST(N'2013-03-07' AS Date), CAST(N'2013-03-07' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-2618.24 AS Decimal(18, 2)), CAST(N'2013-03-08' AS Date), CAST(N'2013-03-08' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-2450.82 AS Decimal(18, 2)), CAST(N'2013-03-09' AS Date), CAST(N'2013-03-09' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-3314.99 AS Decimal(18, 2)), CAST(N'2013-03-10' AS Date), CAST(N'2013-03-10' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-3436.17 AS Decimal(18, 2)), CAST(N'2013-03-11' AS Date), CAST(N'2013-03-11' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-5325.64 AS Decimal(18, 2)), CAST(N'2013-03-12' AS Date), CAST(N'2013-03-12' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-3906.76 AS Decimal(18, 2)), CAST(N'2013-03-13' AS Date), CAST(N'2013-03-13' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-3584.23 AS Decimal(18, 2)), CAST(N'2013-03-14' AS Date), CAST(N'2013-03-14' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-2498.57 AS Decimal(18, 2)), CAST(N'2013-03-15' AS Date), CAST(N'2013-03-15' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-2057.20 AS Decimal(18, 2)), CAST(N'2013-03-16' AS Date), CAST(N'2013-03-16' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(-250.96 AS Decimal(18, 2)), CAST(N'2013-03-17' AS Date), CAST(N'2013-03-17' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c5d9468f-f930-44a2-abc6-762d1369dca0', N'33', N'Familie', CAST(861.02 AS Decimal(18, 2)), CAST(N'2013-03-18' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'9d5f540c-2182-45ad-9a1a-8e75d3857501', N'33', N'Moster Oda', CAST(256143.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'93ebf01f-034c-4b46-94c0-a35aa92d6da4', N'33', N'Mikkels Pulje', CAST(256141.00 AS Decimal(18, 2)), CAST(N'2010-07-23' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'1f2cbcdb-91a5-495b-aecb-a71c52322e21', N'33', N'Pulje 42', CAST(56148.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'2003-03-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'1f2cbcdb-91a5-495b-aecb-a71c52322e21', N'33', N'Pulje 42', CAST(12148.00 AS Decimal(18, 2)), CAST(N'2003-04-01' AS Date), CAST(N'2007-08-08' AS Date))
INSERT [Kursus].[Account]  VALUES (N'1f2cbcdb-91a5-495b-aecb-a71c52322e21', N'33', N'Pulje 42', CAST(46148.00 AS Decimal(18, 2)), CAST(N'2007-08-09' AS Date), CAST(N'2009-10-12' AS Date))
INSERT [Kursus].[Account]  VALUES (N'1f2cbcdb-91a5-495b-aecb-a71c52322e21', N'33', N'Pulje 42', CAST(76148.00 AS Decimal(18, 2)), CAST(N'2009-10-13' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'e500f0b4-8878-44f8-97b6-b2f46efa754f', N'42', N'Børneopsparing', CAST(56145.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'9e0afa70-3378-4f8c-884c-b92ca1b50ac4', N'55', N'Bodegaen af 1852', CAST(25614.00 AS Decimal(18, 2)), CAST(N'2013-02-24' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'a0a04b53-2ee4-4da0-a54d-e8ec057bda24', N'33', N'Kagekonto', CAST(256144.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'268b9870-6438-4e7f-878c-ee7486a6b834', N'33', N'Lønkonto', CAST(56145.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'9999-12-31' AS Date))
INSERT [Kursus].[Account]  VALUES (N'c3778a25-75a0-4961-9993-f8098fa2516f', N'33', N'Lønkonto', CAST(25647.00 AS Decimal(18, 2)), CAST(N'2000-01-01' AS Date), CAST(N'9999-12-31' AS Date))


/* Jens Nørregaard ejer sin konto hele dens levetid. */
insert into [Kursus].[RelationLegalEntityAccount] values ('4AEF1270-2EBA-4F99-8300-CD1E3C009E3A' , 'e873184d-dc2b-4239-bd95-5fcb2663f33b', 'Owner' , '2011-04-04' , '9999-12-31')

/* Maria får også ejerskab over Jens' konto efter de bliver gift. */
insert into [Kursus].[RelationLegalEntityAccount] values ('1D3D5158-6B77-4EE6-907C-E317A601B3FE' , 'e873184d-dc2b-4239-bd95-5fcb2663f33b', 'Owner' , '2011-11-01' , '9999-12-31')

/* Hans Hansen ejer rejseopsparingen. */
insert into [Kursus].[RelationLegalEntityAccount] values ('189ABB13-7766-4492-84F8-5B740195909E' , '4c709d5e-372f-4be3-bab2-53450b0c064a', 'Owner' , '2013-01-03' , '9999-12-31')

/* Bjørn Ørn har en af de ligegyldige konti */
insert into [Kursus].[RelationLegalEntityAccount] values ('E2BB3059-82EE-47B0-9B1E-3C77138E632B' , 'c3778a25-75a0-4961-9993-f8098fa2516f', 'Owner' , '2000-01-01' , '9999-12-31')

/* Leonora Christine får en ligegyldig konto */
insert into [Kursus].[RelationLegalEntityAccount] values ('F6380B19-F999-47A1-A9D0-1771574B046B' , 'cbcdd56b-8323-4a26-a852-08f71888f023', 'Owner' , '2000-01-01' , '9999-12-31')


/* Mikkel får Pulje 42 og Mikkels Pulje*/
insert into [Kursus].[RelationLegalEntityAccount] values ( 'EA4F7F22-3444-41A4-9A07-D0DB1491547B' , '93ebf01f-034c-4b46-94c0-a35aa92d6da4', 'Owner' , '2000-01-01' , '9999-12-31')

insert into [Kursus].[RelationLegalEntityAccount] values ( 'EA4F7F22-3444-41A4-9A07-D0DB1491547B' , '1f2cbcdb-91a5-495b-aecb-a71c52322e21', 'Owner' , '2000-01-01' , '9999-12-31')
											

