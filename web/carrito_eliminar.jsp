<%-- 
    Document   : carrito_eliminar
    Created on : 18/06/2010, 01:43:31 PM
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
         String id_user = (String) session.getAttribute("ID_usuario");
         String id_producto2 = (String) session.getAttribute("clave");
         if(usuario==null){
               out.println("<script languaje='Javascript' type='text/javascript'>");
               out.println("alert('Si no has iniciado sesion no puedes eliminar cosas del carrito,Favor de iniciar sesion');");
               out.println("window.location='login.jsp'");
               out.println("</script>");
            }else {
                out.println("Usuario: "+usuario+" ");
                out.println("<a href='logout.jsp'>cerrar sesion</a>");
                }
         %>
<html>
    <head>
        <title>Carrito_Eliminar</title>
        <meta http-equiv="REFRESH" CONTENT="0;URL=ver_carrito.jsp">
    </head>
    <body>
        <%
            String nombre2 = request.getParameter("nombre");
            String articulo2 = request.getParameter("articulo");
            String cantidad2 = request.getParameter("cantidad");

            Connection con = null;
            Statement stm = null;
            boolean bandera = false;
            try{
            boolean lb_connection = false;
            try {
                Connection meconecto = conexion.getMysqlConnection();
                stm=meconecto.createStatement();
                lb_connection=true;
                String query = "DELETE FROM carrito WHERE id_producto='"+articulo2+"' and id_usuario='"+nombre2+"' and cantidad="+cantidad2+" LIMIT 1";
                stm.executeUpdate(query);
                query = "SELECT * FROM productos WHERE nombre='"+articulo2+"'";
                ResultSet rs = stm.executeQuery(query);
                out.println(query);
                rs.next();
                int cantidad_nueva=rs.getInt(8)+Integer.parseInt(cantidad2);
                query = "UPDATE productos SET numero="+cantidad_nueva+" WHERE nombre='"+articulo2+"'";
                stm.executeUpdate(query);
                stm.close();
                con.close();
            } catch (Exception error) { System.out.println(error); }
            }catch (Exception e){}
        %>
    </body>
</html>
