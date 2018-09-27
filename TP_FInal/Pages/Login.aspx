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
                <h1>INICIO DE SESION</h1>
               <form>
                    <!-- USERNAME INPUT -->
                    <label for="username">Usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
                    <input  type="text" placeholder="Ingrese su Usuario"id="Usuario"/>&nbsp;
                    <!-- PASSWORD INPUT -->
                    <label for="password">
                    <br />
                    Contraseña:&nbsp;&nbsp;&nbsp; </label>
                    &nbsp;<input type="password" placeholder="Ingrese Contraseña" id="Contrasenna"/><br />
                    &nbsp;<input type="submit" value="Iniciar sesion" id="Login"/>
                    <br />
                    <a href="ResetPassword">Cambiar Contraseña?</a><br/>
                </form>
                 <script src="../metods/Login_Connector.js"></script>
                 <script src="../metods/Login.js"></script>

                <div />
             
                <div id="content_footer"></div>
                <div id="footer">
                    <h3>FOOTER</h3>
                    Avenida Rivadavia 6895 | Buenos Aires | Argentina
                </div>
            </div>
        </div>
    </div>
</body>
</html>
