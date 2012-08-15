<%-- 
    Document   : user
    Created on : 21/05/2010, 03:07:49 PM
    Author     : oem
--%>
<%@page
    language="java"
    contentType="text/html"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%@page import="java.sql.Connection"  %>
<%@page import="java.util.*"%>
<%@page import="java.lang.String"%>
<%@ page import = "connection.conexion"%>
<%@page session="true" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>creando</title>
    </head>
    <body>
 <%
       Connection con=null;
       Statement  stm=null;
       ResultSet  tb=null;
        
 
 
        String nombre="";
        String apellido="";
        String id_user="";
        String pass="";
        String fec_nac="";
        String phone="";
        String mail="";
        String direccion1="";
        String direccion2="";
        String pais="";
        String ciudad="";
        String estate="";
        String cp="";
        String empresa="";
        String pagina_web="";
        String capcha="";
        boolean lb_connection = false;
        try {

            nombre=request.getParameter("name").toString();
            apellido=request.getParameter("ape").toString();
            id_user=request.getParameter("id_user").toString();
            phone=request.getParameter("phone").toString();
            pass=request.getParameter("pwd").toString();
            fec_nac=request.getParameter("fec_nac").toString();
            mail=request.getParameter("mail").toString();
            direccion1=request.getParameter("dir1").toString();
            direccion2=request.getParameter("dir2").toString();
            pais=request.getParameter("pais").toString();
            ciudad=request.getParameter("ciudad").toString();
            estate=request.getParameter("provincia").toString();
            cp=request.getParameter("cp").toString();
            empresa=request.getParameter("empresa").toString();
            pagina_web=request.getParameter("web").toString();
            capcha=request.getParameter("key").toString();
           
        
   //**************< CONECTANDO A LA BASE DE DATOS >***************

       Connection meconecto = conexion.getMysqlConnection();
       stm=meconecto.createStatement();
       lb_connection=true;
       
      
       
       String query = ("INSERT INTO usuarios (nombre,apellido,ID_usuario,contrasena,fecha_nac,email,direccion1," +
                       "direccion2,pais,ciudad,estado,codigo_postal,empresa,telefono) VALUES('"+nombre+"','"+apellido+"'," +
                       "'"+id_user+"','"+pass+"','"+fec_nac+"','"+mail+"','"+direccion1+"','"+direccion2+"','"+pais+"'," +
                       "'"+ciudad+"','"+estate+"','"+cp+"','"+empresa+"','"+phone+"');");
       out.println(query);
       System.out.println(query);
       stm.executeUpdate(query);
       String crearusuario="CREATE USER '"+id_user+"'@'localhost' IDENTIFIED BY '"+pass+"';";
       stm.execute(crearusuario);
       crearusuario="GRANT USAGE ON * . * TO 'dispelae'@'localhost' IDENTIFIED BY '******'"+
       "WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;";
       stm.execute(crearusuario);
       crearusuario="GRANT SELECT,INSERT,UPDATE,DELETE ON `dispelae` . * TO '"+id_user+"'@'localhost';";
       stm.execute(crearusuario);
       out.println("<script languaje='Javascript' type='text/javascript'>");
       out.println("alert('Su registro se a llevado con exito Bienvenido:"+id_user+"');");
       out.println("window.location='index.jsp'");
       out.println("</script>");
       stm.close();
       meconecto.close();

    }
      catch(Exception e){ out.println(e);    }

 

    
%>

    </body>
</html>
