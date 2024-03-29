<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<title>VENP Voto Electr&oacute;nico No Presencial</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<link rel="stylesheet" href="css/thickbox.css" type="text/css" media="screen" />
    	<link rel="stylesheet" type="text/css" href="css/style.css" />
    	<link type="text/css" rel="stylesheet" href="css/teclado.css"/>
    	<link type="text/css" rel="stylesheet" href="css/style-login.css"/>
        
    
    	<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jscript.js"></script>
	
		<script type="text/javascript">
			function escribir(tec){
				if(document.forms[0].contrasena.value.length<12){
					document.forms[0].contrasena.value=document.forms[0].contrasena.value+""+tec;
				}
			}
			function borrar(){
				var pass = document.forms[0].contrasena.value;
				document.forms[0].contrasena.value = pass.substring(0,pass.length-1);					
			}
			function borrarTodo(){
				document.forms[0].contrasena.value = "";
			}
			
			function escribirNumerico(tec){
				if(document.forms[0].pin.value.length<15){
					document.forms[0].pin.value=document.forms[0].pin.value+""+tec;
				}
			}
			function borrarNumerico(){
				var pass = document.forms[0].pin.value;
				document.forms[0].pin.value = pass.substring(0,pass.length-1);					
			}
			function borrarTodoNumerico(){
				document.forms[0].pin.value = "";
			}			

		</script>
	</head>
	<body>
		<div class="ClaseDiv">
      		<table cellspacing="0" cellpadding="0" border="0" background="images/bg_head.jpg" width="100%">
        		<tbody>
        			<tr>
         				<th valign="top" align="center" width="12%" scope="row">
         					&nbsp;
         				</th>
         				<th align="center" width="63%" scope="row">
         					<div class="ClaseTitulo1">
            					UPC
               					<br>
                				Voto Electr&oacute;nico
                			</div>
         				</th>
         				<th valign="top" align="center" width="25%" scope="row">
         					&nbsp;         					
         				</th>     	
        			</tr>
      			</tbody>
      		</table>
		</div>

		<form action="<%=request.getContextPath()%>/Votacion" method="post">
		<input type="hidden" name="tipo" value="fCondUso"/>
			<div class="cnt">
				<div class="content">
					<div class="block">
						<h3>
							<span class="bienvenida">Bienvenido al M&oacute;dulo de Votaci&oacute;n por Internet</span>
						</h3>
						<div class="inner">
							<div>
								<table class="formu" border="0" cellpadding="0" cellspacing="0" width="500px" >
									<tr>
										<td colspan="2" style="height: 30px" >
											<span class="campo">
												Ingrese su PIN
											</span>
										</td>
				  					</tr>
									<tr>
										<td style="width: 120px;vertical-align: top">										
					  					<input type="text"  id="pin"  name="pin" class="inputtext2" maxlength="15"/>
										</td>
										<td>&nbsp;
										</td>
  									</tr>
  									<tr><td>&nbsp;</td></tr>
  									<tr>
										<td colspan="2" style="height: 50px" >
											<span class="campo">
												Ingrese documento de identidad											
											</span>
										</td>
				  					</tr>
									<tr>
										<td style="width: 120px;vertical-align: top" colspan="2">								
								  			<input type="text"  id="dni"  name="dni" class="inputtext2" maxlength="15"/>					  	
										</td>
  									</tr>
				  					<tr>
				                    	<td colspan="2">&nbsp;</td>
				                    </tr>
				  					<tr>
					  					<td colspan="2" style="height: 30px">
					  						<span class="campo">Ingresar su contrase&ntilde;a con el teclado virtual</span>
					  					</td>
				  					</tr>
									<tr>
										<td style="vertical-align: top;">						 
						  				<input type="password"  id="contrasena" name="contrasena" class="inputtext2" maxlength="12" readonly="true"/>			
										</td>
										<td>
                      						<div id="dvteclado">
												<jsp:include page="teclado.jsp" flush="flush"/>		
											</div>
					  					</td>
                    				</tr>
                    				<tr>
                    					<td colspan="2">&nbsp;</td>
                    				</tr>                    
                    				<tr>
                    					<td colspan="2" style="height: 30px">
                    						<span class="campo">Ingresar clave de verificaci&oacute;n de la imagen</span>
                    					</td>
           							</tr>
									<tr>	
                    					<td>
                    						<input type="text" class="inputtext2" name="claveVerificacion" id="claveVerificacion" tabindex="3"   maxlength="6" />
                    					</td>
                    					<td>
                    						<img src="images/captcha.png" />
                    					</td>
                    				</tr>
									
								</table>
							</div>
							<%if(request.getParameter("e")!=null){ %>
							<p style="color:red;">Los datos ingresados son incorrectos</p>
							<%} %>
							<div class="botonera">
								<input type="submit" id="btnSubmit" class="boton" value="Ingresar" />
							</div>		
						</div><!-- Fin de inner -->
					</div><!-- Fin de block -->
				</div><!-- Fin de content -->
			</div>
			</form>
		<div class="ClaseDiv2">Desarrollo de Sistemas Distribuidos </div>
	</body>
</html>
