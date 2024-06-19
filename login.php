<?php
	$uname1 = $_POST['uname'];
	$pass1 = $_POST['pass'];

	$servername = "localhost:3309";
	$username = "root";
	$password = "";
	$dbname = "Chocolate";
		
	$conn = mysqli_connect($servername, $username, $password, $dbname);
		
	if (mysqli_connect_error()) {
	  die("Connection failed: " . mysqli_connect_error());
	}	
		
	$sql = "SELECT Username,Password FROM new_registration WHERE Username = '$uname1' AND Password = '$pass1'";
	
	$result = mysqli_query($conn,$sql);
	
	if(mysqli_num_rows($result) > 0){
		while($row = mysqli_fetch_array($result)){	
			echo "<script>
					alert('Sucess');
				</script>";
				header('Location:index1.php');
		}			
	}else{
		echo "<script>
				alert('Login Failed....!');
				window.location.replace('index.php');
			</script>";			
			
	}
	mysqli_close($conn);

?>