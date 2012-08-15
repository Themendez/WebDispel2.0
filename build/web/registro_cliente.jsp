<%-- 
    Document   : registro_cliente
    Created on : 2/06/2010, 12:55:21 PM
    Author     : oem
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page  session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Registro</title>
        <link rel="stylesheet" type="text/css" href="style1.css"/>
        <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
         <link rel="stylesheet" type="text/css" href="js/menu/style.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/stylobody.css" media="all" />
        <link rel="stylesheet" type="text/css" href="js/jquery-validate/stylecapcha.css"/>


        <script type="text/javascript" src="js/cascade/jquery/jquery.js"></script>
        <script type="text/javascript" charset="ISO-8859-1" src="js/jquery-validate/jquery.validate.js"></script>
        <script type="text/javascript" charset="ISO-8859-1" src="js/jsall.js"></script>
        <script type="text/javascript" src="js/cascade/jquery/jquery.cascade.js"></script>
        <script type="text/javascript" src="js/cascade/jquery/jquery.cascade.ext.js"></script>
        <script type="text/javascript" src="js/cascade/jquery/jquery.templating.js"></script>
         <script type="text/javascript" src="js/jquery-validate/captcha.js"></script>
        <script type="text/javascript" charset="ISO-8859-1" src="js/md5.js"></script>
        
       
        <script type='text/javascript' src='js/menu/kwicks.js'></script>
        <script type='text/javascript' src='js/menu/custom.js'></script>
        

       <script type="text/javascript">
			function commonTemplate(item) {
				return "<option value='" + item.Value + "'>" + item.Text + "</option>";
			};
			function commonTemplate2(item) {
				return "<option value='" + item.Value + "'>***" + item.Text + "***</option>";
			};

			function commonMatch(selectedValue) {
				return this.When == selectedValue;
			};

      </script>
      
    </head>
    <body>
        <div id="wrapper">
            <div id="header">

    <div id="hrighttop">
        <br />
        <br />
        <form method="post" action="buscador_1.jsp" class="search">
             <label class="Estilo1" for="user">Buscar:</label>
            <input name="search" type="text" size="20" />
            <input type="submit" value="Ir" class="input" />
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
              out.println("<a href='registro_cliente.jsp'>registro</a> |");
              out.println("</span>");
            }else {
                out.println("Bienvenido "+usuario+" ");
                out.println("<br />");
                out.println("<a href='logout.jsp'>cerrar sesion</a> <a href='catalogo.jsp'>productos</a>");
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
     <li id="kwick2"><a href="#">Dispel</a></li>
     <li id="kwick3"><a href="catalogo.jsp">Productos</a></li>
     <li id="kwick4"><a href="#">Servicios</a></li>
     <li id="kwick5"><a href="#">Contacto</a></li>
   </ul>
    </div>
  <div id="flash">
    <iframe name="window"id="external" style="width:900px;height:195px" src="banner/index.html" marginwidth="0" align="center" frameborder="0"></iframe>
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>


</div>
<!-- main content starts here -->
<div id="footerin">
 <p align="left" class="Estilo15"><span class="Estilo11">Otros Servicios -</span><span class="Estilo19">|<a href="index.jsp" title="m23">Inicio </a> | <a href="servicios.jsp" title="Servicios">Registro</a> |</span></p>
 <div id="formy">
 <form name="registerForm" id="registerForm"  ACTION="user.jsp" METHOD="POST" >
 <fieldset>
 <legend>Completa el Formulario de Registro</legend>
      
     <table align="center">
           <tr>
	       <td>Nombre(s)</td>
	       <td><input name="name" type="text" id="name" size="40px" class="required texto error" minlength="3" /></td>
	   </tr>
           <tr>
	       <td>Apellido(s)</td>
	       <td><input name="ape" type="text" id="ape" size="40px" class="required username error" minlength="3"/></td>
	       </tr>
           <tr>
	       <td>Correo electronico</td>
	       <td><input name="mail" type="email" id="mail" size="40px" class="required  error email" /></td>
	       </tr>
           <tr>
           <td>Repite Correo</td>
	       <td><input name="mail1" type="email" id="mail1" size="40px" class="required error email"  equalTo="#mail" /></td>
           </tr>
           <tr>
	       <td>Contraseña</td>
               <td><input name="pwd" type="password" id="pwd"  size="40px" class="required error" minlength="5" onfocus="this.select()"
                    value="" onchange="this.value=hex_md5(this.value)"/></td>
	       </tr>
		   <tr>
	       <td>Repita Contraseña</td>
	       <td><input name="pwdc" type="password" id="pwdc" class="required error" size="40px" equalTo="#pwd" onfocus="this.select()"
                    value="" onchange="this.value=hex_md5(this.value)" /></td>
	       </tr>
		   <tr>
           <td>Sitio Web: </td>
           <td><input  name="web" type="text" id="web2" size="40px" class="optional defaultInvalid url error" />
	       <span class="example">http://www.example.com</span>
               </td>
		   </tr>
		   <tr>
	       <td>Telefono:</td>
	       <td><input name="phone" type="text" id="phone" size="40px" class="required NumbersOnly error" /></td>
		   </tr>
		   <tr>
           <td>ID Usuario</td>
           <td>
           <input name="id_user" type="text" id="user_name" size="40px" class="required username error" minlength="4" />
           </td>
           </tr>
           <tr>
           <td>Pais</td>
           <td>
               <select name="pais" size="1"  id="pais"  size="40px" class="required error" >
                <option value="" selected>[Selecciona un Pais]</option>
                <option value="AB">Antigua y Barbuda</option>
                <option value="AR">Argentina</option>
                <option value="BH">Bahamas</option>
                <option value="BDS">Barbados</option>
                <option value="BEL">Belice</option>
                <option value="BOL">Bolivia</option>
                <option value="BRA">Brasil</option>
                <option value="CAN">Canada</option>
                <option value="CHL">Chile</option>
                <option value="CSR">Costa Rica</option>
                <option value="CUB">Cuba</option>
                <option value="ECU">Ecuador</option>
                <option value="USA">Estados Unidos</option>
                <option value="BOL">Bolivia</option>
                <option value="BRA">Brasil</option>
                <option value="CAN">Canada</option>
                <option value="CHL">Chile</option>
                <option value="CSR">Costa Rica</option>
                <option value="CUB">Cuba</option>
                <option value="DOM">Dominicana</option>
                <option value="ECU">Ecuador</option>
                 <option value="ELS">El Salvador</option>
                <option value="USA">Estados Unidos</option>
                <option value="GRA">Granada</option>
                <option value="GUA">Guatemala</option>
                <option value="GUY">Guyana</option>
                <option value="HA">Haiti</option>
                <option value="HON">Honduras</option>
                <option value="JAM">Jamaica</option>
                <option value="MX">México</option>
                <option value="NIC">Nicaragua</option>
                <option value="PMA">Panama</option>
                <option value="PAR">Paraguay</option>
                <option value="PER">Peru</option>
                <option value="PRC">Puerto Rico</option>
                <option value="RPD">Republica Dominicana</option>
                <option value="SYN">San Cristóbal y Nevis</option>
                <option value="SLU">Santa Lucía</option>
                <option value="SVG">San Vicente y las Granadinas</option>
                <option value="SUR">Surinam</option>
                <option value="TYT">Trinidad y Tobago</option>
                <option value="URU">Uruguay</option>
                <option value="VEZ">Venezuela</option>
                <option value="ES">España</option>

           </select>
           </td>
           </tr>
           <tr>
           <td>Estado</td>
           <td>
               <select name="provincia" size="1" id="provincia"  class="required error"></select>
           </td>
           </tr>
           <tr>
           <td>Ciudad</td>
           <td>
           <select name="ciudad" size="1" id="ciudad"  size="40px" class="required error"></select>
           </td>
           </tr>
           <tr>
           <td>Codigo Postal</td>
           <td>
               <input name="cp" type="text" id="cp" size="40px" class="required number error" minlength="4" maxlength="5" />
           </td>
           </tr>
           <tr>
           <td>Empresa</td>
           <td>
           <input name="empresa" type="text"  size="40px" id="empresa" class="required username error" minlength="4" />
           </td>
           </tr>
           <tr>
           <td>Direccion</td>
           <td>
           <input name="dir1" type="text"  id="direccion" size="40px" class="required error" minlength="4" />
           </td>
           </tr>
           <tr>
           <td>Direccion2</td>
           <td>
               <input name="dir2" type="text"   id="direccion1" size="40px" class="required error" minlength="4" />
           <del datetime=""/>
           </td>
           </tr>
           <tr>
           <td>Fecha de nacimiento</td>
           <td>
           <input name="fec_nac" type="text" id="date"  size="40px" class="required date error " minlength="4"/>
           </td>
           </tr>
           
             <tr>
                 <td colspan="2">
           
                    <div id="captchaimage"><a id="refreshimg" title="Click to refresh image"><img src="capchaimg.jsp" width="132" height="46" alt="Captcha image" /></a></div>
                    <label for="captcha">Escriba las letras que aparecen en la imagen (incencible a mayusculas):</label>
                    <input type="text" maxlength="6"  name="key" id="captcha" />
                 </td>
             </tr>

           <tr>
	      <td align="center" width="150" colspan="2">
	      <input class="submit" type="submit" value="Enviar Registro"/>
           </td>
           </tr>
         </table>
        </fieldset>
 </form>
     </div>
</div>
<div id="pie"><img src="images2/foot.png" alt="hola" width="903" height="27" /></div>
</div> <%--end--%>

</body>
        <script type="text/javascript">
		jQuery(document).ready(function()
		{
			$("#provincia").cascade("#pais",{
				ajax: {url:'js/cascade/datos-provincias.js'},
				template: commonTemplate,
				match: commonMatch
			});

			$("#ciudad").cascade("#provincia",{
				ajax: {url:'js/cascade/datos-ciudades.js'},
				template: commonTemplate,
				match: commonMatch
			});

			//forzamos un evento de cambio para que se carge por primera vez
			$("#pais").change();
		});
	</script>
</html>
