<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver Oficio</title>
    <link rel="stylesheet" href="Estilos/oficio.css">
</head>
<body>
</body>
</html>

<?php
include('conexion.php');
session_start();

?>
<table>
<tr><td><h1  style="color:white";>Lista de Oficios</h1></td></tr>
	
</tr>
<!-- PARA MOSTRAR LISTAS -->
<?php 
$nombre = $_POST["nombre"] ;
$sql="SELECT * FROM oficio where nombre like '%$nombre%'";
$result=mysqli_query($conexion,$sql);

while($mostrar=mysqli_fetch_array($result))
{
	
?>
<tr style="text-align: center;">
	    <td  style="color:white";><h2><?php echo $mostrar['nombre'] ?></h2></td>

</tr>
<?php
}
?>