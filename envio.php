<?php
include("conexion.php");
$nom=$_POST["nombre"];
$ape=$_POST["apellido"];
$afi=$_POST["afiliacionf"];
$ar=$_POST["armaf"];
$ofi=$_POST["oficiof"];
$es=$_POST["especief"];
$po=$_POST["planeta_origenf"];

$insertar="INSERT INTO personaje(nombre, apellido, afiliacion, especie, planeta_origen, arma, oficio)VALUES ('$nombre','$apellido','$afiliacionf','$especief','$planeta_origenf','$armaf','$oficiof')";
$resultado = mysqli_query($conexion, $insertar);

if($resultado){
    echo"<script>alert('se ha registrado el usuario con exito');
    window.location.href='formulario_personaje.php'</script>";
}
else{
    echo "<script>alert('No se pudo registrar'); windows.history.go(-1);</script>";
}

?>