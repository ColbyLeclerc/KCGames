<html>
	<head>
		<title>Query #8 - Total Rating</title>
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
		<h4>"I would like to see the total rating for the game"</h4>
		
		<?PHP
		
		$username="S0287447";
		$password="New2017";
		$database="S0287447";
		$host="localhost";
		
		// Create a new database connect object
		$dbcon=new mysqli($host, $username, $password, $database);
		  
			// Check connection
			// if($dbcon->connect_error) die ($dbcon->connect_error);
			if (mysqli_connect_errno()) {
				printf("Connection failed: %s\n", mysqli_connect_error());
				exit();
			}
			
			// Form SQL query string
			$query = "SELECT Title, GameID FROM Game ORDER BY Title ASC";
			
			//Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
				$num=mysqli_num_rows($result);
			}
		
		mysqli_close();
		
	?>
	
	<form method="post" action="TotalRatingQ8.php">
	
	<h5>Please choose a game: <br><select name="game">
	
	<?PHP
			
		while ($obj = $result->fetch_object()) {
					$gameTitle = $obj->Title;
					$gameID = $obj->GameID;

					echo "<option>", $gameID,'-',$gameTitle,"\n";
		}
		
	?>
	</select>

	<input type="submit" value="Get Game">
	
	</form>
	</body>
</html>