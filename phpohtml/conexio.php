<?php 
$host = "localhost:8083"; 
$database = "BBDDLibrary"; 
$user = "root"; 
$password = "password";
$conexion = mysqli_connect($host, $user, $password,$database);
if (!$conexion) 
  die("No ha podido realizarse la conexión".mysqli_connect_error());
else
  echo "Conexión correcta";
  
//mysqli_close($conexion); //cierra la BBDD
?>
