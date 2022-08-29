<?php
include("conexion.php");
$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$afiliacion=$_POST["afiliacion"];
$arma=$_POST["arma"];
$oficio=$_POST["oficio"];
$especie=$_POST["especie"];
$planeta_origen=$_POST["planeta_origen"];
$nave=$_POST["nave"];

$insertar="INSERT INTO personaje(nombre, apellido, afiliacion, especie, planeta_origen, arma, oficio, nave)VALUES ('$nombre','$apellido','$afiliacion','$especie','$planeta_origen','$arma','$oficio','$nave')";
$resultado = mysqli_query($conexion, $insertar);

if($resultado){
    echo"<script>alert('se ha registrado el usuario con exito');
    window.location.href='formulario_personaje.php'</script>";
}
else{
    echo "<script>alert('No se pudo registrar'); windows.history.go(-1);</script>";
}

?>