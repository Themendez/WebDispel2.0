<%-- 
    Document   : carrito_b
    Created on : 14/06/2010, 12:34:34 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "connection.conexion"%>
<%@page import="java.sql.*"%>
<%@page session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
         String usuario =  (String)session.getAttribute("nombre");
         usuario = (String) session.getAttribute ("nombre");
         String id_user = (String) session.getAttribute("ID_usuario");
         String id_producto2 = (String) session.getAttribute("clave");
         if(usuario==null){
               out.println("<script languaje='Javascript' type='text/javascript'>");
               out.println("alert('Si no has iniciado sesion no puedes introducir cosas al carrito, Favor de iniciar sesion');");
               out.println("window.location='catalogo.jsp'");
               out.println("</script>");
            }else {
                out.println("Bienvenido "+usuario+" ");
                out.println("<a href='logout.jsp'>cerrar sesion</a>");
                }
         %>

  <%
         Connection con=null;
         Statement  stm=null;
         ResultSet  tb=null;
         

        String foto="";
        String nombre="";
        String cantidad="";
        String descripcion="";
        String articulo="";


         try{
         boolean lb_connection = false;
         try{
         nombre=request.getParameter("nombre");
         cantidad=request.getParameter("cantidad");
         descripcion=request.getParameter("descripcion");
         articulo=request.getParameter("articulo");

         Connection meconecto = conexion.getMysqlConnection();
         stm=meconecto.createStatement();
         lb_connection=true;

         String query = "SELECT * FROM productos WHERE nombre='"+articulo+"'";
         tb=stm.executeQuery(query);
         tb.next();
         int cant = Integer.parseInt(cantidad);
         if((tb.getInt("numero"))>=cant) {
                    int cant2 = tb.getInt("numero")-cant;
                    float total2 = cant * tb.getFloat("precio_unitario");
                    query = "UPDATE productos SET numero="+cant2+" WHERE nombre='"+articulo+"'";
                    stm.executeUpdate(query);
                    query = "INSERT INTO carrito VALUES('"+articulo+"','"+nombre+"',"+cantidad+","+total2+")";
                    stm.executeUpdate(query);
                    out.println("<script language='javascript' type='text/javascript' >");
                    out.println("window.location='catalogo.jsp'");
                    out.println("alert('El articulo "+articulo+" se a agregado correctamente');");
                    out.println("</script>");
                } else out.println( "<br />No se puede agregar esta cantidad al carrito quiza nuestro suministro se a agotado<br />" );
                stm.close();
                meconecto.close();
         

         }catch(Exception e){out.println(e);}



         }catch(Exception e){}

        %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <META NAME="keywords" CONTENT="electronica,mantenimiento,industrial,dispel">
        <title>JSP Page</title>
    </head>
    <body bgcolor="blue">
        <h1>Sumionistro agotado lo sentimos!</h1>
    </body>
</html>
