<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Buscar Personaje</title>
    <link rel="stylesheet" href="Estilos/personaje.css">
  </head>
  <body>
    <form action="ver_personaje.php" name="" method="POST">
      <table>
      <tr>
          <td colspan="2">
          <h1  style="color:white";>BUSCAR PERSONAJE</h1>
          </td>
        <tr>
          <td >
          <h2 align="center"  style="color:white";>Nombre</h2>
          </td>
          <td>
            <label for="right"></label>
            <input type="text" name="nombre" id="nombre" required  />
          </td>
        </tr>
        <tr>
          <td align="center" colspan="2">
            <input type="submit" name="enviar" id="enviar" value="Buscar" />
          </td>
        </tr>
      </table>
    </form>
