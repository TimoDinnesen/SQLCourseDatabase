
create view KursusViews.Planeter as select PlanetID
                              ,EnglishName as EngelskNavn
                              ,Mass	as Masse
                              ,Diameter	as Diameter
                              ,Gravity as Tyngdekraft
                              ,Density as Massefylde
                              ,EscapeVelocity as Undvigelseshastighed
                              ,DistanceFromSun as AfstandTilSolen
                              ,NumberOfMoons as Måneantal
                              ,case 
                               when Ringsystem = 'Y' then 'J'							  	 
							   else 'N'
							   end Ringsystem
from Kursus.Planets