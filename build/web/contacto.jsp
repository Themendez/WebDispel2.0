<%-- 
    Document   : contacto
    Created on : 30/07/2010, 11:13:50 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Soporte</title>
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

#Layer1 {
	position:absolute;
	padding: 5px 10px 100px 150px;
	width:370px;
	height:2px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	padding: 1px 10px 100px 150px;
	width:648px;
	height:-100px;
	z-index:2;
}
.Estilo11 {font-family: Dekers}
.Estilo15 {font-size: 12px}
.Estilo19 {color: #333333; font-family: Dekers;}
.Estilo21 {
	font-family: Dekers;
	font-size: 24px;
	color: #FFFFFF;
}
.Estilo22 {font-family: Dekers; font-size: 12px; color: #FFFFFF; }
.Estilo23 {color: #333333}
.Estilo24 {font-family: Dekers; font-size: 24px; color: #333333; }
.Estilo25 {font-family: Dekers; font-size: 12px; color: #000000; }

-->
</style>
</head>
<body>
<div id="wrapper">

<!-- top info starts here -->

<div id="header">
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
                out.println("|<a href='logout.jsp'>cerrar sesion</a>| <a href='Perfil.jsp'>Mi Cuenta</a>|");
                }
         %>
       </div>
         </div>
  <div id="title">
    <h3><img src="logo1.png" alt="" width="302" height="72" /></h3>
  </div>
  <p>&nbsp;</p>
  <div id="nueva">
    <ul class="kwicks">
     <li id="kwick1"><a href="index.jsp">Inicio</a></li>
     <li id="kwick2"><a href="vision.jsp">Dispel</a></li>
     <li id="kwick3"><a href="servicio.jsp">Servicios</a></li>
     <li id="kwick4"><a href="contacto.jsp">Contacto</a></li>
     <li id="kwick5"><a href="catalogo.jsp">Productos</a></li>
   </ul>
    </div>



  <p>&nbsp;</p>
</div>



<!-- main content starts here -->
<div id="footermision">
<p align="left" class="Estilo15"><span class="Estilo11">Otros Servicios -</span><span class="Estilo19"><a href="http://www.modetwentythree.com/" title="m23">Seis</a> | <a href="mailto:collingrasley@gmail.com" title="template designed by collin grasley">Cinco </a> | <a href="#">Cuatro </a> | <a href="#">| Tres |</a>  <a href="#">| Dos </a>|<a href="#">uno</a> |</span></p>
<div id="soporte">
  <table width="99%" height="443" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="441" valign="top"><table width="97%" height="562" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="52%" height="562" align="left" valign="top"><p align="center" class="Estilo21">&nbsp;</p>
            <p align="center" class="Estilo24">Soporte.</p>
            <p align="center" class="Estilo22 Estilo23">Haznos saber tus dudas y comentarios hacerda de Dispel </p>
            <table width="51%" height="19" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td><p align="justify" class="Estilo22 Estilo23">Nombre:
                    <input name="textfield2" type="text" size="14" />
                    </p>
                  <p align="justify" class="Estilo22"><span class="Estilo23">Email:
                    </span>
                    <input name="textfield3" type="text" size="18" />
                  </p>
                  <p class="Estilo22">
                      <textarea name="textarea" cols="50" rows="10" class="Estilo6">Comentario:
</textarea>
                  </p>
                  <p align="center" class="Estilo22">
                    <input name="Submit" type="submit" class="Estilo6" value="Enviar" />
                  </p>
                  <p class="Estilo22">&nbsp;</p></td>
              </tr>
            </table>
            <p align="center" class="Estilo22">&nbsp;</p></td>
          <td width="48%" align="left" valign="top"><p>&nbsp;</p>
            <p class="Estilo25">Necesitas Ayuda de Algun departamento Contactalo  </p>
            <iframe name="window"id="external" style="width:450px;height:500px" src="t/slicing/index.html" marginwidth="0" align="left" frameborder="0"></iframe></td>
        </tr>
      </table>
        </td>
    </tr>
  </table>
  <div id="pie"><img src="images2/foot.png" alt="" width="903" height="27" /></div>
</div>
</div>
</div>
</body>
</html>
