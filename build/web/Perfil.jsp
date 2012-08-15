<%-- 
    Document   : Perfil
    Created on : 5/07/2010, 01:50:56 PM
    Author     : oem
--%>
<%@page import="java.sql.*" %>
<%@ page import = "connection.conexion"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="inc/style.css" media="all" />
        <link rel="stylesheet" type="text/css" href="js/menu/style.css" media="all" />
        <script type='text/javascript' src='js/menu/jquery-1.2.6.min.js'></script>
        <script type='text/javascript' src='js/menu/kwicks.js'></script>
        <script type='text/javascript' src='js/menu/custom.js'></script>
        <title>Mi Perfil</title>
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
         String id_usuario = (String) session.getAttribute("ID_usuario");
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
  <p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</div>

    
 
        <h1>Mi Perfil</h1>
 <%
         Connection con=null;
         Statement  stm=null;
         ResultSet  tb=null;
         boolean bandera = false;


         try{
         boolean lb_connection = false;
         try{

         Connection meconecto = conexion.getMysqlConnection();
         stm=meconecto.createStatement();
         lb_connection=true;

         String query = "SELECT * FROM usuarios WHERE id_usuario='"+id_usuario+"';";
         tb = stm.executeQuery(query);
         if (tb.next()){
         out.print("<table>");

         out.print("<tr>");
         out.print("<td align='center' width='50'>");
         out.print("<span class='style10'> Nombre(s) </span>");
         out.print("</td>");
         out.print("<td align='center' width='50'>");
         out.print("<p>" +tb.getString(2)+ "</p>");
         out.print("</td>");
         out.print("</tr>");
         
         out.print("<tr>");
         out.print("<td align='center' width='50'>");
         out.print("<span class='style10'> Apellido(s) </span>");
         out.print("</td>");
         out.print("<td align='center' width='80'>");
         out.print("<p>" +tb.getString(3)+ "</p>");
         out.print("</td>");
         out.print("</tr>");
         
         out.print("<tr>");
         out.print("<td align='center' width='50'>");
         out.print("<span class='style10'> Id de usuario </span>");
         out.print("</td>");
         out.print("<td align='center' width='80'>");
         out.print("<p>" +tb.getString(4)+ "</p>");
         out.print("</td>");
         out.print("</tr>");
         
         out.print("<tr>");
         out.print("<td>");
         out.print("<span class='style10'> Fecha de nacimiento </span>");
         out.print("</td>");
         out.print("<td align='center' width='80'>");
         out.print("<p>" +tb.getString(6)+ "</p>");
         out.print("</td>");
         out.print("</tr>");
         
         out.print("<tr>");
         out.print("<td align='center' width='80'>");
         out.print("<span class='style10'> Correo electronico </span>");
         out.print("</td>");
         out.print("<td align='center' width='80'>");
         out.print("<p>" +tb.getString(7)+ "</p>");
         out.print("</td>");
         out.print("</tr>");

         out.print("<tr>");
         out.print("<td align='center' width='80'>");
         out.print("<span class='style10'> Pais </span>");
         out.print("</td>");
         out.print("<td align='center' width='80'>");
         out.print("<p>" +tb.getString(10)+ "</p>");
         out.print("</td>");
         out.print("</tr>");

         out.print("<tr>");
         out.print("<td align='center' width='80'>");
         out.print("<span class='style10'> Estado </span>");
         out.print("</td>");
         out.print("<td align='center' width='80'>");
         out.print("<p>" +tb.getString(11)+ "</p>");
         out.print("</td>");
         out.print("</tr>");

         out.print("<tr>");
         out.print("<td align='center' width='80'>");
         out.print("<span class='style10'> Ciudad </span>");
         out.print("</td>");
         out.print("<td align='center' width='80'>");
         out.print("<p>" +tb.getString(12)+ "</p>");
         out.print("</td>");
         out.print("</tr>");

         out.print("</table>");

       }
             stm.close();
             meconecto.close();

      }catch(Exception e){}
  }catch (Exception e){}
%>
   
<a href="cabio_datos.jsp">modificar datos</a>
<br/>
<a href="cambio_contra.jsp">modificar contraseña</a>
  </div>
    </body>
</html>
