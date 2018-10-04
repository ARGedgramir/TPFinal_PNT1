<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP_FInal.Pages.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Instituto Yusan</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../Style/style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 399px;
            margin-left: 40px;
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
                <h1>Registro de Usuarios</h1>
                <form id="form1" runat="server">
                    
                  <table>
                    <tr>
                        <td> Nombre</td>
                        <td class="auto-style1"><asp:TextBox ID="txtFirstName" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr> 
                    <tr>
                        <td> Apellido</td>
                        <td class="auto-style1"><asp:TextBox ID="TextLastName" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr> <tr>
                        <td> Email </td>
                        <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" required="true" Width="260px" type="Email"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td class="auto-style1"><asp:TextBox ID="txtPassword" runat="server" required="true" Width="260px" type="Password"></asp:TextBox></td>
                    </tr> <tr>
                        <td>Confirm Password</td>
                        <td class="auto-style1"><asp:TextBox ID="txtConfirmPassword" runat="server" required="true" Width="260px" type="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSubmit" runat="server" Text="Registar Usuario" Width="150px" onclick="BtnSubmit_Click"/></td>
                        <td class="auto-style1">&nbsp;</td>
                                           
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
