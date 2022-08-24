<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>formulario afiliacion</title>
  </head>
  <body>
    <h1>AÑADIR AFILIACION</h1>
    <form action="conexion_afiliacion.php" name="" method="POST">
      <table border="0" align="center">
        <tr>
          <td>
            Nombre
          </td>
          <td>
            <label for="nombre"></label>
            <input type="text" name="nombre" id="nombre" required  />
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="center">
            <input
              type="submit"
              name="enviar"
              id="enviar"
              value="Enviar"
            />
          </td>
          <td align="center">
            <input type="reset" name="borrar" id="borrar" value="Restablecer" />
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>
<?php
include('conexion.php');
session_start();
?>

<tr><td colspan="2" style='color: rgb(86, 126, 187);'><h1>Listado de planetas</h1></td></tr>
<tr><td style='color: rgb(86, 126, 187);'><label>Planetas</label></td>
	
</tr>
<!-- PARA MOSTRAR LISTAS -->
<?php 
$sql="SELECT * FROM afiliacion";
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
