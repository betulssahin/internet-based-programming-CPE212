<?php
const DB_SERVER = 'localhost';
const DB_USER = 'root';
const DB_PASS = '';
const DB_NAME = 'onlinecourse';
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);

if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
