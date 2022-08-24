<body>
<link rel="stylesheet" href="Estilos/listar.css">

<table>
<?php
include('conexion.php');
session_start();

if(isset($_SESSION['nombredelusuario']))
{
	$usuarioingresado = $_SESSION['nombredelusuario'];
	echo "<tr style='color:rgb(228, 74, 74);'><td colspan='2' align='center'><h1>Bienvenido: $usuarioingresado </h1></td></tr>";
}
else
{
	header('location: index.php');
}
?>
<form method="POST">
<tr><td colspan='2' align="center"><input type="submit" value="Cerrar sesión" name="btncerrar" /></td></tr>
</form>

<tr><td colspan="2" style='color: rgb(228, 74, 74);'><h1>Listado de usuarios</h1></td></tr>
<tr><td style='color: rgb(228, 74, 74);'><label>Usuario</label></td>
<!-- <td style='color: rgb(86, 126, 187);'><label>Contraseña</label></td>-->
	
</tr>

<?php 

if(isset($_POST['btncerrar']))
{
	session_destroy();
	header('location: index.php');
}
	
$sql="SELECT * FROM login";
$result=mysqli_query($conexion,$sql);

while($mostrar=mysqli_fetch_array($result))
{
	
?>
<tr> <td style='color: white'><?php echo $mostrar['usuario'] ?>
	<!--<td><?php echo $mostrar['contraseña'] ?>-->

</tr>
<?php
}



?>
</table>
</body>