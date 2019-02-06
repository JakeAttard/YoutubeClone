<?php
require_once("includes/header.php");
require_once("includes/classes/ProfileGenerator.php");

if(isset($_GET["username"])) {
    $profileUsername = $_GET["username"];
} else {
    echo "User Account can't be found";
    exit();
}

$profileGenerator = new ProfileGenerator($con, $userLoggedInObj, $profileUsername);
echo $profileGenerator->create();
?>