<html>
	<head>
		<title>KC Games - Games Rated 4 Stars and Above</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	
	<body>
	
		<div id = "navbar">
		<a href="./">Home.</a> <a href="./Games.php">Games</a> <a href="./QueryReviews.php">Reviews.</a> <a href="./ThePlatforms.php">Platforms.</a> <a href="./DevelopmentStudios.php">Development Studios.</a> <a href="./SelectGame.php">New Review.</a>
		</div>

		<div id = "header">
			<IMG SRC="./images/header.png">
		</div>
	
		<div id = "content">
		<h4>"I would like to see all games with a rating of 4 or above."</h4>

		<?PHP
			ini_set('display_errors', 'On');
		
			$host = "localhost";
			$username = "S0300839";
			$password = "New2017";
			$database = "S0300839";
		
			// Create a new database connect object
			$dbcon = new mysqli($host, $username, $password, $database);
      
			// Check connection
			if (mysqli_connect_errno()) {
				printf("Connection failed: %s\n", mysqli_connect_error());
				exit();
			}
		
			// Form SQL query string
			$query = "SELECT g.Title, FLOOR(AVG(r.Star_Rating)) AS Star FROM Game g, Review r WHERE g.GameID = r.GameID GROUP BY g.Title HAVING Star >= 4 ORDER BY g.Title ASC";
		
			// Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
			
				// Display the table header
				echo '<table align="center" cellspacing="1" cellpadding="0">';
				echo '<tr>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Game Title</font></th>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Star Rating</font></th>';
			
				// Fetch object array
				while ($obj = $result->fetch_object()) {
				
					// Obtain one employee information
					$title = $obj->Title;
					$starrating = $obj->Star;
				
					// Display one row
					echo'</tr>';
					echo '<tr>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $title;
					echo '</font></td>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					for ($x = 0; $x < $starrating; $x++) {
						echo "<IMG SRC='./images/stars1.png'>";
					} 
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