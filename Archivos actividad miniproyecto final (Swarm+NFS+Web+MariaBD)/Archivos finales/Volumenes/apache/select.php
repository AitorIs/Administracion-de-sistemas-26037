<?php
	include 'variables_base.php';
	$tabla_select = "tabla_prueba1";
	$select = "SELECT * FROM " . $tabla_select;
	$resultados = $conn->query($select);
	while($fila = $resultados->fetch_assoc()) {
    		echo "id: " . $fila["id"] . ", Nombre: " . $fila["nombre"] . "<br>";
  	}
?>