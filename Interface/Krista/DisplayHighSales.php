<html>
	<head>
		<title>KC Games - Games With 10,000 Units Sold or Above</title>
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
		<h4>"I would like to see all games with 10,000 units sold or above."</h4>

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
			$query = "SELECT DISTINCT g.Title, s.Units_Sold FROM `Game` g, `Sales` s WHERE s.Units_Sold >= 10000 AND g.GameID = s.GameID";
		
			// Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
			
				// Display the table header
				echo '<table align="center" cellspacing="1" cellpadding="0">';
				echo '<tr>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Game Title</font></th>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Units Sold</font></th>';
			
				// Fetch object array
				while ($obj = $result->fetch_object()) {
				
					// Obtain one employee information
					$title = $obj->Title;
					$unitssold = $obj->Units_Sold;
				
					// Display one row
					echo'</tr>';
					echo '<tr>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $title;
					echo '</font></td>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $unitssold;
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