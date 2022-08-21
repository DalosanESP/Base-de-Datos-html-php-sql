<?php
include 'conexion.php';
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>formulario de personaje</title>

    <style>
      body {
        background-color: #87ccc1;
        margin: 0;
        padding: 0;
      }
      h1 {
        text-align: center;
        width: 50%;
        margin: auto;
        margin-top: 30px;
      }
      table {
        border: 3px solid #cca633;
        padding: 20px 50px;
        margin-top: 20px;
        border-radius: 5px;
        background-color: #edf797;
      }
    </style>
  </head>
  <body>
  
    <h1>INGRESE LOS DATOS DEL PERSONAJE</h1>
    <form id="personaje" action="conexion_personaje.php" method="POST">
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
          <td>
            Apellido
          </td>
          <td>
            <label for="apellido"></label>
            <input type="text" name="apellido" id="apellido" required  />
          </td>
        </tr>
        <tr>
          <td>
            Afiliacion
          </td>
          <td>
            <select name="afiliacion">
            <?php
              $afiliaciones=$conexion->query("SELECT * FROM afiliacion");
              while($fila=$afiliaciones->fetch_array()){
                $afiliacion=$fila[1];
                ?>
                <option value="<?php echo $afiliacion?>"><?php echo $afiliacion?></option>
                <?php
              }
          ?>
              </select>
          </td>
        </tr>
        <tr>
          <td>
            Arma
          </td>
          <td>
            <select name="arma">
            <?php
              $armas=$conexion->query("SELECT * FROM arma");
              while($fila=$armas->fetch_array()){
                $arma=$fila[1];
                ?>
                <option value="<?php echo $arma?>"><?php echo $arma?></option>
                <?php
              }
          ?>
              </select>
          </td>
        </tr>
        <tr>
          <td>
            Especie
          </td>
          <td>
            <select name="especie">
            <?php
              $especies=$conexion->query("SELECT * FROM especie");
              while($fila=$especies->fetch_array()){
                $especie=$fila[1];
                ?>
                <option value="<?php echo $especie?>"><?php echo $especie?></option>
                <?php
              }
          ?>
              </select>
          </td>
        </tr>
        <tr>
          <td>
            Planeta de Origen
          </td>
          <td>
            <select name="planeta_origen">
            <?php
              $planetas_origen=$conexion->query("SELECT * FROM planeta_origen order by id");
              while($fila=$planetas_origen->fetch_array()){
                $planeta_origen=$fila[1];
                ?>
                <option value="<?php echo $planeta_origen?>"><?php echo $planeta_origen?></option>
                <?php
              }
          ?>
              </select>
          </td>
        </tr>
        <tr>
          <td>
            Oficio
          </td>
          <td>
            <select name="oficio">
            <?php
              $oficios=$conexion->query("SELECT * FROM oficio");
              while($fila=$oficios->fetch_array()){
                $oficio=$fila[1];
                ?>
                <option value="<?php echo $oficio?>"><?php echo $oficio?></option>
                <?php
              }
          ?>
              </select>
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