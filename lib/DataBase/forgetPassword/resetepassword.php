<?php
include "../connect.php";
$email = filterRequest("users_email");
$password = sha1($_POST['users_password']);
$data = array("users_password" => $password);
updateData("users", $data, "users_email = '$email");