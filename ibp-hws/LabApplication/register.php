<?php
$hostname = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";


$conn = new mysqli($hostname, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$fullName = $_POST['fullName'];
$email = $_POST['email'];
$gender = $_POST['gender'];




$sql = "INSERT INTO students (full_name, email, gender) VALUES ('$fullName', '$email', '$gender')";
if ($conn->query($sql) === TRUE) {
    echo "Registration successful!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


$conn->close();
?>
