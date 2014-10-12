<%-- 
    Document   : index
    Created on : 28/04/2014, 03:29:41 AM
    Author     : Lopsan
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>
<%@ page session="true" %>
<%
String usuario = "";
boolean user=false;
HttpSession sesionOk = request.getSession();
if (sesionOk.getAttribute("usuario") == null) {
     usuario="perfil";
%>

<%
} else {
usuario = (String)sesionOk.getAttribute("usuario");
user=true;
}
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
	<style>
            body{
                background: url(im.jpg)
                no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
             #contenedor {
                background:url(lol.jpg)
                no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
                left:200px;
            }
        </style>
        <style type="text/css">
            @font-face
            {
            font-family: aventura;
            src: url(Corki-TuscanRounded.otf);
            }
            .carousel{
                margin-top: 10px;
            }
            .bs-example{
                    margin: 400px;
            }
            h2{
                margin: 0;     
                color: white;
                padding-top: 90px;
                font-size: 52px;
                font-family: "aventura", sans-serif;    
            }
            .item{
                background: #333;    
                text-align: center;
                height: 300px !important;
            }
            .carousel{
                margin-top: 20px;
            }
            .bs-example{
                    margin: 20px;
            }
           
        </style>
	<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
                <link rel="stylesheet" type="text/css" href="css/caca.css" />
                <title>Schnell Vertrieb-Home</title>
  <link rel="stylesheet" href="css/normalize.css">
 
 <script type="text/javascript" src="jqwery/jquery-2.1.1.min.js"></script>
  <!-- If you are using the gem version, you need this only -->


 



		<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <script type="text/javascript" src="alertify.js-0.3.11/lib/alertify.js"></script>
     <link rel="stylesheet" href="alertify.js-0.3.11/themes/hola.css" />
	<link rel="stylesheet" href="alertify.js-0.3.11/themes/taco.css" id="toggleCSS" />
        <script src="alertify.js-0.3.11/lib/alertify.min.js"></script>
        <style type="text/css">
            @font-face
            {
            font-family: aventura;
            src: url(Corki-TuscanRounded.otf);
            }
            .carousel{
                margin-top: 10px;
            }
            .bs-example{
                    margin: 400px;
            }
            h2{
                margin: 0;     
                color: #FF686D;
                padding-top: 50px;
                font-size: 72px;
                font-family: "aventura", sans-serif;    
            }
            .item{
                background: #333;    
                text-align: center;
                height: 300px !important;
            }
            .carousel{
                margin-top: 20px;
            }
            .bs-example{
                    margin: 20px;
            }
            #txtp{
                    width: 800px;
                    background-color: rgba(150,150,150,0.0);
                    color: #fff;
                    margin: 0 auto;
                    text-align:left; 
                    border-radius: 20px;
                    padding: 20px;
                    box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
            }
        </style> 
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
        <script type="text/javascript">
     function holo(){
                 if( $("#holito").val() == 1){
                     alertify.success("La compra se realizo corretamente, gracias :)");
                     return false;
             }
             else
             {
             
             }
         }
        </script>

	</head>
            <body onload="holo();">
                 <%
