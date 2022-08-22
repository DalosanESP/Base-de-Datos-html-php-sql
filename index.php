<html>
  <head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Login</title>
    <link rel="stylesheet" href="Estilos/login.css">
  </head>
  <body>
<div>
<form method="post" action="index.php" name="vaidrollteam">

<table>
<tr><td style="background-color:#5791aa;" ><label>Acceder</label></td></tr>
<tr><td><input type="text" name="txtusuario" placeholder="&#128273;Usuario" required style="color: white" /></td></tr>
<tr><td><input type="password" name="txtpassword" placeholder="&#128274;Contraseña" required style="color: white" /> </td></tr>
<tr><td><input type="submit" value="Acceder" name="btningresar" /> </td></tr>

<br>
<tr><td><a href="registrar.php" style="float:right; color: white" >Crear una cuenta</a></td></tr> 

</table>

</form>
</div>
</body>
</html>

<?php
include('conexion.php');

session_start();
if(isset($_SESSION['nombredelusuario']))
{
	header('location: listar.php');
}

if(isset($_POST['btningresar']))
{
	
$nombre = $_POST["txtusuario"];
$pass = $_POST["txtpassword"];


	

	
$query = mysqli_query($conexion,"SELECT * FROM login WHERE usuario = '".$nombre."' and contraseña = '".$pass."'");
$nr = mysqli_num_rows($query);

if($nr == 1)
{
	$_SESSION['nombredelusuario']=$nombre;
	header("Location: menu.html");
}
else if ($nr == 0) 
{
	echo "<script> alert('Usuario no existe');window.location= 'index.php' </script>";
}

} 
?>