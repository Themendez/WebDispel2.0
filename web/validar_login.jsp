<%-- 
    Document   : validar_login
    Created on : 28/05/2010, 02:35:43 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" session='true'%>
<%@ page import = "connection.conexion"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>validar_login</title>
    </head>
    <body>
       <%
       Connection con=null;
       Statement  stm=null;
       ResultSet  tb=null;

       String id_user="";
       String password="";
       %>

       <%
       boolean lb_connection = false;
       try{
       id_user=request.getParameter("id_user").toString();
       password=request.getParameter("pass").toString();
  
       Connection meconecto = conexion.getMysqlConnection();
       stm=meconecto.createStatement();
       lb_connection=true;
       String query = "SELECT * FROM usuarios WHERE ID_usuario='"+id_user+"' AND contrasena='"+password+"'";
       out.println(query);
       tb = stm.executeQuery(query);
       if(tb.next()){
                    String nombre = tb.getString("nombre");
                    out.println("<script languaje='Javascript' type='text/javascript'>");
                    out.println("window.alert('Bienvenido "+id_user+"');");
                    out.println("</script>");
                    HttpSession sesion = request.getSession();
                    session.setAttribute("nombre",tb.getString(2));
                    session.setAttribute("contrasena",tb.getString(3));
                    session.setAttribute("ID_usuario",tb.getString(4));
                    Date fecha = new Date(sesion.getCreationTime());
                    out.println( "Fecha de Inicio de Sesion: " + fecha + "<br />" );
                    out.println("<script languaje='Javascript' type='text/javascript'>");
                    out.println("window.location='Perfil.jsp'");
                    out.println("</script>");
       }else{

            out.println("<script languaje='Javascript' type='text/javascript'>");
            out.println("window.alert('Acceso Denegado usuario y/o password incorrecto "+password+"');");
            out.println("window.location='login.jsp'");
            out.println("</script>");
                }
       try{
       query = "SELECT * FROM administrador WHERE ID_usuario='"+id_user+"' AND contrasena='"+password+"'";


       }catch(Exception e){}
        stm.close();
        meconecto.close();
       }catch(Exception e){
           System.out.println("&&&&&"+e);
           lb_connection=false;
           out.println("<script language='javascript' type='text/javascript' >");
           out.println("window.location='login.jsp'");
           out.println("alert('Nombre de ususario o contraseña incorrectos "+password+"');");
           out.println(e);
           out.println("</script>");}

           if(lb_connection){
           out.println("<script language='javascript' type='text/javascript' >");
           out.println("window.location='index.jsp'");
           out.println("alert('Nombre de usuario y contraseña correctos "+password+"');");
           out.println("</script>");
           }

      
     
      
       %>
    </body>
</html>
