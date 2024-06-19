<?php 
//Get Product table (producttb) list in Database.After this sent to index.php (Home Page)
function component($productname,$productprice,$productimg,$productid){
	$element = "
	<div class = \"col-md-3 col-sm-6 my-3 my-md-0\">
			<form action = \"index.php\" method = \"POST\">
				<div class = \"card shadow\">
					<div>
						<img src = \"$productimg\" alt = \"image1\" class = \"img-fluid card-img-top\">
					</div>
					<div class = \"card-body\">
						<h5 class = \"card-title\">$productname</h5>
						<h6>
							<span class = \"fa fa-star\" style = 'color:orange;'></span>
							<span class = \"fa fa-star\" style = 'color:orange;'></span>
							<span class = \"fa fa-star\" style = 'color:orange;'></span>
							<span class = \"fa fa-star\" style = 'color:orange;'></span>
							<span class = \"fa fa-star-o\"></span>
						</h6>
						<h5>
							<span class = \"price\">Rs.$productprice.00</span>
						</h5>
						<button type = \"submit\" class = \"btn btn-warning my-3\" name = \"add\">Add to Cart <i class = \"fa fa-shopping-cart\"></i></button>
						<input type = 'hidden' name = 'product_id' value = '$productid'>
					</div>
				</div>
			</form>
			<br>
		</div>
	
	";
	echo $element;
}


//Get Cart list sent to cart.php
function cartElement($productimg,$productname,$productprice,$productid){
	$element = "	
	<form action = \"cart.php?action=remove&id=$productid\" method = \"POST\" class = \"cart-items\">
					<div class = \"border rounded\">
						<div class = \"row bg-white\">
							<div class = \"col-md-3 pl-0\">
								<img src = \"$productimg \" alt = \"image1\" class = \"img-fluid\">
							</div>
							<div class = \"col-md-6\">
								<h5 class = \"pt-2\">$productname</h5>
								<small class = \"text-secondary\">Seller: dailytuition</small>
								<h5 class = \"pt-2\">Rs.$productprice</h5>
								<button type = \"submit\" class = \"btn btn-warning\">Save for Later</button>
								<button type = \"submit\" class = \"btn btn-danger mx-2\" name = \"remove\">Remove</button>
							</div>
						</div>
					</div>				
				</form>	
	";
	echo $element;	
}
