<html>
<head>
<link rel = "stylesheet" href = "Style.css">
</head>
<body>
	<nav>
		<!-- Create Logo -->
		<label class = "logo">Online Chocolate Store</label>
		<!-- Create Menu Bar -->
		<ul>
			<li><a href = "index.php">Home</a></li>
			<div class="dropdown">
				<button class="dropbtn">BRANDS</button>
				<div class="dropdown-content">
					<a href="ferrero.php">FERRERO</a>
					<a href="kandos.php">KANDOS</a>
					<a href="mars.php">MARS</a>
					<a href="nestle.php">NESTLE</a>
					<a href="ritzbury.php">RITZBURY</a>
					<a href="snickers.php">SNICKERS</a>
					<a href="toblerone.php">TOBLERONE</a>
				</div>
			 </div>
			<li><a href = "About_Us.php">ABOUT US</a></li>
			<li><a href = "Contact_Us.php">CONTACT US</a></li>
			<li><a href = "Login&Signup.html" class = "right">LOGIN</a></li>
			<li><a href = "cart.php"><i class = "fa fa-shopping-cart"></i>&nbsp;&nbsp;CART</a>
				<!-- Display cart count -->
				<?php
				if(isset($_SESSION['cart'])){
					$count = count($_SESSION['cart']);
					echo "<span class = \"cartnum\">$count</span>";
				}else{
					echo "<span class = \"cartnum\">0</span>";
				}
			?>
			</li>
		</ul>
	</nav>
</body>
</html>