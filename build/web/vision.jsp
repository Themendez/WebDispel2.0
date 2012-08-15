<%-- 
    Document   : vision
    Created on : 30/07/2010, 10:52:24 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Mision</title>
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
.Estilo49 {font-family: Dekers; font-size: 12px; color: #FFFFFF; }
.Estilo51 {
	font-size: 36px;
	color: #000000;
}
.Estilo52 {font-family: Dekers; font-size: 12px; color: #FFFFFF; font-weight: bold; }
.Estilo53 {
	font-family: Dekers;
	font-size: 24px;
	color: #FFFFFF;
}
.Estilo56 {font-family: Dekers; font-size: 36px; color: #000000; }
.Estilo57 {
	font-size: xx-large;
	color: #333333;
	font-weight: bold;
}
.Estilo58 {color: #000000}
.Estilo59 {font-size: 24px; color: #000000; }
.Estilo62 {font-family: Dekers; font-size: 12px; color: #333333; font-weight: bold; }
.Estilo63 {
	color: #333333;
	font-weight: bold;
}
.Estilo65 {color: #009595}
.Estilo66 {font-size: 12px; color: #333333; font-family: Dekers;}

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
<p>&nbsp;</p>
</div>



<!-- main content starts here -->
<p>&nbsp;</p>
<div id="footermision">
<p align="left" class="Estilo15"><span class="Estilo11">Otros Enlaces -</span><span class="Estilo19"><a href="" title="m23">Registro</a> | <a href="#" title="">Login</a> | <a href="#">Cableado</a> |</span></p>
<div id="misionv">
    <table cellpadding="4">
        <tr>
            <td colspan="2">
              <p align="center" class="Estilo52"><span class="Estilo51">Q</span><span class="Estilo59">uienes Somos???</span></p>
            </td>
        </tr>
        <tr>
            <td>
              <img src="images2/personal.png" alt="" width="315" height="192" />
            </td>
            <td>
             <p align="justify" class="Estilo62">Somos una empresa, joven y emprendedora enfocada en la satisfaccion del cliente, dedicada a la elaboracion de proyectos de automatizacion, remodelaciones electronicas, diseno,reparacion, mantenimiento de equipo industrial ycomercializacion de equipo electronico</p>
            </td>
        </tr>
    </table>
  
            <div id="flashmision">
	<iframe name="window"id="external" style="width:907px;height:200px" src="scroll/imageScroller.html" marginwidth="0" align="left" frameborder="0"></iframe>
			  <div align="left">
			    <p align="left" class="Estilo53 Estilo57"> <span class="Estilo65">.</span>Mision</p>
			    <table width="62%" height="36" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="36" align="left" valign="top" class="Estilo58"><p class="Estilo62">Proveer de un servicio Integral en el área electro-electronica, el cual sea capaz de aportar los elementos necesarios para satisfacer las areas industrial y comercial.</p>                      </td>
                  </tr>
                </table>
			    <p align="right" class="Estilo56"><span class="Estilo63">Vision</span>.</p>
			    <table width="64%" border="0" align="right" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="Estilo62">Ser la empresa lider en el area electro-electronica satisfaciendo ampliamente las expectativas de nuestros clientes; significandonos como la solucion rapida y eficaz a sus retos industriales y comerciales.</td>
                  </tr>
                </table>
			    </div>
             

            </div>
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
     <br />
  <div id="pie"><img src="images2/foot.png" alt="" width="903" height="27" /></div>
  
</div>
</div>
</div>
</body>
</html>
