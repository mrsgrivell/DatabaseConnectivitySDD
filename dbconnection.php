<?php
//connect to the database using mysqli API
$mysqli = new mysqli($host, $username, $pword, $database);
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" .
        $mysqli->connect_errno . ") ";
    die;
}
?>