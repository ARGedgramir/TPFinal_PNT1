<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfesores.aspx.cs" Inherits="TP_FInal.Pages.AdminProfesores" %>

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
                <h1>Administracion Profesores</h1>
                <div />
                <div>
               <form id="formAdmProf" runat="server">
               <table>
                    <tr>
                        <td> Legajo:</td>
                         <td class="auto-style1"><asp:TextBox ID="txtinternalID" runat="server" required="true" Width="260px"></asp:TextBox>
                             <asp:ImageButton ID="searchintid" runat="server" onclick="BtnSearch_Click" ImageUrl="../Images/search.png" style="height: 21px; width: 26px"></asp:ImageButton></td>
                    </tr>
                   <tr>
                        <td> Nombre:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtFirstName" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr>
                   <tr>
                        <td> Apellido:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtLastName" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr>
                   <tr>
                        <td> Fecha de Nacimiento:</td>
                    </tr>
                      <tr>
                        <td> DNI:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtdni" runat="server" required="true" Width="260px" ></asp:TextBox></td>
                    </tr>
                 
                   <tr>
                        <td> E-mail:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtemail" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr>
                   <tr>
                        <td> Telefono:</td>
                        <td class="auto-style1"><asp:TextBox ID="txttelephone" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr>
                   <tr>
                        <td> Antiguedad:</td>
                        <td class="auto-style1"><asp:TextBox ID="txtantique" runat="server" required="true" Width="260px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> <asp:Button ID="btnInsMod" runat="server" Text="Crear/Modificar Profesor" Width="150px" onclick="BtnInsMod_Click"/>
                        </td>
                    </tr>
               </table>
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
