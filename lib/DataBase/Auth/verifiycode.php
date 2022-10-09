<?php

include "../connect.php";

$email = filterRequest("users_email");

$verifiyCode = filterRequest("users_verifiycode");

$stmt = $con->prepare("SELECT * FROM `users` WHERE `users_email` = '$email' AND `users_verifiycode` = '$verifiyCode'");

$stmt->execute();

$count = $stmt->rowCount();

if($count > 0){

    $data = array("users_approve" => "1");

    updateData("users",$data,"users_email = '$email'");
}else{
    printFailer();
}
?>