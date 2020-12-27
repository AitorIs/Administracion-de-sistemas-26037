<?php
	$direccion_servidor = "10.0.2.215";
	$username = "root";
	$password = "password";
	$database = "database_prueba";	
	$conn = new mysqli($direccion_servidor, $username, $password, $database);
	if (!$conn) {
  		die("FUCK" . $conn->connect_error);
	}
	else{
		echo "todo correcto(al menos la conexion)<br>";		
	}
?>