<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conexion Personaje</title>
    <link rel="stylesheet" href="Estilos/personaje2.css">
    <body>

<?php
include('conexion.php');
session_start();
$sql="SELECT * FROM personaje";
$result=mysqli_query($conexion,$sql);


echo "<table cellspacing='10' >";
echo "<tr>";
echo "<th style='color:white';>id</th>";
echo "<th style='color:white';>Nombre</th>";
echo "<th style='color:white';>Apellido</th>";
echo "<th style='color:white';>Afiliacion</th>";
echo "<th style='color:white';>Especie</th>";
echo "<th style='color:white';>Plante de Origen</th>";
echo "<th style='color:white';>Arma</th>";
echo "<th style='color:white';  >Oficio</th>";
echo "<th style='color:white';  >Nave</th>";
echo "</tr>";

while ($colum = mysqli_fetch_array($result))
 {
    echo "<tr>";
    echo "<td style='color:white';>" . $colum['id']. "</td>";
    echo "<td style='color:white';>" . $colum['nombre']. "</td>";
    echo "<td style='color:white';>" . $colum['apellido'] . "</td>";
    echo "<td style='color:white';>" . $colum['afiliacion'] . "</td>";
    echo "<td style='color:white';>" . $colum['especie'] . "</td>";
    echo "<td style='color:white';>" . $colum['planeta_origen'] . "</td>";
    echo "<td style='color:white';>" . $colum['arma'] . "</td>";
    echo "<td style='color:white';>" . $colum['oficio'] . "</td>";
    echo "<td style='color:white';>" . $colum['nave'] . "</td>";
    echo "</tr>";
}
echo "</table>";

mysqli_close( $conexion );

   //echo "Fuera " ;
   echo'<a href="menu.html"> Volver Atrás</a>';


?>