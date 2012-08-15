<%-- 
    Document   : capchaimg
    Created on : 16/07/2010, 02:21:23 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true"%>
<%@ page import="java.io.*"%>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.image.*"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="java.util.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
try{
int width=80;
int height=30;
Random rdm=new Random();
int rl=rdm.nextInt();
String hash1 = Integer.toHexString(rl);
String capstr=hash1.substring(0,5);
HttpSession session_actual = request.getSession(true);
String codigo_generado = (String) session_actual.getAttribute("key");
if(codigo_generado == null){
session_actual.setAttribute("key",capstr);
}else{
session_actual.invalidate();
HttpSession nueva_session = request.getSession(true);
nueva_session.setAttribute("key",capstr);
}

Color background = new Color(255,255,255);
Color fbl = new Color(0,100,0);
Font fnt=new Font("SansSerif",1,17);
BufferedImage cpimg =new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
Graphics g = cpimg.createGraphics();
g.setColor(background);
g.fillRect(0,0,width,height);
g.setColor(fbl);
g.setFont(fnt);
g.drawString(capstr,15,20);
g.setColor(background);
g.drawLine(50,17,80,17);
g.drawLine(50,22,80,22);
response.setContentType("js/jquery-validate/jpeg");
ServletOutputStream strm = response.getOutputStream();
ImageIO.write(cpimg,"jpeg",strm);
cpimg.flush();
strm.flush();
strm.close();
}catch (Exception ex){
out.println(ex.getMessage());
}
%>


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
