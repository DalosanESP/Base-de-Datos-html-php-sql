<?php
include('conexion.php');
session_start();
$sql="SELECT * FROM personaje";
$result=mysqli_query($conexion,$sql);

$nombre = $_POST["nombre"] ;
$apellido = $_POST["apellido"] ;
$afiliacion = $_POST["afiliacion"] ;
$especie = $_POST["especie"] ;
$planeta_origen = $_POST["planeta_origen"] ;
$arma = $_POST["arma"] ;
$oficio = $_POST["oficio"] ;


        //indicamos el nombre de la base datos
        $datab = "mi_base";
        //indicamos selecionar ala base datos
        $db = mysqli_select_db($connection,$datab);

        
        //insertamos datos de registro al mysql xamp, indicando nombre de la tabla y sus atributos
        $instruccion_SQL = "INSERT INTO personaje (nombre, apellido, afiliacion, especie, planeta_origen, arma, oficio)
                             VALUES ('$nombre','$apellido', '$afiliacion', '$especie', '$planeta_origen', '$arma', '$oficio')";
                           
                            
        $resultado = mysqli_query($connection,$instruccion_SQL);

        //$consulta = "SELECT * FROM tabla where id ='2'"; si queremos que nos muestre solo un registro en especifivo de ID
        $consulta = "SELECT * FROM personaje";
        
$result = mysqli_query($connection,$consulta);
if(!$result) 
{
    echo "No se ha podido realizar la consulta";
}
echo "<table>";
echo "<tr>";
echo "<th><h1>id</th></h1>";
echo "<th><h1>Nombre</th></h1>";
echo "<th><h1>Apellido</th></h1>";
echo "<th><h1>Afiliacion</th></h1>";
echo "<th><h1>Especie</th></h1>";
echo "<th><h1>Plante de Origen</th></h1>";
echo "<th><h1>Arma</th></h1>";
echo "<th><h1>Oficio</th></h1>";
echo "</tr>";

while ($colum = mysqli_fetch_array($result))
 {
    echo "<tr>";
    echo "<td><h2>" . $colum['id']. "</td></h2>";
    echo "<td><h2>" . $colum['nombre']. "</td></h2>";
    echo "<td><h2>" . $colum['apellido'] . "</td></h2>";
    echo "<td><h2>" . $colum['afiliacion'] . "</td></h2>";
    echo "<td><h2>" . $colum['especie'] . "</td></h2>";
    echo "<td><h2>" . $colum['planeta_origen'] . "</td></h2>";
    echo "<td><h2>" . $colum['arma'] . "</td></h2>";
    echo "<td><h2>" . $colum['oficio'] . "</td></h2>";
    echo "</tr>";
}
echo "</table>";

mysqli_close( $connection );

   //echo "Fuera " ;
   echo'<a href="index.html"> Volver Atrás</a>';


?>