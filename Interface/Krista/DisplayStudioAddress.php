<html>
	<head>
		<title>KC Games - <?PHP $devstu=$_POST['devstu']; echo $devstu; ?> Address</title>
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
		<h4>"I would like to see the development studio's location."</h4>

		<?PHP
			ini_set('display_errors', 'On');
		
			$host = "localhost";
			$username = "S0300839";
			$password = "New2017";
			$database = "S0300839";
			$devstu=$_POST['devstu'];
		
			// Create a new database connect object
			$dbcon = new mysqli($host, $username, $password, $database);
      
			// Check connection
			if (mysqli_connect_errno()) {
				printf("Connection failed: %s\n", mysqli_connect_error());
				exit();
			}
		
			// Form SQL query string
			$query = "SELECT ds.Studio_Name, ds.Address FROM Development_Studio ds WHERE ds.Studio_Name = '".$devstu."' AND ds.StudioID = (SELECT StudioID FROM Development_Studio WHERE Studio_Name = '".$devstu."')";
		
			// Execute SQL query and try to receive result
			if ($result = $dbcon->query($query)) {
			
				// Display the table header
				echo '<table align="center" cellspacing="1" cellpadding="0">';
				echo '<tr>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Studio Name</font></th>';
					echo'<th><font face="Arial,Helvetica,sans-serif">Studio Address</font></th>';
			
				// Fetch object array
				while ($obj = $result->fetch_object()) {
				
					// Obtain one employee information
					$sname = $obj->Studio_Name;
					$address = $obj->Address;
				
					// Display one row
					echo'</tr>';
					echo '<tr>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $sname;
					echo '</font></td>';
					echo '<td><font face="Arial, Helvetica, sans-serif">';
					echo $address;
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