<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEventos.aspx.cs" Inherits="TP_FInal.Pages.WebForm1" %>

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
                    <h1><a href="index.html"><img src="../Images/banner.jpg" width="800" height="120" /></a></h1>
                    <div id="menu">
                        <a href="AdminAlumnos.aspx"> <img src="../Images/menu-02.png"/></a><a href="AdminCursos.aspx"><img src="../Images/menu-03.jpg" /></a><a href="AdminProfesores.aspx"><img src="../Images/menu-04.jpg" /></a><a href="AdminEventos.aspx"><img src="../Images/menu-05.jpg" /></a><a href="Contacto.aspx"><img src="../Images/menu-06.jpg" /></a><img src="../Images/menu-07.jpg" /><img src="../Images/menu-08.jpg" />
                    </div>
                </div>
            </div>
        &nbsp;</div>
        <div id="site_content">

            <div id="content">
                <h1>Administracion Eventos</h1>
                <p>
                    parrafo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
                <div />
                <div>
                    <form action="/accion">
                        <div>
                            <label for="name">Nombre:</label>
                            <input type="text" id="name" />
                        </div>
                        <div>
                            <label for="mail">E-mail:</label>
                            <input type="email" id="mail" />
                        </div>
                        <div>
                            <label for="msg">Mensaje:</label>
                            <textarea id="msg"></textarea>
                        </div>

                        <div class="button">
                            <button type="submit">Enviar</button>
                        &nbsp;&nbsp;&nbsp;
                        </div>
                    </form>
                </div>
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
