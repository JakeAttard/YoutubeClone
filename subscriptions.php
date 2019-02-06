<?php
require_once("includes/header.php");

if(!User::isLoggedIn()) {
    header("Location: signIn.php");
}

$subscriptionsProvider = new SubscriptionsProvider($con, $userLoggedInObj);
$videos = $subscriptionsProvider->getVideos();

$videoGrid = new VideoGrid($con, $userLoggedInObj);
?>

<div class="largeVideoGridContainer">
    <?php 
    if(sizeOf($videos) > 0) {
        echo $videoGrid->createLarge($video, "New vidoes from your subscribers", false);
    } else {
        echo "No new subscribers videos to show";
    }
    ?>
</div>