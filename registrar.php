<html>
  <head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>VaidrollTeam Registrar</title>
    <link rel="stylesheet" href="Estilos/login.css">
  </head>
  <body>
<div>
<form method="post" action="registrar.php" name="vaidrollteam">

<table>

<tr><td style="background-color:#5791aa;"><label>Registrar</label></td></tr>
<tr><td><input type="text" name="txtusuario" placeholder="&#128273;Usuario" required /></td></tr>
<tr><td><input type="password" name="txtpassword" placeholder="&#128274;Contraseña" required /> </td></tr>
<tr><td><input type="submit" value="Registrar" name="btnregistrar"/> </td></tr>
<br>
<tr><td><a href="index.php" style="float:right">Iniciar sesión</a></td></tr>
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

if(isset($_POST["btnregistrar"]))
{

$nombre = $_POST["txtusuario"];
$pass = $_POST["txtpassword"];


	$sqlgrabar = "INSERT INTO login(usuario,contraseña) values ('$nombre','$pass')";
	
	if(mysqli_query($conn,$sqlgrabar))
	{
		echo "<script> alert('Usuario registrado con exito: $nombre'); window.location='index.php' </script>";
	}else 
	{
		echo "Error: ".$sql."<br>".mysql_error($conn);
	}
} 
?>