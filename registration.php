<?php
	$uname = $_POST['uname'];
	$pass = $_POST['pass'];
	$cpass = $_POST['cpass'];
	$name = $_POST['name'];
	$address = $_POST['address'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];

	$servername = "localhost:3309";
	$username = "root";
	$password = "";
	$dbname = "Chocolate";
		
	$conn = mysqli_connect($servername, $username, $password, $dbname);
		
	if (mysqli_connect_error()) {
	  die("Connection failed: " . mysqli_connect_error());
	}	
		
	$sql = "INSERT INTO new_registration (Username, Password, Confirm_Password, Name, Address, Email, Phone_No)VALUES ('$uname', '$pass', '$cpass', '$name', '$address', '$email', '$phone')";
	
	$result = mysqli_query($conn,$sql);

	if ($result) {
	  echo "New record created successfully";
	  echo "<script>window.location = 'index.php'</script>";
	} else {
	  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}

	mysqli_close($conn);

?>