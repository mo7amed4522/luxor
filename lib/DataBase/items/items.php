<?php
include "../connect.php";
$categoryID =filterRequest('id');
getAllData("itemsview","cat_id = $categoryID");
?>