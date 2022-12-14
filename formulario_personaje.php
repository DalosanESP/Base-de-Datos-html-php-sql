<?php
include 'conexion.php';
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>Formulario de Personaje</title>
    <link rel="stylesheet" href="Estilos/personaje.css">
  </head>
  <body>
    <form id="personaje" action="conexion_personaje.php" method="POST">
      <table border="0" align="center">
        <tr>
        <td style="color:white"; colspan="2">
        INGRESE LOS DATOS DEL PERSONAJE
          </td>
        </tr>
        <tr>
          <td style="color:white";>
            Nombre
          </td>
          <td>
            <label for="nombre"></label>
            <input type="text" name="nombre" id="nombre" required  />
          </td>
        </tr>
        <tr>
          <td style="color:white";>
            Apellido
          </td>
          <td>
            <label for="apellido"></label>
            <input type="text" name="apellido" id="apellido" required  />
          </td>
        </tr>
        <tr>
          <td style="color:white";>
            Afiliacion
          </td>
          <td>
            <select name="afiliacion">
            <?php
              $afiliaciones=$conexion->query("SELECT * FROM afiliacion order by nombre");
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
          <td style="color:white";>
            Arma
          </td>
          <td>
            <select name="arma">
            <?php
              $armas=$conexion->query("SELECT * FROM arma order by nombre");
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
          <td style="color:white";>
            Especie
          </td>
          <td>
            <select name="especie">
            <?php
              $especies=$conexion->query("SELECT * FROM especie order by nombre");
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
          <td style="color:white";>
            Planeta de Origen
          </td>
          <td>
            <select name="planeta_origen">
            <?php
              $planetas_origen=$conexion->query("SELECT * FROM planeta_origen order by nombre");
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
          <td style="color:white";>
            Oficio
          </td>
          <td>
            <select name="oficio">
            <?php
              $oficios=$conexion->query("SELECT * FROM oficio order by nombre");
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
        </tr>
        <tr>
          <td style="color:white";>
            Nave
          </td>
          <td>
            <select name="nave">
            <?php
              $naves=$conexion->query("SELECT * FROM nave order by nombre");
              while($fila=$naves->fetch_array()){
                $nave=$fila[1];
                ?>
                <option value="<?php echo $nave?>"><?php echo $nave?></option>
                <?php
              }
          ?>
              </select>
          </td>
        </tr>
        </form>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="center" colspan="2">
            <input
              type="submit"
              name="enviar"
              id="enviar"
              value="Enviar"
            />
          </td>
        </tr>
      </table>
    
  </body>
</html>