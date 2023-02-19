<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    // Connect to the database
    $conn = mysqli_connect('localhost', 'root', '', 'testing');
    
    // Check if the connection was successful
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    
    // Prepare the SELECT statement
    $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
    
    // Execute the statement
    $mysqli_result = mysqli_query($conn, $sql);
    
    // Check if the query returned a result
    if (mysqli_num_rows($mysqli_result) > 0) {
        // Login was successful
        session_start();
        $_SESSION['email'] = $email;
        header("Location: dashboard.php");
        exit;
    } else {
        // Login was unsuccessful
        echo "Invalid email or password. Please try again.";
    }
    
    // Close the connection
    mysqli_close($conn);
}

?>