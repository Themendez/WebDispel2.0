<%-- 
    Document   : correo
    Created on : 1/07/2010, 02:41:07 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Instantiate the form validation bean and supply the error message map --%>
<%@ page import="com.mycompany.*" %>
<jsp:useBean id="form" class="com.mycompany.MyForm" scope="request">
<jsp:setProperty name="form" property="errorMessages" value='<%= errorMap %>'/>
</jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<% // If process is true, attempt to validate and process the form
if ("true".equals(request.getParameter("process"))) { %>

<jsp:setProperty name="form" property="*" />

<%
// Attempt to process the form
if (form.process()) {
    // Go to success page
    response.sendRedirect("index.jsp"); return; } }
%>
<html>
    <head>
        <title>A Simple Form</title>
    </head>
    <body>
        <%-- When submitting the form, resubmit to this page --%>
        <form action='<%= request.getRequestURI() %>' method="POST">
            <%-- email --%>
            <font color=red>
            <%= form.getErrorMessage("email") %>
            </font>
            <br>
            Email: <input type="TEXT" name="email" value='<%= form.getEmail() %>'>
            <br>
            <%-- zipcode --%>
            <font color=red>
                <%= form.getErrorMessage("zipcode") %>
            </font>
                <br>
                Zipcode: <input type="TEXT" name="zipcode" value='<%= form.getZipcode() %>'>
                <br>
            <%-- nombre --%>
            <font color=red>
                <%= form.getErrorMessage("nombre") %>
            </font>
                <br>
                Nombre: <input type="TEXT" name="nombre" value='<%= form.getNombre() %>'>
                <br>
                <input type="SUBMIT" value="OK">
                <input type="HIDDEN" name="process" value="true">
        </form>
    </body>
</html>
<%! // Define error messages
java.util.Map errorMap = new java.util.HashMap();
public void jspInit() {
errorMap.put(MyForm.ERR_EMAIL_ENTER, "Please enter an email address");
errorMap.put(MyForm.ERR_EMAIL_INVALID, "The email address is not valid");
errorMap.put(MyForm.ERR_ZIPCODE_ENTER, "Please enter a zipcode");
errorMap.put(MyForm.ERR_ZIPCODE_INVALID, "The zipcode must be 5 digits");
errorMap.put(MyForm.ERR_ZIPCODE_NUM_ONLY, "The zipcode must contain only digits");
errorMap.put(MyForm.ERR_NOMBRE_ENTER, "Please enter a name");
errorMap.put(MyForm.ERR_NOMBRE_INVALID, "El nombre debe ser mayor a 3 digitos");
errorMap.put(MyForm.ERR_NOMBRE_LET_ONLY, "El nombre solo puede contener letras");
}
%>
