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

// Prepare and execute the query to select the constituency with bool='true'
$stmt = $conn->prepare("SELECT * FROM evm WHERE bool='true'");
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows == 1) {
    // Fetch the row
    $row = $result->fetch_assoc();
    $co = $row['constituency'];

    // Redirect based on the constituency
    switch ($co) {
        case 'munugode':
            header("Location: munugode.html");
            exit();
        case 'kollapur':
            header("Location: kollapur.html");
            exit();
        case 'lalbahadurnagar':
            header("Location: lalbahadurnagar.html");
            exit();
        case 'malakpet':
            header("Location: malakpet.html");
            exit();
        default:
            // Handle other cases if needed
            break;
    }
}

// Close statement and connection
$stmt->close();
$conn->close();
?>
