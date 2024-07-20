<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "second";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare the SQL statement
$sql = "UPDATE evm SET bool=? WHERE bool='true'";
$stmt = $conn->prepare($sql);

// Bind parameters
$stmt->bind_param("s", $bool); // Assuming 'bool' is a string column

// Set the parameter values
$bool = 'false';

// Execute the prepared statement
if ($stmt->execute()) {
    header("Location: evm_home.html");
    exit();
} else {
    // Handle error if the statement execution fails
    echo "Error updating record: " . $conn->error;
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
