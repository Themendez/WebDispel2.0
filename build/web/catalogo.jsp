<%-- 
    Document   : paginacion
    Created on : 5/07/2010, 02:24:34 PM
    Author     : oem
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page  session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.PreparedStatement"  %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import = "connection.conexion"%>


<%!
public int nullIntconv(String str)
{
    int conv=0;
    if(str==null)
    {
        str="0";
    }
    else if((str.trim()).equals("null"))
    {
        str="0";
    }
    else if(str.equals(""))
    {
        str="0";
    }
    try{
        conv=Integer.parseInt(str);
    }
    catch(Exception e)
    {
    }
    return conv;
}
%>
<%

    Connection conn = null;
    Connection meconecto = conexion.getMysqlConnection();

    ResultSet rsPagination = null;
    ResultSet rsRowCnt = null;

    PreparedStatement psPagination=null;
    PreparedStatement psRowCnt=null;

    int iShowRows=5;  // Number of records show on per page
    int iTotalSearchRecords=10;  // Number of pages index shown

    int iTotalRows=nullIntconv(request.getParameter("iTotalRows"));
    int iTotalPages=nullIntconv(request.getParameter("iTotalPages"));
    int iPageNo=nullIntconv(request.getParameter("iPageNo"));
    int cPageNo=nullIntconv(request.getParameter("cPageNo"));

    int iStartResultNo=0;
    int iEndResultNo=0;

    if(iPageNo==0)
    {
        iPageNo=0;
    }
    else{
        iPageNo=Math.abs((iPageNo-1)*iShowRows);
    }



    String sqlPagination="SELECT SQL_CALC_FOUND_ROWS * FROM productos limit "+iPageNo+","+iShowRows+"";

    psPagination=meconecto.prepareStatement(sqlPagination);
    rsPagination=psPagination.executeQuery();

    //// this will count total number of rows
     String sqlRowCnt="SELECT FOUND_ROWS() as cnt";
     psRowCnt=meconecto.prepareStatement(sqlRowCnt);
     rsRowCnt=psRowCnt.executeQuery();

     if(rsRowCnt.next())
      {
         iTotalRows=rsRowCnt.getInt("cnt");
      }
%>
<html>
<head>
<title>Catalogo Dispel</title>
<link rel="stylesheet" type="text/css" href="stylest.css"/>
<link rel="stylesheet" type="text/css" href="inc/style.css" media="all" />

<link rel="stylesheet" type="text/css" href="js/menu/style.css" media="all" />
<script type='text/javascript' src='js/menu/jquery-1.2.6.min.js'></script>
<script type='text/javascript' src='js/menu/kwicks.js'></script>
<script type='text/javascript' src='js/menu/custom.js'></script>
<script type="text/javascript">
<!--
function ini() {
  tab=document.getElementById('mytable');
  for (i=0; ele=tab.getElementsByTagName('td')[i]; i++) {
    ele.onmouseover = function() {iluminar(this,true)}
    ele.onmouseout = function() {iluminar(this,false)}
  }
}

function iluminar(obj,valor) {
  fila = obj.parentNode;

    for (i=0; ele = fila.getElementsByTagName('td')[i]; i++)
      ele.style.background = (valor) ? 'WindowFrame' : '';
}
-->
</script>

</head>
<body onload='ini()'>
    <div id="wrapper">
        <div id="header">
   <div id="hrighttop">
        <br />
        <br />
        <form method="post" action="buscador_1.jsp" class="search">
             <label class="Estilo1" for="user">Buscar:</label>
             <input name="search" type="text" size="20" class="required" minlength="4"/>
             <input type="submit" value="Ir" class="submit" />
        </form>

  <div id="hname">
      <%
         String usuario =  (String)session.getAttribute("nombre");
         usuario = (String) session.getAttribute ("nombre");
         if(usuario==null){
              out.println("Bienvenido Invitado");
              out.println("<br />");
              out.println("<span class='Estilo19'>");
              out.println("| <a href='login.jsp'>login</a> |");
              out.println("<a href='registro_cliente.jsp'>registro</a>");
              out.println("</span>");
            }else {
                out.println("Bienvenido <strong>"+usuario+"</strong> ");
                out.println("<br />");
                out.println("|<a href='logout.jsp'>cerrar sesion</a>| <a href='catalogo.jsp'>productos</a>|");
                }
         %>

       </div>
         </div>
  <div id="title">
    <h3><img src="logo1.png" alt="" width="302" height="72" /></h3>
  </div>
  <p>&nbsp;</p>
  <div id="nueva">
    <ul class="kwicks">
     <li id="kwick1"><a href="index.jsp">Inicio</a></li>
     <li id="kwick2"><a href="vision.jsp">Dispel</a></li>
     <li id="kwick3"><a href="servicio.jsp">Servicios</a></li>
     <li id="kwick4"><a href="contacto.jsp">Contacto</a></li>
     <li id="kwick5"><a href="catalogo.jsp">Productos</a></li>
   </ul>
    </div>
 <p>&nbsp;</p>
