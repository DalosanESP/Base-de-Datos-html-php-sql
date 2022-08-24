<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>formulario arma</title>
    <link rel="stylesheet" href="Estilos/armas.css">
  </head>
  <body>
    <h1>AÑADIR ARMA</h1>
    <form action="conexion_arma.php" name="" method="POST">
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
        </tr>
      </table>
    </form>
  </body>
</html>
<?php
include('conexion.php');
session_start();
?>

<tr><td colspan="2" style='color: darkgreen;'><h1>Lista de Armas</h1></td></tr>
<tr><td style='color: darkgreen;'><label>Armas</label></td>
	
</tr>
<!-- PARA MOSTRAR LISTAS -->
<?php 
$sql="SELECT * FROM arma";
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
