<?php
	require_once 'mysql_connection.php';

	$sentencia_sql = "CALL pa_consultarProfesores";

	$result = $conexion->query($sentencia_sql);

	if (!$result) die ("Fallo la conexi�n" . 	->error);
	
	$filas = array();
	
	while($registro = mysqli_fetch_assoc($result){
	$filas [] = $registro;
	}
	echo json_encode($filas);

?>