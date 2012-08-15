<%-- 
    Document   : ver_carrito
    Created on : 15/06/2010, 12:33:39 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ page import = "connection.conexion"%>
<%@page session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <%
         String usuario =  (String)session.getAttribute("nombre");
         usuario = (String) session.getAttribute ("nombre");
         String id_usuario = (String) session.getAttribute("ID_usuario");
         if(usuario==null){
             out.println("<script languaje='Javascript' type='text/javascript'>");
               out.println("alert('Si no has iniciado sesion no puedes ver tu carrito, Favor de iniciar sesion');");
               out.println("window.location='login.jsp'");
               out.println("</script>");
            }else {
                out.println("Usuario: "+usuario+" ");
                out.println("<a href='logout.jsp'>cerrar sesion</a>");
                }
 %>




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

         String query = "SELECT * FROM carrito WHERE id_usuario='"+usuario+"';";
                tb = stm.executeQuery(query);
                out.println( "<table>" );
                out.println( "<tr><td>Articulo</td><td>Cantidad</td><td>Total</td><td>Imagen</td><td>Quitar del carrito</td></tr>");
                while( tb.next() ) {
                    out.println( "<tr>" );
                    out.println( "<td>" +tb.getString(1)+ "</td>");
                    out.println( "<td>" +tb.getString(3)+ "</td>");
                    out.println( "<td>" +tb.getString(4)+ "</td>");
                    out.println( "<td><img  class='emege'src='productos/"+tb.getString(1)+".jpg' alt='"+tb.getString(1)+"'/></td>");
                    out.println( "<td><a href='carrito_eliminar.jsp?nombre="+tb.getString(2)+"&articulo="+tb.getString(1)+"&cantidad="+tb.getString(3)+"'><img src='productos/quitar.png' alt='quitar del carrito'/></a></td>");
                    out.println( "</tr>" );
                    bandera=true;
                }
             if (!bandera) out.println( "<strong> TU carrito se encuentra vacío!!!</strong>" );
             stm.close();
             meconecto.close();
           }catch(Exception e){}
           }catch (Exception e){}
%>
               <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylest.css"/>
        <title>Carrito</title>
    </head>
    <body>
    </body>
</html>
