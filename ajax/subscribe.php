<?php
require_once("../includes/config.php");

if(isset($_POST['userTo']) && isset($_POST['userFrom'])) {
    echo "good";
} else {
    echo "One or more parameters are not passed into subscribe.php file";
}
?>