<?php
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    
ob_start();
session_start();

date_default_timezone_set("Australia/Brisbane");

try {
    $con = new PDO("mysql:dbname=youtubeclone;host=127.0.0.1", "root", "");
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
} 
catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
