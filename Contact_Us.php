<!DOCTYPE html>
<html>
	<head>
		<title> contact Us</title>				
			<style>
		 .Contact_Us  {  
						background-position:center;
			            background-size:cover;
						padding:50px; 
						background-image:url("images/contact.jpeg");
						color:white;
						height:990px;
						margin-left:-10px;
						margin-top:-1px;
			          }
					
			   .Form  {
			          	margin-left:400px;
	                    margin-top:80px;
                        width:410px;
	                    height:460px;
	                    border:1px solid black;
						border-radius:10px;
	                    padding:3px;
	                    padding-left:20px;
						background-color:white;
						color:brown;
  			         }
					 
		          .a {
			            padding: 6px 6px;
	                    margin: 8px 0;
	                    display: inline-block;
	                    border: 0px;
	                    border-radius:3px;
	                    width:360px;
						background-color:#EADDCA;
			         }
					 
				 .btn1{
					    padding:7px;
						cursor:pointer;
						color:white;
						background-color:green;
						border-radius:7px;
						border:0px;
					    margin-left:235px;
					 }
			</style>
	</head>	
<body>
<!-- Display Logo with Menu Bar -->
<?php require_once("header.php"); ?>
	<div class =  "Contact_Us">
		<h1 align = "center">Contact Us</h1>
			<form action = "" method ="POST" class = "Form">
				<h1 style = font-size:50px;>We'd love to hear</br>from you..</h1>
				<input type = "text" class = "a" placeholder = "Your Name">
				<input type = "text" class = "a" placeholder = "Your Email">
				<textarea id = "a" placeholder = "Your Message" cols = "48" rows = "6"></textarea><br><br>
				<input type = "submit" value = "Send Your Message" class = "btn1"  >
			</form>
		
		

	</div>
</body>
</html>