<?php
session_start();

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

// Get the voter ID and Aadhaar number from the POST data
$vi = $_POST['voterid'];
$an = $_POST['aadhaar'];

// Store Aadhaar number in session
$_SESSION["aadhaar"] = $an;

// Prepare the SQL statement with placeholders
$sql = "SELECT * FROM vaa WHERE voterid=? AND aadhaar=?";
$stmt = $conn->prepare($sql);

// Bind parameters
$stmt->bind_param("ss", $vi, $an);

// Execute the prepared statement
$stmt->execute();

// Get the result of the query
$result = $stmt->get_result();

// Check if there are any rows returned
if ($result->num_rows > 0) {
    // Fetch the data from the result set
    while ($row = $result->fetch_assoc()) {
        $co = $row['constituency'];
        // Prepare and execute the second SQL statement
        $sql1 = "SELECT * FROM $co WHERE voterid=? AND status='no'";
        $stmt1 = $conn->prepare($sql1);
        $stmt1->bind_param("s", $vi);
        $stmt1->execute();
        $result1 = $stmt1->get_result();
        
        // Check if there are any rows returned
        if ($result1->num_rows > 0) {
            header("location: biometric.html");
            exit();
        } else {
            header("location: status.html");
            exit();
        }
    }
} else {
    header("location: error1.html");
    exit();
}

// Close the statements and connection
$stmt1->close();
$stmt->close();
$conn->close();
?>
