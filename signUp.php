<?php 
require_once("includes/config.php"); 

function sanitizeFormString($inputText) {
    $inputText = strip_tags($inputText);
    $inputText = str_replace(" ", "", $inputText);
    $inputText = strtolower($inputText);
    $inputText = ucfirst($inputText);
    return $inputText;
}

if(isset($_POST["submitButton"])) {
    $firstName = sanitizeFormString($_POST["firstName"]);

    echo $firstName;
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Youtube Clone</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/register.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</head>

<body>
    <div class="signInContainer">
        <div class="column">
            
            <div class="header">
                <img src="assets/images/icons/VideoTubeLogo.png" title="logo" alt="Site Logo">
                <h3>Sign Up</h3>
                <span>to continue to Youtube Clone</span>
            </div>

            <div class="loginForm">
                <form action="signUp.php" method="POST">
                    <input type="text" name="firstName" placeholder="First name" autocomplete="off" required>
                    <input type="text" name="lastName" placeholder="Last name" autocomplete="off" required>
                    <input type="text" name="username" placeholder="Username" autocomplete="off" required>
                    <input type="email" name="email" placeholder="Email" autocomplete="off" required>
                    <input type="email" name="confirmEmail" placeholder="Confirm Email" autocomplete="off" required>
                    <input type="password" name="password" placeholder="Password" autocomplete="off" required>
                    <input type="password" name="confirmPassword" placeholder="Confirm Password" autocomplete="off" required>

                    <input type="submit" name="submitButton" value="SUBMIT">
                </form>
            </div>

            <a class="signInMessage" href="signIn.php">Already an account? Sign in here!</a>
        </div>
    </div>
</body>

</html>