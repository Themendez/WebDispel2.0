<%-- 
    Document   : create_user
    Created on : 21/05/2010, 02:46:44 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">




<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>create_user</title>
    </head>

    <body>
         <form method="POST" action="user.jsp">
		<p>Nombre</p><input type="text" name="nombre" /><br />
		<p>Correo</p><input type="text" name="correo" /><br  />
		<p>Contraseña</p><input type="password" name="pass" /><br />
		<p><button type="submit">Enviar</button></p>

          </form>






    </body>
</html>
