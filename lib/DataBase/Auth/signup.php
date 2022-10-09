<?php
include "../connect.php";

$username = filterRequest("users_name");
$password = sha1($_POST['users_password']);
$email = filterRequest("users_email");
$phone = filterRequest("users_phone");
$verfiycode = rand(10000,99999);

$stmt = $con->prepare("SELECT * FROM `users` WHERE `users_email` = ? OR `users_phone` = ?");
$stmt->execute(array($email, $phone));
$count = $stmt->rowCount();
if($count > 0){
    printFailer();
}else{
    $data = array(
        "users_name" =>$username,
        "users_email"=>$email,
        "users_password" =>$password,
        "users_phone" => $phone,
        "users_verifiycode" =>$verfiycode,
    );
    sendEmail($email,"verfiy Code","verfiy Code $verfiycode");
    insertData("users" , $data);
}