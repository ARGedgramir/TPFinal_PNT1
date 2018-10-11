<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TP_FInal.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Instituto Yusan</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../Style/style.css" />
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
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
                <form id="form1" runat="server">
                   <table>
                    <tr>
                        <td> Usuario:</td>
                        <td class="auto-style2"><asp:TextBox ID="txtuserid" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr> 
                    <tr>
                        <td> Password:</td>
                        <td class="auto-style2"><asp:TextBox ID="txtpassword" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr>
                       <tr>
                        <td></td>
                        <td class="auto-style2"><asp:Label ID="lblMensaje" runat="server" CssClass="texto_alerta"></asp:Label></td>
                    </tr>
                       <tr>
                        <td></td>
                        <td class="auto-style2"><asp:Button ID="btnlogin" runat="server" Text="Iniciar sesion" Width="150px" onclick="Btnlogin_Click"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="auto-style2"><asp:Button ID="btnlostpass" runat="server" Text="Recuperar contaseña" Width="150px" onclick="btnlosspass_Click"/></td>
                    </tr>
                </table>
                </form>
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
