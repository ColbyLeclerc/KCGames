<html>
	<head>
		<title>Query #15 - Newest Review for Game</title>
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
		<h4>"I would like to see the newest review for game ‘x’"</h4>

		<?PHP
		
			$host = "localhost";
			$username = "S0287447";
			$password = "New2017";
			$database = "S0287447";
			$postResult=explode("-", $_POST['game']);
			//Game ID
			$game=$postResult[0];
			//Game title
			$gameTitle=$postResult[1];
			

		
			// Create a new database connect object
			$dbcon = new mysqli($host, $username, $password, $database);
      
			// Check connection
			if (mysqli_connect_errno()) {
				printf("Connection failed: %s\n", mysqli_connect_error());
				exit();
			}
		
			// Form SQL query string
			$query = "SELECT * FROM Review WHERE GameID = $game ORDER BY Post_Date DESC";

			// Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
			
				// Display the table header
				echo '<table align="center" cellspacing="1" cellpadding="0">';
				echo '<tr>';
				echo '<th><font face="Arial,Helvetica,sans-serif">', $gameTitle,'\'s newest review: </font></th>';
			
				$rowcount=mysqli_num_rows($result);

 					if ($rowcount == 0){
 						echo 'No Reviews exist for this game';
 					}

				// Fetch object array
				while ($obj = $result->fetch_object()) {
				
					$author = $obj->Author;
					$title = $obj->Title;
					$rating = $obj->Star_Rating;
					$reviewRating = $obj->Rating;
					$description = $obj->Description;
				
					// Display one row
					echo'</tr>';
					echo '<tr>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo 'Review written by:  ', $author, ' with the title <b>',$title,'</b><br>Review Rating: ',$reviewRating,'<br>Star Rating: ',$rating,'<br>Review Content: ', $description, '</b>';
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
