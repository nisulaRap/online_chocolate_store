<!-- Create Database Connection -->
<?php

	$servername = "localhost:3309";
	$username = "root";
	$password = "";
	$dbname = "Chocolate";
		
	$conn = mysqli_connect($servername, $username, $password, $dbname);
		
	if (mysqli_connect_error()) {
	  die("Connection failed: " . mysqli_connect_error());
	}

	$sql = "SELECT * FROM producttb";
	$result = mysqli_query($conn,$sql);
	
?>