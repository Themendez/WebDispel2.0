<%-- 
    Document   : acceso
    Created on : 30/07/2010, 10:20:22 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="Description" content="collin grasley - http://www.modetwentythree.com"/>
<meta name="Keywords" content="key, words"/>
<meta name="Distribution" content="Global"/>
<meta name="Robots" content="index,follow"/>
<link rel="stylesheet" type="text/css" href="inc/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="js/menu/style.css" media="all" />
<script type='text/javascript' src='js/menu/jquery-1.2.6.min.js'></script>
<script type='text/javascript' src='js/menu/kwicks.js'></script>
<script type='text/javascript' src='js/menu/custom.js'></script>
<script type="text/javascript" charset="ISO-8859-1" src="js/md5.js"></script>
<style type="text/css">
<!--
.Estilo1 {
	font-family: "Amerika Sans";
	font-size: 14px;
}
.Estilo6 {
	font-family: Dekers;
	font-size: 12px;
}



.Estilo11 {font-family: Dekers}
.Estilo15 {font-size: 12px}
.Estilo19 {color: #333333; font-family: Dekers;}
.Estilo49 {font-family: Dekers; font-size: 18px; font-weight: bold; }
.Estilo55 {
	font-family: Asenine;
	font-size: 24px;
}

-->
</style>
</head>
<body>
<div id="wrapper">

<!-- top info starts here -->

<div id="header">
  <div id="hright">
    <div id="hrighttop">
        <br />
        <br />
        <form method="post" action="buscador_1.jsp" class="search">
             <label class="Estilo1" for="user">Buscar:</label>
             <input name="search" type="text" size="20" class="required" minlength="4"/>
             <input type="submit" value="Ir" class="submit" />
        </form>

  <div id="hname">
       <%
         String usuario =  (String)session.getAttribute("nombre");
         usuario = (String) session.getAttribute ("nombre");
         if(usuario==null){
              out.println("Bienvenido Invitado");
              out.println("<br />");
              out.println("<span class='Estilo19'>");
              out.println("| <a href='login.jsp'>login</a> |");
              out.println("<a href='registro_cliente.jsp'>registro</a>");
              out.println("</span>");
            }else {
                out.println("Bienvenido <strong>"+usuario+"</strong> ");
                out.println("<br />");
                out.println("|<a href='logout.jsp'>cerrar sesion</a>| <a href='catalogo.jsp'>productos</a>|");
                }
         %>
       </div>
         </div>
  <div id="title">
    <h3><img src="logo1.png" alt="" width="302" height="72" /></h3>
  </div>
  <p>&nbsp;</p>
  <div id="nueva">
    <div id="nueva">
     <ul class="kwicks">
     <li id="kwick1"><a href="index.jsp">Inicio</a></li>
     <li id="kwick2"><a href="mision.jsp">Dispel</a></li>
     <li id="kwick3"><a href="servicio.jsp">Servicios</a></li>
     <li id="kwick4"><a href="contacto.jsp">Contacto</a></li>
     <li id="kwick5"><a href="catalogo.jsp">Productos</a></li>
   </ul>
    </div>
    </div>



  <div id="flash">
    <iframe name="window" id="flash" style="width:900px;height:195px" src="bannerindustrial/index.html" marginwidth="0" frameborder="0"></iframe>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</div>
<div id="footerin2">
<p align="left" class="Estilo15"><span class="Estilo11">Otros Servicios -</span><span class="Estilo19"><a href="http://www.modetwentythree.com/" title="m23">Mi cuenta </a> | <a href="mailto:collingrasley@gmail.com" title="template designed by collin grasley">Registro</a></span></p>
</div>
<div id="contlog">
  <div id="contenedorsinlog">
    <table width="50%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><div id="capalogin">
          <p>&nbsp;</p>
          <table width="60%" height="61" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td>
                  <div id="formulario">
                <br/>
                <br/>
                  <form method="post" name="login" action="validar_login.jsp">
                    <fieldset>
                        <a href="registro_cliente.jsp"><legend>Registrarse</legend></a>
                      <div class="medidas">
                        <label for="user">Usuario:</label>
                        <input id="user" name="id_user" />
                        </div>
                      <div class="medidas">
                        <label for="pass">Contraseña:</label>
                        <input type="password" id="pass" name="pass" value="" onfocus="this.select()" onchange="this.value=hex_md5(this.value)"/>
                        </div>
                      <div class="check">
                        <input type="checkbox" id="remember" name="remember" />
                        <label for="recordar">Recordar mi nombre de usuario en esta computadora</label>
                        </div>
                      </fieldset>
                    <div>
                      <input type="submit" name="boton" value="Ingresar" />
                      </div>
                    </form>
                 </div></td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div></td>
      </tr>
    </table>
    </div>
  <div id="pie"><img src="images2/foot.png" alt="" width="903" height="27" /></div>
</div>
</div>
</body>
</html>
