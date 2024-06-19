<?php 
	session_start();

	require_once('component.php');
	
	if(isset($_POST['add'])){
		if(isset($_SESSION['cart'])){
			
			$item_array_id = array_column($_SESSION['cart'],"product_id");
			
			if(in_array($_POST['product_id'],$item_array_id)){
				 
				
				echo "<script>alert('Product is already added in the cart...!')</script>";
				echo "<script>window.location = 'index.php'</script>";	
				
			}else{
				$count = count($_SESSION['cart']);
				$item_array = array(
					'product_id' => $_POST['product_id']
				);
				$_SESSION['cart'][$count] = $item_array;		
			}
			
		}else{
			$item_array = array(
				'product_id' => $_POST['product_id']
			);
			
			$_SESSION['cart'][0] = $item_array;
		}
	}
	
	$servername = "localhost:3309";
	$username = "root";
	$password = "";
	$dbname = "Chocolate";
		
	$conn = mysqli_connect($servername, $username, $password, $dbname);
		
	if (mysqli_connect_error()) {
	  die("Connection failed: " . mysqli_connect_error());
	}	
		
		
	$sql = "SELECT * FROM tobleronetb";
	$result = mysqli_query($conn,$sql);

?>

<html>
<head>
<title>Online Chocolate Store</title>
<link rel = "stylesheet" href = "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel = "stylesheet" href = "Style1.css">
<link rel = "stylesheet" href = "slide1.css">
</head>
<body>
<?php require_once("header.php") ?>

<h1 style = "margin-top:20px;"><u><center>Toblerone Brands</center></u></h1>

<div class = "container">
	<div class = "row text-center py-5">
		<?php
			if(mysqli_num_rows($result) > 0){
				while($row = mysqli_fetch_assoc($result)){
					component($row['product_name'],$row['product_price'],$row['product_image'],$row['id']);
				}
			}
		?>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>