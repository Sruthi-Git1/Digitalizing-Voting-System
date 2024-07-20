 <?php
// Establish database connection
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

// Query to retrieve the constituency where bool is true
$sql = "SELECT constituency FROM evm WHERE bool='true'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Fetch the constituency from the result
    $row = $result->fetch_assoc();
    $constituency = $row["constituency"];
    
    // Query to increment the count of the selected candidate in the constituency table
    if (isset($_POST["candidate"])) {
        $candidate = $_POST["candidate"];
        $sql_update = "UPDATE $constituency SET count = count + 1 WHERE name = '$candidate'";
        if ($conn->query($sql_update) === TRUE) {
            // echo "Vote for $candidate registered successfully.";
            header("Location: thank.html");
            exit();
        } else {
            echo "Error updating vote count: " . $conn->error;
        }
    } else {
        echo "Candidate not selected.";
    }
} else {
    echo "No constituency found with active voting.";
}

// Close database connection
$conn->close();
?>
