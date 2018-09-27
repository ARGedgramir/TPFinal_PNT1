<?php session_start();
	require_once 'mysql.php'
	require 'pages/Login.aspx';

    if(isset($_SESSION['usuario'])) {
        header('location: index.php');
    }

    $error = '';
    
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        
        $usuario = $_POST['usuario'];
        $clave = $_POST['Contrasenna'];
	try{
		$conexion = new PDO ('mysql:host=$host_name;dbname=$data_base',$user_name,$password);
	}catch(PDOException $prueba_error){
		echo "Error: " . $prueba_error->getMessage();
	}
            }
        
        $statement = $conexion->prepare('SELECT * FROM usuarios WHERE usuario = :correo AND clave = :Password'
        );
        
        $statement->execute(array(
            ':correo' => $usuario,
            ':Password' => $clave
        ));
            
        $resultado = $statement->fetch();
        
        if ($resultado !== false){
            $_SESSION['usuario'] = $usuario;
            header('location: index.php');
        }else{
            $error .= '<i>Este usuario no existe</i>';
        }
    }
    
?>