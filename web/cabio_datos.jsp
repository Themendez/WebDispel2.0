<%-- 
    Document   : cabio_datos
    Created on : 13/07/2010, 12:10:55 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ page import = "connection.conexion"%>
<%@page session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
         String usuario =  (String)session.getAttribute("nombre");
         usuario = (String) session.getAttribute ("nombre");
         String id_usuario = (String) session.getAttribute("ID_usuario");
         if(usuario==null){
             out.println("<script languaje='Javascript' type='text/javascript'>");
               out.println("alert('Si no has iniciado sesion no puedes ver tu perfil, Favor de iniciar sesion');");
               out.println("window.location='login.jsp'");
               out.println("</script>");
            }else {
                out.println("Usuario: "+usuario+" ");
                out.println("<br/><a href='logout.jsp'>cerrar sesion</a><br /> <a href='index.jsp'>Home</a><br /><a href='catalogo.jsp'>productos</a><br /><a href='Perfil.jsp'>Mi perfil</a>");
                }
   %>
    <body>
        <h1>Modificar datos de perfil</h1>
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
         
         out.print("<form action='modif_dat2.jsp' name='modif' method='post'>");
         out.print("<table>");
         out.print("<tr>");
         out.print("<td align='center' width='50'>");
         out.print("<span class='style10'> Nombre(s) </span>");
         out.print("</td>");
         out.print("<td>");
         out.print("<input name='nombre' value="+tb.getString(2)+" />");
         out.print("</td>");
         out.print("</tr>");
         out.print("<tr>");
         out.print("<td align='center' width='50'>");
         out.print("<span class='style10'> Apellido(s) </span>");
         out.print("</td>");
         out.print("<td>");
         out.print("<input name='apellido' value="+tb.getString(3)+" />");
         out.print("</td>");
         out.print("</tr>");
         out.print("<tr>");
         out.print("<td align='center' width='50'>");
         out.print("<span class='style10'> Correo Electronico </span>");
         out.print("</td>");
         out.print("<td>");
         out.print("<input name='apellido' value="+tb.getString(7)+" />");
         out.print("</td>");
         out.print("</tr>");
         out.print("<tr>");
         out.print("<td align='center' width='50'>");
         out.print("<span class='style10'> Fecha de nacimiento </span>");
         out.print("</td>");
         out.print("<td>");
         out.print("<input name='apellido' value="+tb.getString(8)+" />");
         out.print("</td>");
         out.print("</tr>");
         out.print("<tr>");
         out.print("<td>");
         out.print("<input type='submit' value='modificar' />");
         out.print("</td>");
         out.print("</tr>");
         out.print("</table>");
         out.print("</form>");
         }
           %>


        <%
              

             stm.close();
             meconecto.close();
           }catch(Exception e){}
           }catch (Exception e){}
%>
    </body>
</html>
