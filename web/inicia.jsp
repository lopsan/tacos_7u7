<%-- 
    Document   : inicia
    Created on : 28/04/2014, 03:48:00 AM
    Author     : Lopsan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Schnell Vertrieb-Registrate</title>
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
        
        function Pass(e) {
            if (document.formulito.contri.value!==document.formulito.contri2.value){
             document.formulito.contri2.value="";  
                alert("Contraseñas diferentes, escriba la misma contraseña")
                formulito.contri2.focus();
                return (false);
            }
            
}
</script>
<style type="text/css">
		*{
			margin:0px;
			padding:0px;
		}
#txtp{
	width: 600px;
        border-style: groove;
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
        <title>Registro</title>
    </head>
     <body>
      
         
         
      
         
         
         
         
         
         
       
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
         <center>
             <div id='txtp'>
  
	<form class="contact_form" name="formulito" action="registrar" method="post">
<h1>Registro</h1>
	
		
		
	
                    <div class="row">

         <div class="col-md-6">   <input type="text" class="form-control" name="Nomusi"  placeholder="Nombre de Usuario " onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />

         </div>
    <div class="col-md-6">       <input type="text" class="form-control" name="Nombre"  placeholder="Nombre" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
 
</div>
                </div> <br>
     <div class="row">
         <div class="col-md-6"> 
           <input type="text" class="form-control" name="Apellidopat"  placeholder="Apellido Paterno" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
           </div>    
           <div class="col-md-6"> <input type="text" class="form-control" name="Apellidomat"  placeholder="Apellido Materno" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
           </div>
           </div><br>

         <input type="password" class="form-control" name="contri"  pattern="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,32})$"  placeholder="Ingrese una contraseña (Maximo 32 Caracteres)" ondrop="return false" onpaste="return false " maxlength=32 required />
         <br>


         <input type="password" class="form-control" name="contri2" onblur="Pass()" placeholder="Repita contraseña"  pattern="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,32})$" ondrop="return false" onpaste="return false " maxlength=32 required />

         <br>
         <center>
		<button type="submit" onclick="Pass()" class="btn btn-success" >Listo</button>
        
                <a href="inicio.jsp"> <button  class="btn btn-primary">Regresar</button></a>
         </center>
		

</form>
  </div></div>
</center>
       
       
     <script src="retina/dist/retina.js"></script>
    </body>
</html>
