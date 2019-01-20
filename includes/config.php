<?php
ob_start();

date_default_timezone_set("Australia/Brisbane");

try {
    $con = new PDO("mysql:dbname=youtubeclone;host=localhost", "root", "root");
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
} 
catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>