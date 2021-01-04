<?php
//Datos de xamp
$host='localhost';
$usuario='root';
$password='';
$bD='m07';

$conexion=mysqli_connect($host,$usuario,$password,$bD); 
if(!$conexion){
    echo 'Error: '.mysqli_error($conexion);
}
?>