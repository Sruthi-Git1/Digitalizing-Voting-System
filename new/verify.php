
<?php 
session_start();
$an = $_SESSION["aadhaar"];
$servername = "localhost"; 
$username = "root";
$password = ""; 
$dbname = "second";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

// Prepare and bind the parameter for the SELECT query
$stmt = $conn->prepare("SELECT * FROM vaa WHERE aadhaar=?");
$stmt->bind_param("s", $an);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows == 1) {
    while ($row = $result->fetch_assoc()) {
        $co = $row['constituency'];

        // Prepare and bind the parameter for the UPDATE query
        $stmt_update_evm = $conn->prepare("UPDATE evm SET bool='true' WHERE constituency=?");
        $stmt_update_evm->bind_param("s", $co);
        $stmt_update_evm->execute();
        $stmt_update_evm->close();

        // Redirect to the final.html page
        header("Location: final.html");
        exit();
    }
}

$conn->close(); 
?>
