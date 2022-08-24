
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>conexion_oficio</title>
</head>
<body>
    
</body>
</html>
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