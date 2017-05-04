<html>
	<head>
		<title>Query #2 - Platform</title>
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
		<h4>"I would like to see the platforms that support this game."</h4>

		<?PHP
			ini_set('display_errors', 'On');
		
			$host = "localhost";
			$username = "S0300839";
			$password = "New2017";
			$database = "S0300839";
			$platform=$_POST['platform'];
		
			// Create a new database connect object
			$dbcon = new mysqli($host, $username, $password, $database);
      
			// Check connection
			if (mysqli_connect_errno()) {
				printf("Connection failed: %s\n", mysqli_connect_error());
				exit();
			}
		
			// Form SQL query string
			$query = "SELECT p.Name FROM Platform p, G_PlayedOn_P gp, Game g WHERE g.Title = '$platform' AND p.PlatformID = gp.PlatformID AND gp.GameID = (SELECT GameID FROM Game WHERE Title = '$platform')";
		
			// Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
			
				// Display the table header
				echo '<table align="center" cellspacing="1" cellpadding="0">';
				echo '<tr>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Platforms That Support '. $platform.'</font></th>';
			
				// Fetch object array
				while ($obj = $result->fetch_object()) {
				
					// Obtain one employee information
					$name = $obj->Name;
				
					// Display one row
					echo'</tr>';
					echo '<tr>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $name;
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