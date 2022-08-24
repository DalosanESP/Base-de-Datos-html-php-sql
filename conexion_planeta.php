
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>conexion_planeta</title>
</head>
<body>
    
<tr><td colspan="2" style='color: rgb(86, 126, 187);'><h1>Listado de planetas</h1></td></tr>
<tr><td style='color: rgb(86, 126, 187);'><label>Planetas</label></td>
	
</body>
</html>

</tr>
<!-- PARA MOSTRAR LISTAS -->
<?php 
include('conexion.php');
session_start();
$sql="SELECT * FROM planeta_origen";
$result=mysqli_query($conexion,$sql);

while($mostrar=mysqli_fetch_array($result))
{
echo "<table>";
echo "<tr>";
echo "<th><h1>id</th></h1>";
echo "<th><h1>Nombre</th></h1>";
echo "</tr>";
	
?>
<tr> <td ><?php echo $mostrar['id'] ?></td>
	    <td><?php echo $mostrar['nombre'] ?></td>

</tr>
<?php
}
?>