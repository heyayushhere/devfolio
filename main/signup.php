<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "offlinewallet";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$name = $_POST['name'];
$email = $_POST['email'];
$mobile =$_POST['mobile'];
$password = $_POST['password'];

$sql = "INSERT INTO `users` (full_name, email,mobile,password)
VALUES ('$name', '$email','$mobile', '$password')";


if (mysqli_query($conn, $sql)) {
    $user_id = mysqli_insert_id($conn);

$query="INSERT INTO `trans`(from_user_id,to_user_id,amount) VALUES(121,$user_id,4000)";
mysqli_query($conn,$query);

    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
 ?>