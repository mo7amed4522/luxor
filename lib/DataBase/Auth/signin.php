<?php
include "../connect.php";


$password = sha1($_POST['users_password']);
$email = filterRequest("users_email");
getData("users","`users_email` = ? AND `users_password` = ? AND `users_approve` = 1",array($email,$password));
