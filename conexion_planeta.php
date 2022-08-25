<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conexion Planeta</title>
    <link rel="stylesheet" href="Estilos/planeta.css">
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
    <h1 style="color:white";>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NUEVO PLANETA 
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AÑADID0 CON EXITO</h1>
</body>
</html>

<?php 
include('conexion.php');
session_start();
$sql="SELECT * FROM planeta_origen";
$result=mysqli_query($conexion,$sql);
$nombre = $_POST["nombre"] ;

        //indicamos el nombre de la base datos
        $datab = "mi_base";
        //indicamos selecionar ala base datos
        $db = mysqli_select_db($conexion,$datab);

        //insertamos datos de registro al mysql xamp, indicando nombre de la tabla y sus atributos
        $instruccion_SQL = "INSERT INTO planeta_origen (nombre)
                             VALUES ('$nombre')";


        $resultado = mysqli_query($conexion,$instruccion_SQL);

   ?> 