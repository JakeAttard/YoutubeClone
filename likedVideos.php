<?php
require_once("includes/header.php");
require_once("includes/classes/LikedVideosProvider.php");

if(!User::isLoggedIn()) {
    header("Location: signIn.php");
}

$likedVideosProvider = new LikedVideosProvider($con, $userLoggedInObj);
$videos = $likedVideosProvider->getVideos();

$videoGrid = new VideoGrid($con, $userLoggedInObj);
?>

<div class="largeVideoGridContainer">
    <?php 
    if(sizeOf($videos) > 0) {
        echo $videoGrid->createLarge($video, "Videos that you have liked", false);
    } else {
        echo "You havent liked any videos yet";
    }
    ?>
</div>