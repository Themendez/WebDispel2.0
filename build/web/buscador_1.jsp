<%-- 
    Document   : buscador_1
    Created on : 8/07/2010, 11:09:19 AM
    Author     : oem
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import = "connection.conexion"%>
<%@page  session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Buscador interno</title>
        <link rel="stylesheet" type="text/css" href="stylest.css"/>
    </head>
<body>
 <%
         Connection con=null;
         Statement  stm=null;
         ResultSet  tb=null;


        String buscar="";


         try{
         boolean lb_connection = false;
         try{
         buscar=request.getParameter("search");
       
         Connection meconecto = conexion.getMysqlConnection();
         stm=meconecto.createStatement();
         lb_connection=true;
         String query = "SELECT * FROM productos WHERE descripcion LIKE '%"+buscar+"%';";
         tb=stm.executeQuery(query);
         out.println("<table id='mytable' cellspacing='0' summary='The technical'>");
         out.println("<caption>No tenemos todos los productos, solo los mejores</caption>");
         String tabcss="scope='col'";
         out.println("<tr><th '"+tabcss+">imagen</th><th '"+tabcss+"' >nombre</th><th '"+tabcss+"'>descripcion</th></tr>");
         
        %>

        <%
         int i=0;

         char[] letras = buscar.toCharArray();
         
         if (letras[i] != ' '){
         while (tb.next()){
             out.println("<tr>");
             out.println("<td>"+tb.getString(2)+"</td>");
             out.println("<td>"+tb.getString(3)+"</td>");
             out.println("</tr>");

         }
         }else if(tb.equals(null)) {
         out.print("no se encontraron registros con esa palabra");
         }else
          buscar="no se encontraron registros con esa palabra";
         
         %>
        

        <h1>Palabra Buscada: <% out.print(buscar); %> </h1>
    

         <%



         stm.close();
         meconecto.close();
         }catch(Exception e){out.println(e);}



         }catch(Exception e){}
%>

</body>
</html>



    
