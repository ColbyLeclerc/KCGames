<html>
	<head>
		<title>Query #14 - All Games Released Between Date</title>
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
		<h4>"List all games released between January 1st, 2005 and January 1st, 2010"</h4>

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
			$query = "SELECT * FROM Game WHERE Release_Date BETWEEN '2005-01-01' AND '2010-01-01'";

			// Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
			
				// Display the table header
				echo '<table align="center" cellspacing="1" cellpadding="0">';
				echo '<tr>';
				echo '<th><font face="Arial,Helvetica,sans-serif">Highest Rated Game: </font></th>';
			
				// Fetch object array
				while ($obj = $result->fetch_object()) {
				
					$gameTitle = $obj->Title;
				
					// Display one row
					echo'</tr>';
					echo '<tr>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $gameTitle;
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
