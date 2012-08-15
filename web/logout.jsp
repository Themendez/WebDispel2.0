<%-- 
    Document   : logouto
    Created on : 1/06/2010, 12:27:33 PM
    Author     : oem
--%>

<%@ page import="java.sql.*;" session='true'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <%


                                try{
                                    HttpSession sesion = request.getSession();
                                    session.invalidate();
                                    out.println("<script language='javascript' type='text/javascript' >");
                                    out.println("alert('Su sesion a finalizado con exito¡');");
                                    out.println("window.location='index.jsp'");
                                    out.println("</script>");
                                    
                                }
                                catch(Exception e){out.println(e);}
                     

                            %>
    </body>
</html>