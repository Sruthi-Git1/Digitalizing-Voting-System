<?php
session_start();
$an = $_SESSION["aadhaar"];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ec";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare the SQL statement with a placeholder
$sql = "SELECT * FROM vaa WHERE aadhaar=?";
$stmt = $conn->prepare($sql);

// Bind parameter
$stmt->bind_param("s", $an);

// Execute the prepared statement
$stmt->execute();

// Get the result of the query
$result = $stmt->get_result();

// Check if there is exactly one row returned
if ($result->num_rows == 1) {
    header("Location: bio.html");
    exit();
} else {
    header("Location: error3.html");
    exit();
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
