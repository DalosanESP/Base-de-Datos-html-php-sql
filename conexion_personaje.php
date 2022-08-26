
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

$nombre = $_POST["nombre"] ;
$apellido = $_POST["apellido"] ;
$afiliacion = $_POST["afiliacion"] ;
$especie = $_POST["especie"] ;
$planeta_origen = $_POST["planeta_origen"] ;
$arma = $_POST["arma"] ;
$oficio = $_POST["oficio"] ;


        //indicamos el nombre de la base datos
        $datab = "mi_base";
        //indicamos selecionar ala base datos
        $db = mysqli_select_db($conexion,$datab);

        
        //insertamos datos de registro al mysql xamp, indicando nombre de la tabla y sus atributos
        $instruccion_SQL = "INSERT INTO personaje (nombre, apellido, afiliacion, especie, planeta_origen, arma, oficio)
                             VALUES ('$nombre','$apellido', '$afiliacion', '$especie', '$planeta_origen', '$arma', '$oficio')";
                           
                            
        $resultado = mysqli_query($conexion,$instruccion_SQL);

        //$consulta = "SELECT * FROM tabla where id ='2'"; si queremos que nos muestre solo un registro en especifivo de ID
        $consulta = "SELECT * FROM personaje";
        
$result = mysqli_query($conexion,$consulta);

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
    echo "</tr>";
}
echo "</table>";

mysqli_close( $conexion );

   //echo "Fuera " ;
   echo'<a href="index.html"> Volver Atrás</a>';


?>