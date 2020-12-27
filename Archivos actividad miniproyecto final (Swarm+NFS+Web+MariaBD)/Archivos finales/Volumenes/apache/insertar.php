<?php
	include 'variables_base.php';
	$tabla = "tabla_prueba1";
	$id = $_GET["id"];
	$nombre = $_GET["nombre"];
	$sql = "INSERT INTO $tabla (id, nombre) VALUES ($id, '$nombre')";	
	echo $sql;
	if($conn->query($sql) === true){
		echo "Basura guardada";
	}
	else{
		echo "TUS MUERTOS EXCEPTION HAS OCURRED: " . $conn->error;
	}
	$conn->close();
?>