<?php 
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "offlinewallet";
	
	// Create connection
	$db = mysqli_connect($servername, $username, $password, $dbname);
	include 'connection.php';
	if (isset($_POST['order_btn'])) {
		$name = $_POST['name'];
		$number = $_POST['number'];
		$email = $_POST['email'];
		$payment_method = $_POST['payment-method'];
		$flate = $_POST['flate'];
		$street = $_POST['street'];
		$city = $_POST['city'];
		$state = $_POST['state'];
		$country = $_POST['country'];
		$pin = $_POST['pin'];

		$cart_query = mysqli_query($conn, "SELECT * FROM `cart`");
		$price_total = 0;
		if (mysqli_num_rows($cart_query) > 0) {
			while($product_item= mysqli_fetch_assoc($cart_query)){
				$product_name[]=$product_item['name'] .' ('.$product_item['quantity'].' )';
				$product_price=number_format($product_item['price'] * $product_item['quantity']);
				$price_total+=$product_price;
			}
		}
		// if (mysqli_query($conn, $sql)) {
		// 	$user_id = mysqli_insert_id($conn);
		
		// $query="INSERT INTO `trans`(from_user_id,to_user_id,amount) VALUES(121,$user_id,4000)";
		// mysqli_query($conn,$query);
		
		// 	echo "New record created successfully";
		// }
		$total_product=implode(', ', $product_name);
		$detail_query= mysqli_query($conn, "INSERT INTO `orders`( `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin`, `total_products`, `total_price`) VALUES ('$name','$number','$email','$payment_method','$flate','$street','$city','$state','$country','$pin','$total_product','$price_total')") or die('query failed');
		$sql = "SELECT id FROM `users` WHERE email = '$email'";
		$result = $db->query($sql);
		// check if any rows were returned
		if ($result->num_rows > 0) {
			// retrieve the value of the ID column and store it in a variable
			$row = $result->fetch_assoc();
			$id = $row["id"];
			$query="INSERT INTO `trans`(from_user_id,to_user_id,amount) VALUES($id,121,$price_total)";
				mysqli_query($db,$query);
		} else {
			echo "No results found.";
		}
		// close the database connection
		$db->close();
		mysqli_query($conn,$query);
		if ($cart_query && $detail_query) {
			echo "
				<div class='order-confirm-container'>
					<div class='message-container'>
						<h3>thank you for shopping</h3>
						<div class='order-detail'>
							<span>".$total_product."</span>
							<span class='total'>total : Rs.".$price_total."/-</span>
						</div>
						<div class='customer-details'>
							<p>Your name : <span>".$name."</span></p>
							<p>Your number : <span>".$number."</span></p>
							<p>Your email : <span>".$email."</span></p>
							<p>Your address : <span>".$flate.", ".$street.", ".$city.", ".$state.", ".$country.", ".$pin."</span></p>
							<p>payment method : <span>".$payment_method."</span></p>
							<p class='pay'>(*pay when product arrives*)</p>
						</div>
						<a href='products.php' class='btn'>continue shopping</a>
					</div>
				</div>
			";
		}
	}
	
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>add products</title>
</head>

<body>

    <?php include 'header.php'; ?>
    <div class="checkout-form">
        <h1>payment process</h1>
        <div class="display-order">
            <?php 
				$select_cart=mysqli_query($conn, "SELECT * FROM `cart`");
				$total=0;
				$grand_total=0;
				if (mysqli_num_rows($select_cart)>0) {
					while($fetch_cart=mysqli_fetch_assoc($select_cart)){
						$total_price = $fetch_cart['price']* $fetch_cart['quantity'];
						$grand_total = $total += $total_price;
					
			?>
            <span><?= $fetch_cart['name']; ?>(<?= $fetch_cart['quantity']; ?>)</span>
            <?php 
					}
				}
			?>
            <span class="grand-total">Total amount payable : $<?= $grand_total; ?>/-</span>
        </div>
        <form method="post">
            <div class="input-field">
                <span>your name</span>
                <input type="text" name="name" placeholder="Enter your name" required>
            </div>
            <div class="input-field">
                <span>your number</span>
                <input type="number" name="number" placeholder="Enter your number" required>
            </div>
            <div class="input-field">
                <span>your email</span>
                <input type="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="input-field">
                <span>payment method</span>
                <select name="payment-method">
                    <option value="cash on delivery">cash on delivery</option>
                    <option value="credit card">credit card</option>
                    <option value="paytm">paytm</option>
                    <option value="phone pay">phone pay</option>
                    <option value="pay pal">pay pal</option>
                </select>
            </div>
            <div class="input-field">
                <span>addess line 1</span>
                <input type="text" name="flate" placeholder="e.g flate no." required>
            </div>
            <div class="input-field">
                <span>addess line 2</span>
                <input type="text" name="street" placeholder="e.g street name" required>
            </div>
            <div class="input-field">
                <span>city</span>
                <input type="text" name="city" placeholder="e.g Delhi" required>
            </div>
            <div class="input-field">
                <span>state</span>
                <input type="text" name="state" placeholder="e.g new Delhi" required>
            </div>
            <div class="input-field">
                <span>country</span>
                <input type="text" name="country" placeholder="e.g India" required>
            </div>
            <div class="input-field">
                <span>pin code</span>
                <input type="text" name="pin" placeholder="e.g 1234567" required>
            </div>
            <input type="submit" name="order_btn" value="order now" class="btn">
        </form>
    </div>
</body>

</html>