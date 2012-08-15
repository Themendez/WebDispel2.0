<%-- 
    Document   : reg2prueba
    Created on : 5/07/2010, 12:19:55 PM
    Author     : oem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/cascade/jquery/jquery.js"></script>
        <script type="text/javascript" src="js/cascade/jquery/jquery.cascade.js"></script>
        <script type="text/javascript" src="js/cascade/jquery/jquery.cascade.ext.js"></script>
        <script type="text/javascript" src="js/cascade/jquery/jquery.templating.js"></script>
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
        <h1>Ubicacion</h1>
	<div>
		<label>Pais
			<select id="pais">
				<option value="AR">Argentina</option>
				<option value="ES">España</option>
				<option value="MX">Mexico</option>
			</select>
		</label>
		<label>Provincia
			<select id="provincia"></select>
		</label>
		<label>Ciudad
			<select id="ciudad"></select>
		</label>
	</div>
        <script type="text/javascript">
		jQuery(document).ready(function()
		{
			$('#provincia').cascade('#pais',{
				ajax: {url:'js/cascade/datos-provincias.js'},
				template: commonTemplate,
				match: commonMatch
			});

			$('#ciudad').cascade('#provincia',{
				ajax: {url:'js/cascade/datos-ciudades.js'},
				template: commonTemplate,
				match: commonMatch
			});

			//forzamos un evento de cambio para que se carge por primera vez
			$('#pais').change();
		});
	</script>

        
    </body>
</html>

