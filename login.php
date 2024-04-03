<?php
session_start(); // Start the session

// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "connect";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data
$college_uid = $_POST['college_uid'];
$password = $_POST['password'];

// SQL query to check if user exists
$sql = "SELECT * FROM students WHERE college_uid = '$college_uid' AND password = '$password'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // User exists, redirect to the dashboard or another page
    $_SESSION['college_uid'] = $college_uid; // Store user's college UID in session
    header("Location: dashboard.php");
    exit();
} else {
    // User does not exist or invalid credentials, redirect back to login page with error message
    $_SESSION['login_error'] = "Invalid college UID or password";
    header("Location: student_login.html");
    exit();
}

$conn->close();
?>
