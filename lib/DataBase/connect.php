<?php
$dsn = "mysql:host=192.168.64.2;dbname=ecomarcey";
$username = "user1";
$password = 'ezcbpQ)CXE)6]4/F';
$option = array(
  PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8" // For Arabic
);
$countrowinpage = 9;

try {
  $con = new PDO($dsn ,$username, $password, $option);
  // set the PDO error mode to exception
  $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  header("Access-Control-Allow-Origin: *");
  header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With, Access-Control-Allow-Origin");
  header("Access-Control-Allow-Methods: POST, OPTIONS , GET");
  include "functions.php";
  if(!isset($notAuth)){
    //check Authentications();
  }
} catch(PDOException $e) {
  echo $e->getMessage();
}
?>
