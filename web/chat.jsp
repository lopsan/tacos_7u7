<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.*" %>
<%@ page session="true" %>
<%
String usuario = "";
HttpSession sesionOk = request.getSession();
if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="index.jsp">
<jsp:param name="error" value="Es
obligatorio identificarse"/>
</jsp:forward>
<%
} else {
usuario = (String)sesionOk.getAttribute("usuario");
}
%>

<!DOCTYPE html>
<html lang="en" class="no-js" ng-app>
    <head>
   <meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title> Schnell Vertrieb-Chat </title>
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
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<script src="js/angular.js"></script>
    <style>

body{
 background: url(im.jpg)
 no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
 }
 h2{
    margin: 0;     
    color: #666;
    padding-top: 90px;
    font-size: 52px;
    font-family: "trebuchet ms", sans-serif;    
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
	width: 600px;
	height: 300px;
	background-color: rgba(150,150,150,0.4);
	color: #fff;
	margin: 0 auto;
	text-align:left; 
	border-radius: 20px;
	padding: 20px;
	box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
	
}
 </style>
    <script type="text/javascript">function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " a b c d e f g h i j k l m n o p  q r s t u v w x y z á é  í ó ú 0 1 2 3 4 5 6 7 8 9 : - _ /";
    especiales = [];

    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(letras.indexOf(tecla) == -1 && !tecla_especial)
        return false;
}</script>
    <link href="docs/assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="docs/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="docs/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="docs/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="docs/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="docs/assets/ico/favicon.png">
  </head>

  <body>
      
      <br><br><br><br><br><br><br><br>
  <center>
       <div id='txtp' style='height:400px; width:600px; overflow:scroll;'>  
            <article>
                 <p> <%=usuario%>: {{gatito}}</p>
            <%
             Vector<Chat> vecChat=new Chat().listaMensajes();  
             for(Chat alum:vecChat){
             %>  

             <p><%= alum.getUsuario_clave()%> : <%=  alum.getUsuario_privilegio() %></p><br>
            
             <%} %>
             </article>
        </div>
      
        
        <div>
            
            <form action="Mensaje" method="Post">
                <input type="hidden" name="usuario"  value="<%=usuario%>">
                <br>
                <center>
                <textarea name="comment" ng-model="gatito"></textarea>
                <button type="submit" class="btn">Enviar</button>
                </center>
            </form>
            
        </div>
        
  </center>   
     
        <div class="container">

			<nav id="bt-menu" class="bt-menu">
				<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
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
		</div><!-- /container -->
                <script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
        <script src="retina/dist/retina.js"></script>
    </body>
</html>
