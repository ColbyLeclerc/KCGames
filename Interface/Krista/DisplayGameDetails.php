<html>
	<head>
		<title>KC Games - Game Details for <?PHP $game=$_POST['game']; echo $game; ?></title>
	</head>
	
	<body>
	
		<div id = "navbar">
		<a href="./">Home.</a> <a href="./Games.php">Games</a> <a href="./QueryReviews.php">Reviews.</a> <a href="./ThePlatforms.php">Platforms.</a> <a href="./DevelopmentStudios.php">Development Studios.</a> <a href="./SelectGame.php">New Review.</a>
		</div>

		<div id = "header">
			<IMG SRC="./images/header.png">
		</div>
	
		<div id = "content">
		<h4>Game Details for <?PHP echo $game;?></h4>
		<link rel="stylesheet" type="text/css" href="style.css">

		<?PHP
			ini_set('display_errors', 'On');
		
			$host = "localhost";
			$username = "S0300839";
			$password = "New2017";
			$database = "S0300839";
			$game=addslashes($_POST['game']);
		
			// Create a new database connect object
			$dbcon = new mysqli($host, $username, $password, $database);
      
			// Check connection
			if (mysqli_connect_errno()) {
				printf("Connection failed: %s\n", mysqli_connect_error());
				exit();
			}
		
			// Form SQL query string
			$query = "SELECT DISTINCT g.Title, g.Release_Date, s.Total_Revenue, s.Unit_Price, ds.Studio_Name
				FROM Game g, G_CreatedAt_DS gds, Development_Studio ds, G_PlayedOn_P gp, Platform p, Sales s
				WHERE g.Title = '$game' AND s.GameID = (SELECT GameID FROM Game WHERE Title = '$game') AND 
				ds.StudioID = gds.StudioID AND gds.GameID = (SELECT GameID FROM Game WHERE Title = '$game')";
				
			$query2 = "SELECT GROUP_CONCAT(p1.Name SEPARATOR ', ') AS Platforms
				FROM Platform p1, G_PlayedOn_P gp1, Game g1 WHERE g1.Title = '$game' AND p1.PlatformID = gp1.PlatformID AND 
				gp1.GameID = (SELECT GameID FROM Game WHERE Title = '$game') GROUP BY g1.Title";
				
			if ($result1 = $dbcon->query($query2)) {
				$platforms = mysqli_fetch_assoc($result1);
				
			}
		
			// Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
			
				// Display the table header
				echo '<table align="center" cellspacing="1" cellpadding="0">';
				echo '<tr>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Title</font></th>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Release Date</font></th>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Total Revenue</font></th>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Unit Price</font></th>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Studio Name</font></th>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Platforms</font></th>';
			
				// Fetch object array
				while ($obj = $result->fetch_object()) {
				
					// Obtain one employee information
					$title = $obj->Title;
					$release = $obj->Release_Date;
					$revenue = $obj->Total_Revenue;
					$price = $obj->Unit_Price;
					$dsname = $obj->Studio_Name;
				
					// Display one row
					echo'</tr>';
					echo '<tr>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $title;
					echo '</font></td>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $release;
					echo '</font></td>';
					echo '<td><font face="Arial, Helvetica, sans-serif">$';
					echo $revenue;
					echo '</font></td>';
					echo '<td><font face="Arial, Helvetica, sans-serif">$';
					echo $price;
					echo '</font></td>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $dsname;
					echo '</font></td>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $platforms['Platforms'];
					echo '</font></td>';
					echo '</tr>';				
				}
				
				echo '</table>';

				// free result set
				$result->close();
				
			}   // end of if
		?>
		
	</div>
		
	</body>
</html>