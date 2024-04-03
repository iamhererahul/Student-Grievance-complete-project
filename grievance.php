<?php
// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Connect to your database (replace 'localhost', 'username', 'password', 'database_name' with your actual credentials)
    $conn = new mysqli('localhost', 'root', '', 'connect');

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare and bind parameters
    $stmt = $conn->prepare("INSERT INTO grievances (name, type, details) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $name, $type, $details);

    // Set parameters
    $name = $_POST['student-name'];
    $type = $_POST['grievance-type'];
    $details = $_POST['grievance-details'];

    // Execute the prepared statement
    if ($stmt->execute()) {
        echo "Grievance submitted successfully.";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close statement and database connection
    $stmt->close();
    $conn->close();
}
?>
