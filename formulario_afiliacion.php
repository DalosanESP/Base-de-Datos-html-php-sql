<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>formulario afiliacion</title>
    <link rel="stylesheet" href="Estilos/afiliaciones.css">
  </head>
  <body>
    <form action="conexion_afiliacion.php" name="" method="POST">
      <table>
      <tr>
          <td colspan="2">
          <h1>NUEVA AFILIACION</h1>
          </td>
        <tr>
          <td >
          <h2 align="center">Nombre</h2>
          </td>
          <td>
            <label for="right"></label>
            <input type="text" name="nombre" id="nombre" required  />
          </td>
        </tr>
        <tr>
          <td align="center" colspan="2">
            <input type="submit" name="enviar" id="enviar" value="Añadir" />
          </td>
        </tr>
      </table>
    </form>
<?php
include('conexion.php');
session_start();
?>
<table>
<tr><td colspan="2"><h1>Lista de Afiliaciones</h1></td></tr>
	
</tr>
<!-- PARA MOSTRAR LISTAS -->
<?php 
$sql="SELECT * FROM afiliacion";
$result=mysqli_query($conexion,$sql);

while($mostrar=mysqli_fetch_array($result))
{
	
?>
<tr style="text-align: center;">
	    <td style="font-size:25px;"><?php echo $mostrar['nombre'] ?></td>

</tr>
<?php
}
?>

</body>
</html>

