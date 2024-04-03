<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            display: flex;
            height: 100vh;
        }

        .sidebar {
            width: 20%;
            background-color: #333;
            color: #fff;
            padding: 20px;
        }

        .content {
            flex-grow: 1;
            padding: 20px;
        }

        .profile-info {
            border-bottom: 1px solid #ccc;
            padding-bottom: 20px;
            margin-bottom: 20px;
        }

        .profile-info img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .profile-info p {
            margin: 0;
            margin-top: 40px;
        }

        .grievances {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .grievance {
            margin-bottom: 20px;
        }

        .grievance p {
            margin: 0;
        }
        .container button{
            padding:8px;
            color:white;
            font-size:16px;
            cursor:pointer;
            margin-top:30px;

        }
        .container button a{
            text-decoration:none;
            color:black;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="profile-info">
                <!-- Fetch and display user information -->
                <?php
                // Database connection
                $conn = new mysqli('localhost', 'root', '', 'connect');

                // Check connection
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                // Fetch student information from the database
                $sql = "SELECT * FROM students WHERE id = 1"; // Assuming user ID is 1
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // Output student information
                    $row = $result->fetch_assoc();
                    echo "<img src='uploads/" . $row["profile_photo"] . "' alt='Profile Photo'>";
                    echo "<p>Name: " . $row["name"] . "</p>";
                    echo "<p>College UID: " . $row["college_uid"] . "</p>";
                    echo "<p>Email: " . $row["email"] . "</p>";
                    echo "<p>Course: " . $row["course"] . "</p>";
                    echo "<p>Branch: " . $row["branch"] . "</p>";
                    echo "<p>Phone Number: " . $row["phone_number"] . "</p>";
                    echo "<p>Address: " . $row["address"] . "</p>";
                } else {
                    echo "Student information not found.";
                }

                // Close connection
                $conn->close();
                ?>
                <button><a href="submit.html">Submit Grievance</a></button>
            </div>
        </div>
        <div class="content">
            <h2>Recent Grievances</h2>
            <div class="grievances">
                <!-- Fetch and display recent grievances -->
                <?php
                // Database connection
                $conn = new mysqli('localhost', 'root', '', 'connect');

                // Check connection
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                // Fetch recent grievances from the database
                $sql = "SELECT * FROM grievances ORDER BY id DESC LIMIT 5"; // Assuming you want to display the latest 5 grievances
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // Output recent grievances
                    while ($row = $result->fetch_assoc()) {
                        echo "<div class='grievance'>";
                        echo "<p><strong>Name:</strong> " . $row["name"] . "</p>";
                        echo "<p><strong>Type:</strong> " . $row["type"] . "</p>";
                        echo "<p><strong>Details:</strong> " . $row["details"] . "</p>";
                        echo "</div>";
                    }
                } else {
                    echo "No recent grievances found.";
                }

                // Close connection
                $conn->close();
                ?>
            </div>
        </div>
    </div>
</body>
</html>
