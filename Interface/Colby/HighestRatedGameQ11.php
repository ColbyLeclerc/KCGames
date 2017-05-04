<html>
	<head>
		<title>Query #11 - Highest Rated Game</title>
	</head>
	
	<body>
	
		<link rel="stylesheet" type="text/css" href="style.css">
	
		<div id = "navbar">
		<a href="./">Home.</a> <a href="./Games.php">Games</a> <a href="./QueryReviews.php">Reviews.</a> <a href="./ThePlatforms.php">Platforms.</a> <a href="./DevelopmentStudios.php">Development Studios.</a> <a href="./SelectGame.php">New Review.</a>
		</div>

		<div id = "header">
			<IMG SRC="./images/header.png">
		</div>
	
		<div id = "content">
		<h4>"Whats the highest rated game?"</h4>

		<?PHP
		
			$host = "localhost";
			$username = "S0287447";
			$password = "New2017";
			$database = "S0287447";
			

		
			// Create a new database connect object
			$dbcon = new mysqli($host, $username, $password, $database);
      
			// Check connection
			if (mysqli_connect_errno()) {
				printf("Connection failed: %s\n", mysqli_connect_error());
				exit();
			}
		
			// Form SQL query string
			$query = "SELECT gm.Title as title, gm.Genre, gm.Description, MAX(rv.Star_Rating) as Rating FROM Game as gm, Review as rv WHERE rv.GameID = gm.GameID GROUP BY title, gm.Genre, gm.Description ORDER BY Rating DESC LIMIT 1";

			// Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
			
				// Display the table header
				echo '<table align="center" cellspacing="1" cellpadding="0">';
				echo '<tr>';
				echo '<th><font face="Arial,Helvetica,sans-serif">Highest Rated Game: </font></th>';
			
				// Fetch object array
				while ($obj = $result->fetch_object()) {
				
					$gameTitle = $obj->title;
					$gameRating = $obj->Rating;
				
					// Display one row
					echo'</tr>';
					echo '<tr>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo 'Game ', $gameTitle, ' is the highest rated game with a rating of <b>', $gameRating, '</b>';
					echo '</font></td>';
					echo '</tr>';				
				}
				
				echo '</table>';

				// free result set
				$result->close();
				
			}   // end of if
				
		?>
		
	</body>
</html>
