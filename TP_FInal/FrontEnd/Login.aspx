<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TP_FInal.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Instituto Yusan</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../Style/style.css" />
</head>
<body>
    <div id="main">
        <div id="header">
            <div id="logo">
                <div id="logo_text">
                    <h1><a href="login.aspx"><img src="../Images/banner.jpg" width="800" height="120" /></a></h1>
                    <div id="menu">
                        <a href="AdminAlumnos.aspx"> <img src="../Images/menu-02.png"/></a><a href="AdminCursos.aspx"><img src="../Images/menu-03.jpg" /></a><a href="AdminProfesores.aspx"><img src="../Images/menu-04.jpg" /></a><a href="AdminEventos.aspx"><img src="../Images/menu-05.jpg" /></a><a href="Contacto.aspx"><img src="../Images/menu-06.jpg" /></a><img src="../Images/menu-07.jpg" /><img src="../Images/menu-08.jpg" />
                    </div>
                </div>
            </div>
        &nbsp;</div>
        <div id="site_content">
            <div id="content">
                <div class "menu">
                    <a href="login.php"><li class="module-login active">Login</li></a>
                    <a href="register.php"><li class="module-register">Register</li></a>
                </div>
                <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" class="form">
                    <div class="welcome-form">
                    <h1>Bienvenido</h1><h2>Instituto Yusan</h2>
                    </div>
                    <div class="user line-input">
                        <label class="lnr lnr-user"></label>
                        <input type="text" placeholder="Nombre Usuario" name="usuario" />
                    </div>
                    <div class "password line-input">
                        <label class="lnr lnr-lock"></label>
                        <input type="password" placeholder="Contraseña" name ="clave" />
                    </div>
                 
                     <?php if (!empty($error)):?>
                    <div class="mensaje">
                        <?php echo $error; ?>
                    </div>
                    <?php endif; ?>

                    <button type="submit">Entrar</button>
                </form>
            </div>
            <script src="Metods/jquerys.js"></script>
            <script src="Metods/scripts.js"></script>
            <div id="content_footer">
                <div id="footer">
                    <h3>FOOTER</h3>
                    Avenida Rivadavia 6895 | Buenos Aires | Argentina
                </div>
            </div>
        </div>
</body>
</html>
