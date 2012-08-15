<%-- 
    Document   : index
    Created on : 20/05/2010, 01:53:06 PM
    Author     : oem
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page  session="true" %>

<% HttpSession actualSession = request.getSession(true);
   session.getAttribute("name");
   session.getAttribute("contra");
   session.getAttribute("id_session");
%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
       <title>Home - Dispel AE Dispositivos Electronicos</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="Description" content=" Pagina de Dispel AE Empresa dedicada al mantenimiento industrial electro electronica"/>
        <meta name="Keywords" content="Electronica Dispel AE Mantenimiento Industria Acero Gabinetes Electrica"/>
        <meta name="Distribution" content="Global"/>
        <meta name="Robots" content="index,follow,ARCHIVE"/>
        <meta name="Author" content="M&M" />
        <meta name="COPYRIGHT" content="Dispel AE" />
        <link rel="shortcut icon" href="images2/icon.png" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/stylobody.css" media="all" />
        <link rel="stylesheet" type="text/css" href="js/menu/style.css" media="all" />
        <script type='text/javascript' src='js/menu/jquery-1.2.6.min.js'></script>
        <script type='text/javascript' src='js/menu/kwicks.js'></script>
        <script type='text/javascript' src='js/menu/custom.js'></script>
        <script type="text/javascript" charset="ISO-8859-1" src="js/md5.js"></script>
    </head>

<body>
<div id="wrapper">

<!-- top info starts here -->

<div id="header">

    <div id="hrighttop">
        <form method="post" action="buscador_1.jsp" class="search">
             <span class="Estilo1" for="user">Buscar:</span>
             <input name="search" type="text" size="20" class="required" minlength="4"/>
             <input type="submit" value="Ir" class="submit" />
        </form>

  <div id="hname">
       <%
         String usuario =  (String)session.getAttribute("nombre");
         usuario = (String) session.getAttribute ("nombre");
         if(usuario == null){
              out.println("Bienvenido: Invitado");
              out.println("<span class='Estilo19'>");
              out.println("| <a href='login.jsp'>login</a> |");
              out.println("<a href='registro_cliente.jsp'>registro</a>");
              out.println("</span>");
         }else {
                out.println("Bienvenido <strong>"+usuario+"</strong> ");
                out.println("<br />");
                out.println("|<a href='logout.jsp'>cerrar sesion</a>| <a href='Perfil.jsp'>Mi perfil</a>|");
         }
         %>
       </div>
  </div>

  <div id="title">
    <h3>
        <a href="index.jsp"><img src="logo1.png" alt="Dispel AE" width="302px" height="72px" /></a>
    </h3>
  </div>
  <p>&nbsp;</p>
  
  <div id="nueva">
     <ul class="kwicks">
        <li id="kwick1"><a href="index.jsp">Inicio</a></li>
        <li id="kwick2"><a href="vision.jsp">Dispel</a></li>
        <li id="kwick3"><a href="servicio.jsp">Servicios</a></li>
        <li id="kwick4"><a href="#">Contacto</a></li>
        <li id="kwick5"><a href="#">Productos</a></li>
     </ul>
  </div>
  <div id="flash">
    <iframe name="window"id="external" style="width:900px;height:200px" src="banner/index.html" marginwidth="0" align="center" frameborder="0"></iframe>
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
       
<!-- main content starts here -->
<div id="footerin">
    <p align="left" class="otrosServicios">
        <span class="Estilo11">Otros Servicios -</span>
        <span class="Estilo19">
            <a href="#" title="m23">Mi Cuenta </a> | 
            <a href="registro_cliente.jsp" title="registro">Registro</a> |
        </span>
    </p>
<div id="hrighttop2">
  <table width="100%" height="435px" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="56%" height="406" valign="top">
          <p align="center" class="Estilo37" style="height: 37px"><img src="images2/square_prod.jpg" alt="nuevos productos"/></p>
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="332px" height="252px" align="middle">
            <param name="movie" value="autoviewer.swf" />
            <param name="quality" value="high" />
            <embed src="autoviewer.swf" width="330px" height="368px" align="middle" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed>
            </object>
      <td width="44%" valign="top">
            <table width="100%" height="293px" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="271" align="left" valign="top">

                    <div id="login">

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
                 </div>
                <p align="center" class="Estilo11"><span class="Estilo11"><span class="Estilo46">Olvidaste tu   Contrase<span class="Estilo44">ñ</span>a</span></span><span class="Estilo46">? </span> </p>
                <br />
              </div>
              </td>
          </tr>
          <tr>
            <td height="22" align="left" valign="top"><div align="center" class="Estilo11 Estilo64 Estilo15"><strong>INNOVANDO M</strong><span class="Estilo35">É</span><strong>XICO</strong></div></td>
          </tr>
        </table>
        </td>
    </tr>
  </table>
  </div>
    <div id="aaaaa">
        <iframe name="window"id="external" style="width:100%; height:385px; padding: 45px 0 5px 4px" src="servicios/acordion.html" marginwidth="0" align="center" frameborder="0"></iframe>
        <br/>
    </div>
    <div id="pie"><img src="images2/footer.png" alt="footer" width="903px" height="27px" /></div>
    </div>
</div>
</body>
</html>
