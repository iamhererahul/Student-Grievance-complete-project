<?php
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
$name = $_POST['name'];
$college_uid = $_POST['college-uid'];
$course = $_POST['course'];
$phone_number = $_POST['phone-number'];
$branch = $_POST['branch'];
$address = $_POST['address'];
$email = $_POST['email'];
$password = $_POST['password'];

// Upload profile photo
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["profile-photo"]["name"]);
move_uploaded_file($_FILES["profile-photo"]["tmp_name"], $target_file);

// SQL query to insert data into database
$sql = "INSERT INTO students (name, college_uid, course, phone_number, branch, address, email, profile_photo, password)
VALUES ('$name', '$college_uid', '$course', '$phone_number', '$branch', '$address', '$email', '$target_file', '$password')";


if ($conn->query($sql) === TRUE) {
    // Redirect to the next page
    header("Location: student_login.html");
    exit(); // Make sure to stop further execution of the script after redirection
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}



$conn->close();
?>
