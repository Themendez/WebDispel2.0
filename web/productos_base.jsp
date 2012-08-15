<%-- 
    Document   : productos
    Created on : 20/05/2010, 01:55:26 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import = "connection.conexion"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <%
         String usuario =  (String)session.getAttribute("nombre");
         usuario = (String) session.getAttribute ("nombre");
         if(usuario==null){
              out.println("<a href='login.jsp'>login</a> Bienvenido Invitado");
            }else {
                out.println("Bienvenido "+usuario+" ");
                 out.println("<a href='ver_carrito.jsp'>Ver Carrito</a>");
                out.println("<a href='logout.jsp'>cerrar sesion</a>");
               }
         %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>productos</title>
        <link rel="stylesheet" type="text/css" href="stylest.css"/>
    </head>
    <body>
         <h1>Productos</h1>
        <%
         Connection con=null;
         Statement  stm=null;
         ResultSet  tb=null;
         boolean bandera=false;

         try{
         boolean lb_connection = false;
         try{
         Connection meconecto = conexion.getMysqlConnection();
         stm=meconecto.createStatement();
         lb_connection=true;
         String query = "SELECT nombre,descripcion,imagen,medida,peso,precio_unitario,numero FROM productos;";
         tb = stm.executeQuery(query);

         out.println("<table id='mytable' cellspacing='0' summary='The technical'>");
         out.println("<caption>No tenemos todos los productos, solo los mejores</caption>");
         String tabcss="scope='col'";
         out.println("<tr><th '"+tabcss+"'>imagen</th><th '"+tabcss+"' >nombre</th><th '"+tabcss+"'>descripcion</th>" +
                     "<th '"+tabcss+"'>medida</th><th '"+tabcss+"' >peso</th><th '"+tabcss+"'>precio_unitario</th>" +
                     "<th '"+tabcss+"' >Carrito de compras</th> </tr>");
          int i=0;
          while(tb.next()){
          String alt;
          if(i%2!=0)
          alt="class='alt'";
          else alt="class=''";
          out.println("<tr>");
          out.println("<td "+alt+"><img class='emege' src='productos/"+tb.getString(3)+"' alt='"+tb.getString(1)+"'/></td>");
          out.println("<td "+alt+">"+tb.getString(1)+"</td>");
          out.println("<td "+alt+">"+tb.getString(2)+"</td>");
          out.println("<td "+alt+">"+tb.getString(4)+"</td>");
          out.println("<td "+alt+">"+tb.getString(5)+"</td>");
          out.println("<td "+alt+"> $"+tb.getString(6)+"</td>");
          out.println("<td "+alt+"><a href='carrito_b.jsp?nombre="+usuario+"&articulo="+tb.getString(1)+"&descripcion"+tb.getString(2)+"&cantidad=1''><img src='productos/cars.png' alt='mandar_al_carrito'/></a></td>");
          out.println("</tr>");
          i++;
         }
          out.println("</table>");
          stm.close();
          meconecto.close();

         }catch(Exception e){out.println(e);}



         }catch(Exception e){}

        %>

       

    </body>
</html>
