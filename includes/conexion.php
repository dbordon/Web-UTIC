<?php
/*
$db_host = "localhost";
$db_user = "root";
$db_pass = "123";
$db_name = "web_v7";
*/

$db_host = "localhost";
$db_user = "webutic";
$db_pass = "Tukaaca@753";
$db_name = "web_v7";
$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);


if(mysqli_connect_errno()){
	echo 'Error, no se pudo conectar a la base de datos: '.mysqli_connect_error();
} 
?>	
