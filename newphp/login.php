<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    $conn = mysqli_connect('localhost', 'root', '', 'offlinewallet');
    
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "SELECT * FROM `users` WHERE email = '$email' AND password = '$password'";
    $mysqli_result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($mysqli_result) > 0) {
        // Login was successful
        session_start();
        $_SESSION['email'] = $email;
        header("Location: asset/index.php");
        exit;
    } else {
        // Login was unsuccessful
        echo "Invalid email or password. Please try again.";
    }
    
    // Close the connection
    mysqli_close($conn);
}

?>