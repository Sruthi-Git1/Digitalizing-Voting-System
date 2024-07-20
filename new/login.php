<?php
session_start();

// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ec";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data and sanitize
$username = $conn->real_escape_string($_POST['adminid']);
$password = $conn->real_escape_string($_POST['password']);

// Prepare SQL statement with parameters
$sql = "SELECT * FROM login WHERE userid=? AND password=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $username, $password);

// Execute query
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    // User found, redirect to a dashboard or home page
    header("Location: type.html");
    exit();
} else {
    // User not found, redirect back to the login page with an error message
    header("Location: error.html");
    exit();
}

$stmt->close();
$conn->close();
?>

