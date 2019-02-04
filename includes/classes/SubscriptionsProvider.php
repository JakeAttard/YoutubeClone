<?php
class SubscriptionsProvider {

    private $con, $userLoggedInObj;

    public function __construct($con, $userLoggedInObj) {
        $this->con = $con;
        $this->userLoggedInObj = $userLoggedInObj;
    }

    public function getVideos() {
        $videos = array();
        $subscriptions = $this->userLoggedInObj->getSubscriptions();

        if(sizeof($subscriptions) > 0) {
            $condition = "";
            $i = 0;

            while($i < sizeof($subscriptions)) {

                if($i == 0) {
                    $condition .= "WHERE uploadedBy=?";
                } else {
                    $condition .= " OR uploadedBy=?";
                }
                $i++;
            }

            $videoSql = "SELECT * FROM videos $condition ORDER BY uploadDate DESC";
            $videoQuery = $this->con->prepare($videoQuery);

            $i = 1;

            foreach($subscriptions as $sub) {
                $videoQuery->bindParam($i, $subUsername);
                $subUsername = $sub->getUsername();
                $i++;
            }

            $videoQuery->execute();

            while($row = $videoQuery->fetch(PDO::FETCH_ASSOC)) {
                $video = new Video($this->con, $row, $this->userLoggedInObj);
                array_push($videos, $video);
            }
        }

        return $videos;
    }
}
?>