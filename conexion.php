<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "mi_base";

$conexion = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if (!$conexion) 
{
	die("No hay conexión: ".mysqli_connect_error());
}

?>