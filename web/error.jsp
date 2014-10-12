<%-- 
    Document   : inicio
    Created on : 28/04/2014, 03:54:41 AM
    Author     : Lopsan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Schnell Vertrieb-Inicio</title>
		<meta name="description" content="Responsive Animated Border Menus with CSS Transitions" />
		<meta name="keywords" content="navigation, menu, responsive, border, overlay, css transition" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
		<script src="js/modernizr.custom.js"></script>
                
                	<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
                               <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
		<script src="js/modernizr.custom.js"></script>
                <script type="text/javascript" src="jqwery/jquery-2.1.1.min.js"></script>
                <script type="text/javascript" src="alertify.js-0.3.11/lib/alertify.js"></script>
     <link rel="stylesheet" href="alertify.js-0.3.11/themes/hola.css" />
	<link rel="stylesheet" href="alertify.js-0.3.11/themes/taco.css" id="toggleCSS" />
        <script src="alertify.js-0.3.11/lib/alertify.min.js"></script>
        <script type="text/javascript">
         function alerta(){
        //una notificación de error
      alertify.error("Usuario o constraseña incorrecto/a y una hada ha muerto :'c"); 
      return false; 
}
        </script>

         <script type="text/javascript">
function soloLetras(e){
                tecla = (document.all) ? e.keyCode : e.which; 
                if (tecla==8) return true; // backspace
                if (tecla==32) return true; // espacio

                patron = /[a-zA-ZÑñáéíóúÁÉÍÓÚ]/; //patron

                te = String.fromCharCode(tecla); 
                return patron.test(te); // prueba de patron
              }
      function soloNumero(e){
	var key = window.Event ? e.which : e.keyCode
	return (key >= 48 && key <= 57 || key==8)
}
</script>

	<style type="text/css">
		*{
			margin:0px;
			padding:0px;
		}
#txtp{
	width: 700px;

	background-color: rgba(150,150,150,0.4);
	color: #fff;
	margin: 0 auto;
	text-align:left; 
	border-radius: 20px;
	padding: 20px;
	box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
	
}
		body{
 background: url(hip.jpg)
 no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
 }


	
	
	</style>

    </head>
    <body onload="alerta();">
        <br>
        <br>
    <center>
             
    </center>
    
             <br>
             <br>
             <br>
             <br>
             <br>
             <center>
              <div class="row" id='txtp'>
                 
  <div class="col-md-8 col-md-offset-2"> 
	<form class="contact_form"  action="SVerificarUsuario" method="post">
            <center>
            <h1>Inicio de Sesion</h1>
           <input type="text" class="form-control" name="txtUsuario" id="txtUsuario"  placeholder="Nombre de usuario" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
           <br>
           <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="Contraseña" ondrop="return false" onpaste="return false " maxlength=18 required />
           <br>	
           <a href="inicia.jsp"><button type="button" class="btn btn-primary">Registrarse</button></a>
               <button class="btn btn-success" name="B1" type="submit">Iniciar Sesion</button>
            </center>
</form>
  </div></div>
</center>
    <script src="retina/dist/retina.js"></script>
     <script>
    $(".alert").alert('close')
    </script>
            </body>
</html>
