<?php
session_start();
$an = $_SESSION["aadhaar"];
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ec";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and execute the SQL query with a prepared statement
$sql = "SELECT * FROM vaa WHERE aadhaar=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $an);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $co = $row['constituency'];
        
        // Prepare and execute the update query with another prepared statement
        $sql_update = "UPDATE $co SET status='no' WHERE aadhaar=?";
        $stmt_update = $conn->prepare($sql_update);
        $stmt_update->bind_param("s", $an);
        $stmt_update->execute();
        
        // Redirect to the 'type.html' page
        header("Location: type.html");
        exit();
    }
}

$conn->close();
?>
