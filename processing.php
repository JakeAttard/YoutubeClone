<?php 
require_once("includes/header.php"); 

if(!isset($_POST['uploadButton'])) {
    echo "No file sent to page.";
    exit();
}

$videoUploadData = new VideoUploadData($_POST["fileInput"], $_POST["titleInput"], $_POST["descriptionInput"], $_POST["privacyInput"], $_POST["categoryInput"], "REPLACE-THIS");
?>