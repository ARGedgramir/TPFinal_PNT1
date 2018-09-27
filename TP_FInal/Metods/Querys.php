<?php
	require_once 'mysql_conection.php';

	$sentencia_sql = "CALL pa_consultarUsuarios";

	$result = $conexion->query($sentencia_sql);

	if (!$result) die ("Fallo la conexión" . $conexion->error);
	
	$filas = array();
	
	while($registro = mysqli_fetch_assoc($result){
	$filas [] = $registro;
	}
	echo json_encode($filas);

?>