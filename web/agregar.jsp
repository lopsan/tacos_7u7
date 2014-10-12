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
HttpSession sesionOk = request.getSession();
if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="login.jsp">
<jsp:param name="error" value="Es
obligatorio identificarse"/>
</jsp:forward>
<%
} else {
usuario = (String)sesionOk.getAttribute("usuario");
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
 </style>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title> Schnell Vertrieb </title>
		<meta name="description" content="Responsive Animated Border Menus with CSS Transitions" />
		<meta name="keywords" content="navigation, menu, responsive, border, overlay, css transition" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
		<script src="js/modernizr.custom.js"></script>
                <link rel="stylesheet" type="text/css" href="css/caca.css" />
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	</head>
	<body>
		
                
                   
            <div class="row" >
  <div class="col-md-6 col-md-offset-3"> 
       <center>
           <h3><font color="white">Añadir flores</font></h3>
           <form method="POST" action="AddRamonas">
            <h3><font color="white">Nombre</font></h3>
                <input type="text" class="form-control" name="nombre">
                <h3><font color="white">Precio</font></h3>
                <input type="text" class="form-control" name="precio">
                <h3><font color="white">Cantidad de inventario</font></h3>
                <input type="text" class="form-control" name="canti">
                 <h3><font color="white">Link de la imagen</font></h3>
                <input type="text" class="form-control" name="zelda">
                <br><br>
                 <button type="submit" class="btn btn-12 btn-12a">Listo</button> 
           </form>
     </center>
  </div>
            </div>
            <div class="container">

			<nav id="bt-menu" class="bt-menu">
				<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
				<ul>
					<li><a href="casa.jsp"><span class="glyphicon glyphicon-home"></span> Incio</a></li>
					<li><a href="perfila.jsp"><span class="glyphicon glyphicon-user"></span> Sr. <%=usuario%></a></li>
					<li><a href="sabores3.jsp"><span class="glyphicon glyphicon-credit-card"></span> Stock</a></li>
					<li><a href="carritofs.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Ventas</a></li>
                                         <li><a href="chat.jsp"><span class="glyphicon glyphicon-comment"></span> Chat</a></li>
					<li><a href="cerrar.jsp"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
				</ul>
				<ul>
					<li><a href="http://www.twitter.com/codrops" class="bt-icon icon-twitter">Twitter</a></li>
					<li><a href="https://plus.google.com/101095823814290637419" class="bt-icon icon-gplus">Google+</a></li>
					<li><a href="http://www.facebook.com/pages/Codrops/159107397912" class="bt-icon icon-facebook">Facebook</a></li>
				</ul>
			</nav>
		</div><!-- /container -->        
     
   <script src="retina/dist/retina.js"></script>
	</body>
	<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
</html>
