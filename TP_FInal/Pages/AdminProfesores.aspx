<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfesores.aspx.cs" Inherits="TP_FInal.Pages.WebForm1" %>

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
               <form>
                    <label>Legajo:<input  type="text" placeholder="Ingrese su Usuario"id="Usuario"/>&nbsp;<img src="../Images/search.png" style="height: 21px; width: 26px" id="searchLegajo"/>
                    <br />
                    Nombre<input  type="text" placeholder="Nombre del Profesor"id="nombreProf"/> 
                    <br />
                    Apellido:<input  type="text" placeholder="Apellido del Profesor"id="apellidoProf"/> 
                    <br />
                    Fecha de Nacimiento:<input  type="text" placeholder="Fecha de Nacimiento"id="fechNacProf"/> 
                    <br />
                    DNI:<input  type="text" placeholder="Numero de DNI del profesor"id="dniProf"/> 
                    <br />
                    E-mail:<input  type="text" placeholder="E-mail del profesor"id="emailProf"/> 
                    <br />
                    Telefono:<input  type="text" placeholder="Numero de telefono del Profesor"id="telProf"/> 
                    <br />
                    Antiguedad:<input  type="text" placeholder="Antiguedad del profesor"id="antProf"/> </label>
                   
                   <input type="button" value="ingresar" id="Login"/>
                   <br />
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