String t;
    t = (String)(request.getParameter("crp"));
    %>
                <center> 
                    <h2 id="firstStop"><font font="aventura">Schnell Vertrieb</font></h2>
                </center>  
                <div id='txtp'>
                    <div class="bs-example">
                        <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>   
                            <div class="carousel-inner">
                                <div class="active item">
                                    <img src="holi.JPG">
                                        <div class="carousel-caption">
                                        </div>
                                </div>
                                <div class="item">
                                    <img src="12.jpg">
                                        <div class="carousel-caption">
                                        </div>
                                </div>
                                <div class="item">
                                    <img src="11.jpg">
                                        <div class="carousel-caption">
                                         </div>
                                </div>
                            </div>
                        </div> 
                        <input type="hidden" name="holo" id="holito" value="<%=t%>" />
                        <% if (sesionOk.getAttribute("usuario") == null){
                        %>
                            <button class="btn btn-12 btn-12a" data-toggle="modal" data-target="#myModal" id="hol">Iniciar Sesion</button>
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form class="contact_form"  action="SVerificarUsuario" method="post">
                                            <div class="row" >
                                                <div class="col-md-6 col-md-offset-3"> 
                                                    <center>
                                                        <input type="text" class="form-control" name="txtUsuario" id="txtUsuario"  placeholder="Ingrese un nombre de usuario" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
                                                        <br>
                                                        <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="juanito123456" ondrop="return false" onpaste="return false " maxlength=18 required />
                                                        <br>
                                                        <button class="btn btn-primary" name="B1" type="submit">Iniciar Sesion</button>
                                                    </center>
                                                </div>
                                            </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-11 btn-11a" data-toggle="modal" data-target="#myModal2" id="hol2">Registrate</button>
                            <div class="modal fade"  id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <center> <h4 class="modal-title" id="myModalLabel">Inicia Sesion</h4></center>
                                        </div>
                                        <div class="modal-body" >
                                            <form class="contact_form" name="formulito" action="registrar" method="post">
                                            <div class="row" >
                                                <div class="col-md-6 col-md-offset-3"> 	
                                                    <input type="text" name="Nomusi" class="form-control" placeholder="Nombre de Usuario " onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
                                                    <br>
                                                    <input type="text" name="Nombre" class="form-control" placeholder="Nombre" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
                                                    <br>
                                                    <input type="text" name="Apellidopat" class="form-control" placeholder="Apellido Paterno" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
                                                    <br>
                                                    <input type="text" name="Apellidomat" class="form-control" placeholder="Apellido Materno" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
                                                    <br>
                                                    <input type="password" name="contri" class="form-control" placeholder="Ingrese una contraseña (Maximo 32 Caracteres)" ondrop="return false" onpaste="return false " maxlength=32 required />
                                                    <br>
                                                    <input type="password" name="contri2" onblur="Pass()" class="form-control" placeholder="Repita contraseña"  ondrop="return false" onpaste="return false " maxlength=32 required />
                                                    <br>
                                                    <button type="subimit" class="btn btn-primary" onclick="Pass()" >Registrarse</button>
                                                </div>
                                            </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div> 
                            
                <%}%>
                    <% if(user==true){ %>
                     <center> 
                     <h2><font font="aventura">Bienvenido</font></h2>
                      </center>
                        <div class="container">
                            <nav id="bt-menu" class="bt-menu">
                                <a href="#" class="bt-menu-trigger"><img src="logo.png" width="74px" height="71px"></a>
                                <ul>
                                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                    <li><a href="info.jsp"><span class="glyphicon glyphicon-user"></span> <%=usuario%></a></li>
                                    <li><a href="sabores2.jsp"><span class="glyphicon glyphicon-credit-card"></span> Producto</a></li>
                                    <li><a href="carritof.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Carrito</a></li>
                                    <li><a href="chat.jsp"><span class="glyphicon glyphicon-comment"></span> Chat</a></li>
                                    <li><a href="cerrar.jsp"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
                                </ul>
                                <ul>
                                    <li><a href="http://www.twitter.com/codrops" class="bt-icon icon-twitter">Twitter</a></li>
                                    <li><a href="https://plus.google.com/101095823814290637419" class="bt-icon icon-gplus">Google+</a></li>
                                    <li><a href="http://www.facebook.com/pages/Codrops/159107397912" class="bt-icon icon-facebook">Facebook</a></li>
                                </ul>
                            </nav>
                        </div>
                        
                    <%}else{%>
                    <div class="container">
			<nav id="bt-menu" class="bt-menu">
                            <a href="#" class="bt-menu-trigger"><img src="logo.png" width="74px" height="71px"></a>
				<ul>
                                    <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                    <li><a href="info.jsp"><span class="glyphicon glyphicon-user"></span> <%=usuario%></a></li>
                                    <li><a href="sabores2.jsp"><span class="glyphicon glyphicon-credit-card"></span> Producto</a></li>
				</ul>
				<ul>
                                    <li><a href="http://www.twitter.com/codrops" class="bt-icon icon-twitter">Twitter</a></li>
                                    <li><a href="https://plus.google.com/101095823814290637419" class="bt-icon icon-gplus">Google+</a></li>
                                    <li><a href="http://www.facebook.com/pages/Codrops/159107397912" class="bt-icon icon-facebook">Facebook</a></li>
				</ul>
			</nav>
                    </div>
                    <%}%>
                    <script src="js/classie.js"></script>
                    <script src="js/borderMenu.js"></script>
                 
                   
                    
                    <script src="retina/dist/retina.js"></script>
	</body>	
</html>
