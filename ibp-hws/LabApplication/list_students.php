<?php
$hostname = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";


$conn = new mysqli($hostname, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$sql = "SELECT * FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"] . "<br>";
        echo "Full Name: " . $row["full_name"] . "<br>";
        echo "Email: " . $row["email"] . "<br>";
        echo "Gender: " . $row["gender"] . "<br><br>";
    }
} else {
    echo "No students registered yet.";
}


$conn->close();
?>
