 ID | Raw Query
--------------------------------
  1 | SELECT DISTINCT g.Title, g.Release_Date, s.Total_Revenue, s.Unit_Price, ds.Studio_Name
				FROM Game g, G_CreatedAt_DS gds, Development_Studio ds, G_PlayedOn_P gp, Platform p, Sales s
				WHERE g.Title = '$game' AND s.GameID = (SELECT GameID FROM Game WHERE Title = '$game') AND 
				ds.StudioID = gds.StudioID AND gds.GameID = (SELECT GameID FROM Game WHERE Title = '$game')
	   SELECT GROUP_CONCAT(p1.Name SEPARATOR ', ') AS Platforms
				FROM Platform p1, G_PlayedOn_P gp1, Game g1 WHERE g1.Title = '$game' AND p1.PlatformID = gp1.PlatformID AND 
				gp1.GameID = (SELECT GameID FROM Game WHERE Title = '$game') GROUP BY g1.Title
  2 | SELECT p.Name FROM Platform p, G_PlayedOn_P gp, Game g WHERE g.Title = '$platform' AND p.PlatformID = gp.PlatformID AND gp.GameID = (SELECT GameID FROM Game WHERE Title = '$platform')
  3 | SELECT g.Title FROM Development_Studio ds, G_CreatedAt_DS gds, Game g WHERE ds.Studio_Name = '".$devstu."' AND gds.GameID = g.GameID AND gds.StudioID = (SELECT StudioID FROM Development_Studio WHERE Studio_Name = '".$devstu."')
  4 | SELECT ds.Studio_Name, ds.Address FROM Development_Studio ds WHERE ds.Studio_Name = '".$devstu."' AND ds.StudioID = (SELECT StudioID FROM Development_Studio WHERE Studio_Name = '".$devstu."'
  5 | SELECT g.Title, FLOOR(AVG(r.Star_Rating)) AS Star FROM Game g, Review r WHERE g.GameID = r.GameID GROUP BY g.Title HAVING Star >= 4 ORDER BY g.Title ASC
  6 | SELECT DISTINCT g.Title, s.Units_Sold FROM `Game` g, `Sales` s WHERE s.Units_Sold >= 10000 AND g.GameID = s.GameID
  7 | SELECT AVG(rv.Star_Rating) FROM Game as gm, Review as rv WHERE gm.GameID = rv.GameID AND gm.GameID = '';
  8 | SELECT * FROM Game WHERE Title LIKE 'A%'
  9 | SELECT Genre FROM Game WHERE GameID = 2
 10 | SELECT gm.Title as title, gm.Genre, gm.Description, MAX(rv.Star_Rating) as Rating FROM Game as gm, Review as rv WHERE rv.GameID = gm.GameID GROUP BY title, gm.Genre, gm.Description ORDER BY Rating DESC LIMIT 1
 11 | SELECT gm.Title, rv.Description, rv.Star_Rating, rv.Author FROM Game as gm, Review as rv WHERE gm.GameID = rv.GameID AND gm.GameID = 51 GROUP BY rv.Star_Rating, gm.Title, rv.Description, rv.Author ORDER BY rv.Star_Rating DESC LIMIT 1 
 12 | SELECT * FROM Game WHERE Stock_Status = 'In Stock'
 13 | SELECT * FROM Game WHERE Release_Date BETWEEN '2005-01-01' AND '2010-01-01'
 14 | SELECT * FROM Review WHERE GameID = 2 ORDER BY Post_Date DESC
 15 | SELECT * FROM Review WHERE GameID = 2 ORDER BY Rating ASC