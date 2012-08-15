<%-- 
    Document   : servicio
    Created on : 30/07/2010, 11:27:01 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Automatización</title>
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
.Estilo8 {font-family: Dekers; font-size: 7px; font-weight: bold; }
#Layer2 {
	position:absolute;
	padding: 1px 10px 10px 150px;
	width:648px;
	height:-100px;
	z-index:2;
}
.Estilo11 {font-family: Dekers}
.Estilo15 {font-size: 12px}
.Estilo19 {color: #333333; font-family: Dekers;}
.Estilo32 {
	font-size: 14px;
	font-family: "Labtop Superwide";
	color: #333333;
}
.Estilo35 {
	font-family: Abstract;
	font-size: 5px;
}
.Estilo82 {	font-size: 12px;
	color: #333333;
}
.Estilo96 {
	color: #333333;
	font-size: 12px;
}
.Estilo99 {font-family: Dekers; font-size: 14px; font-weight: bold; }
.Estilo100 {font-size: 14px}
.Estilo103 {font-size: 11px}

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
     <ul class="kwicks">
     <li id="kwick1"><a href="index.jsp">Inicio</a></li>
     <li id="kwick2"><a href="vision.jsp">Dispel</a></li>
     <li id="kwick3"><a href="servicio.jsp">Servicios</a></li>
     <li id="kwick4"><a href="contacto.jsp">Contacto</a></li>
     <li id="kwick5"><a href="catalogo.jsp">Productos</a></li>
   </ul>
    </div>



  <div id="flash">
    <iframe name="window"id="external" style="width:900px;height:195px" src="bannerautomatizacion/index.html" marginwidth="0" align="center" frameborder="0"></iframe>
  </div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


<div id="contservicios6">
  <div id="Layer1">
    <p>&nbsp;</p>
    <p align="center" class="Estilo99">Automatizaci<span class="Estilo35">ó</span>n</p>
    <p align="center" class="Estilo8">&nbsp; </p>
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div id="Layer2">
    <div align="center" class="Estilo32">
      <p align="justify" class="Estilo64 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo100 Estilo15">¿P<span class="Estilo96">orqué automatizar mi proceso de  producción?</span></p>
      <p align="justify" class="Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo64 Estilo82 Estilo15">Porque al controlar  automáticamente s su producción usted estará detectando y corrigiendo  inmediatamente cualquier falla que pudiera presentar en el proceso productivo.</p>
      <p align="justify" class="Estilo15">&nbsp;</p>
      <p align="center" class="Estilo15 Estilo100 Estilo70 Estilo70 Estilo82 Estilo64 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70"><strong>“AHORRANDO TIEMPO,  ESFUERZO Y DINERO”</strong></p>
      <p align="center" class="Estilo15">&nbsp;</p>
      <p align="justify" class="Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo82 Estilo70 Estilo64 Estilo15">Lo cual hará de su  empresa, una organización productiva y de calidad.</p>
      <p align="justify" class="Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo70 Estilo82 Estilo70 Estilo64 Estilo15">Además la inversión  que requiere para automatizar su proceso productivo es realmente pequeña en  relación a los beneficios monetarios que esta le traerá al reducir costos e  incrementar sus márgenes de utilidad a corto y largo plazo.</p>
      </div>
    </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div id="pie"><img src="images2/foot.png" alt="" width="903" height="27" /></div>
</div>
</div>



<!-- main content starts here -->
<div id="footer">
<p align="center" class="Estilo15"><span class="Estilo11">Otros Servicios -</span><span class="Estilo19"><a href="#" title="m23"> Instalaci<span class="Estilo35">ó</span>n </a> | <a href="#" title="">Cableado y Conex<span class="Estilo35">ió</span>n </a> | <a href="#">Dise<span class="Estilo35">ñ</span>o e Integraci<span class="Estilo35">ó</span>n </a> | <a href="#">| Mantenimiento |</a>  <a href="#">|Motores</a>|<a href="#"> Electronicos</a> |</span></p>
</div>
</div>
</body>
</html>