</div>
 <!-- main content starts here -->
<div id="footermision">


    <p align="left" class="Estilo15"><span class="Estilo11">Otros Servicios -</span><span class="Estilo19"><a href="http://www.modetwentythree.com/" title="m23">Seis</a> | <a href="mailto:collingrasley@gmail.com" title="template designed by collin grasley">Cinco </a> | <a href="#">Cuatro </a> | <a href="#">| Tres |</a>  <a href="#">| Dos </a>|<a href="#">uno</a> |</span></p>
<form name="frm">
<input type="hidden" name="iPageNo" value="<%=iPageNo%>">
<input type="hidden" name="cPageNo" value="<%=cPageNo%>">
<input type="hidden" name="iShowRows" value="<%=iShowRows%>">

<% out.println("<table id='mytable' cellspacing='0' summary='The technical'>");
         out.println("<caption>No tenemos todos los productos, solo los mejores</caption>");
         String tabcss="scope='col'";
         out.println("<tr><th '"+tabcss+"'>imagen</th><th '"+tabcss+"' >nombre</th><th '"+tabcss+"'>descripcion</th>" +
                     "<th '"+tabcss+"'>medida</th><th '"+tabcss+"' >peso</th><th '"+tabcss+"'>precio_unitario</th>" +
                     "<th '"+tabcss+"' >Carrito de compras</th> </tr>");
%>


<%
  int w=0;
  while(rsPagination.next())
  {
  
    String alt;
          if(w%2!=0)
          alt="class='alt'";
          else alt="class=''";
          out.println("<tr>");
          out.println("<td "+alt+" ><img class='emege' src='productos/"+rsPagination.getString(4)+"' alt='"+rsPagination.getString(2)+"'/></td>");
          out.println("<td "+alt+">"+rsPagination.getString(2)+"</td>");
          out.println("<td "+alt+">"+rsPagination.getString(3)+"</td>");
          out.println("<td "+alt+">"+rsPagination.getString(5)+"</td>");
          out.println("<td "+alt+">"+rsPagination.getString(6)+"</td>");
          out.println("<td "+alt+"> $"+rsPagination.getString(7)+"</td>");
          out.println("<td "+alt+"><a href='carrito_b.jsp?nombre="+usuario+"&articulo="+rsPagination.getString(2)+"&descripcion"+rsPagination.getString(3)+"&cantidad=1''><img src='productos/cars.png' alt='mandar_al_carrito'/></a></td>");
          out.println("</tr>");
          w++;
   
 }
 %>
<%
  //// calculate next record start record  and end record
        try{
            if(iTotalRows<(iPageNo+iShowRows))
            {
                iEndResultNo=iTotalRows;
            }
            else
            {
                iEndResultNo=(iPageNo+iShowRows);
            }

            iStartResultNo=(iPageNo+1);
            iTotalPages=((int)(Math.ceil((double)iTotalRows/iShowRows)));

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

%>
<tr>
<td colspan="3">
<div>
<%
        //// index of pages

        int i=0;
        int cPage=0;
        if(iTotalRows!=0)
        {
        cPage=((int)(Math.ceil((double)iEndResultNo/(iTotalSearchRecords*iShowRows))));

        int prePageNo=(cPage*iTotalSearchRecords)-((iTotalSearchRecords-1)+iTotalSearchRecords);
        if((cPage*iTotalSearchRecords)-(iTotalSearchRecords)>0)
        {
         %>
          <a href="catalogo.jsp?iPageNo=<%=prePageNo%>&cPageNo=<%=prePageNo%>"> << Previous </a>
         <%
        }

        for(i=((cPage*iTotalSearchRecords)-(iTotalSearchRecords-1));i<=(cPage*iTotalSearchRecords);i++)
        {
          if(i==((iPageNo/iShowRows)+1))
          {
          %>
           <a href="catalogo.jsp?iPageNo=<%=i%>" style="cursor:pointer;color: red"><b><%=i%></b></a>
          <%
          }
          else if(i<=iTotalPages)
          {
          %>
           <a href="catalogo.jsp?iPageNo=<%=i%>"><%=i%></a>
          <%
          }
        }
        if(iTotalPages>iTotalSearchRecords && i<iTotalPages)
        {
         %>
         <a href="catalogo.jsp?iPageNo=<%=i%>&cPageNo=<%=i%>"> >> Next</a>
         <%
        }
        }
      %>
<b>Filas <%=iStartResultNo%> - <%=iEndResultNo%>   Total de resultados  <%=iTotalRows%> </b>

</div>
</td>

</tr>

</form>
 
</div>

</div>


</body>
</html>
<%
    try{
         if(psPagination!=null){
             psPagination.close();
         }
         if(rsPagination!=null){
             rsPagination.close();
         }

         if(psRowCnt!=null){
             psRowCnt.close();
         }
         if(rsRowCnt!=null){
             rsRowCnt.close();
         }

         if(conn!=null){
          meconecto.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>

