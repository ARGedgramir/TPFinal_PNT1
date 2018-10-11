<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAlumnos.aspx.cs" Inherits="TP_FInal.Pages.AdminAlumnos" %>

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
            width: 479px;
        }
        .auto-style3 {
            width: 699px;
        }
        .auto-style4 {
            width: 84px;
        }
        .auto-style5 {
            width: 84px;
            text-align: left;
        }
        .auto-style6 {
            text-align: justify;
            width: 479px;
        }
        .auto-style7 {
            width: 479px;
        }
    </style>
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

            <div id="content" class="auto-style3">
                <h1>Administracion Alumnos</h1>
                <div />
                <div>              
                <form id="formAdmAlumn" runat="server">
                <table>
                    <tr>
                        <td class="auto-style4"> Legajo:</td>
                         <td class="auto-style7"><asp:TextBox ID="txtinternalID" runat="server" Width="260px"></asp:TextBox><asp:ImageButton ID="searchintid" runat="server" onclick="BtnSearch_Click" ImageUrl="../Images/search.png" style="height: 21px; width: 26px" formnovalidate="formnovalidate"></asp:ImageButton>                             <asp:Label ID="lblerror" runat="server"></asp:Label>
                        </td>
                    </tr>
                   <tr>
                        <td class="auto-style4"> Nombre:</td>
                        <td class="auto-style7"><asp:TextBox ID="txtFirstName" runat="server" required="false" Width="260px" ValidateRequestMode="Disabled"></asp:TextBox></td>
                    </tr>
                   <tr>
                        <td class="auto-style4"> Apellido:</td>
                        <td class="auto-style7"><asp:TextBox ID="txtLastName" runat="server" required="false" Width="260px"></asp:TextBox></td>
                    </tr>
                   <tr>
                        <td class="auto-style5"> Fecha de Nacimiento:</td>
                    </tr>
                      <tr>
                        <td class="auto-style4"> DNI:</td>
                        <td class="auto-style7"><asp:TextBox ID="txtdni" runat="server" required="false" Width="260px" ></asp:TextBox></td>
                      </tr>
                   <tr>
                        <td class="auto-style4"> E-mail:</td>
                        <td class="auto-style7"><asp:TextBox ID="txtemail" runat="server" required="false" Width="260px"></asp:TextBox></td>
                   </tr>
                   <tr>
                        <td class="auto-style4"> Telefono:</td>
                        <td class="auto-style7"><asp:TextBox ID="txttelephone" runat="server" required="false" Width="260px"></asp:TextBox></td>
                   </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style2"><asp:Label ID="lblMensaje" runat="server" CssClass="texto_alerta"></asp:Label></td>
                    </tr>
                   <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnInsMod" runat="server" Text="Crear/Modificar Alumno" Width="150px" onclick="BtnInsMod_Click"/>
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
