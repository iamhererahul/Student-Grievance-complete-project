<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
</head>
<body>
    <div class="container">
       <div class="con1">
         <h2>Admin info</h2>
         <div class="user-info">
            <?php
            // Connect to the database
            $conn = new mysqli('localhost', 'root', '', 'connect');

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Fetch user information from the database
            $sql_user = "SELECT * FROM users WHERE id = 1"; // Assuming user ID is 1
            $result_user = $conn->query($sql_user);

            if ($result_user->num_rows > 0) {
                // Output user information
                $row_user = $result_user->fetch_assoc();
                echo "<p><strong>Name:</strong> " . $row_user["username"] . "</p>";
                echo "<p><strong>College UID:</strong> " . $row_user["college_uid"] . "</p>";
                echo "<p><strong>Email:</strong> " . $row_user["email"] . "</p>";
                
            } else {
                echo "User information not found.";
            }
            ?>
        </div>
       </div>
        
        <div class="con2">
        <h2>Grievances</h2>
        <div class="grievances">
            <?php
            // Fetch grievances from the database
            $sql_grievances = "SELECT * FROM grievances";
            $result_grievances = $conn->query($sql_grievances);

            if ($result_grievances->num_rows > 0) {
                // Output grievances
                while($row_grievance = $result_grievances->fetch_assoc()) {
                    echo "<div class='grievance'>";
                    echo "<p><strong>Name:</strong> " . $row_grievance["name"] . "</p>";
                    echo "<p><strong>Type:</strong> " . $row_grievance["type"] . "</p>";
                    echo "<p><strong>Details:</strong> " . $row_grievance["details"] . "</p>";
                    echo "</div>";
                }
            } else {
                echo "No grievances found.";
            }

            // Close database connection
            $conn->close();
            ?>
        </div>
        </div>
    </div>
</body>
</html>
