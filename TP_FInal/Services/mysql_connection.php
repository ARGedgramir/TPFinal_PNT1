<?php
	require_once 'mysql.php'
	try{
		$conexion = new PDO ('mysql:host=$host_name;dbname=$data_base',$user_name,$password);
	}catch(PDOException $prueba_error){
		echo "Error: " . $prueba_error->getMessage();
	}
?>