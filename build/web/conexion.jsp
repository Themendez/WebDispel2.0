<%-- 
    Document   : conexion
    Created on : 20/05/2010, 01:54:08 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" %>
<%@ page import = "connection.conexion"%>
<%@ page import = "java.sql.Connection"%>
<%
    Connection meconecto = conexion.getMysqlConnection();

    if (!meconecto.isClosed())
      out.print("Desconectado!");

   /* CUERPO DE LA PAGINA */

   meconecto.close(); /* no olvidarse de cerrar las conexiones. */

%>