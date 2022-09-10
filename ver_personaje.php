<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver Personajes</title>
    <link rel="stylesheet" href="Estilos/personaje.css">
</head>
<body>
</body>
</html>
<?php
include('conexion.php');
session_start();

?>
<table>
<tr><td><h1  style="color:white";>Lista de Nombres</h1></td></tr>
	
</tr>
<!-- PARA MOSTRAR LISTAS -->
<?php 
$nombre = $_POST["nombre"] ;
$sql="SELECT * FROM personaje where nombre like '%$nombre%' or apellido like '%$nombre%'";
$result=mysqli_query($conexion,$sql);

while($mostrar=mysqli_fetch_array($result))
{
	
?>
<tr style="text-align: center;">
	    <td  style="color:white";><h2><?php echo $mostrar['nombre'] ?>      <?php echo $mostrar['apellido'] ?></h2></td>
        

</tr>
<?php
}
?>