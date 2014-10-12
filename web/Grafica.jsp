<%-- 
    Document   : Grafica
    Created on : 6/06/2014, 08:21:31 PM
    Author     : Your_Awesomess
--%>
<%@page import="Obtener.*" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>
<%@ page import = "java.util.LinkedList"%> 
<%@ page session="true" %>
<%
String usuario = "";
HttpSession sesionOk = request.getSession();
if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="inicio.jsp">
<jsp:param name="error" value="Es
obligatorio identificarse"/>
</jsp:forward>
<%
} else {
usuario = (String)sesionOk.getAttribute("usuario");
}
%>
<%-- Obtener Vector de Productos de la BD --%>

<%
    String Names="";
   
   String Cantidades="";

int i =0;
    
    try{
     Conn con=new Conn();
     con.conectar();
     GetInfo inf = new GetInfo();
     Names=inf.GetNombre();
     Cantidades=inf.GetCantidad();
    
    }
    catch(Exception e){
    out.println(e);
    System.out.print(e);
    }
    
        %>


<!DOCTYPE html>
<html>
    <head>
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
	<style>

body{
 background: url(im.jpg)
 no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
 }
 #txtp{
	width: 500px;
	background-color: rgba(150,150,150,0.9);
	color: #fff;
	margin: 0 auto;
	text-align:left; 
	border-radius: 20px;
	padding: 20px;
	box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
	
}
 </style>
 <meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		
		<meta name="description" content="Responsive Animated Border Menus with CSS Transitions" />
		<meta name="keywords" content="navigation, menu, responsive, border, overlay, css transition" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
		<script src="js/modernizr.custom.js"></script>
        <script src="Chart/Chart.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
       
                                         <div id='txtp'>
       <center>
                <canvas id="canvas2" height="400" width="400"></canvas>
        </center>        
                

	
        <script>

		var radarChartData = {
			labels : [<%=Names%>],
			datasets : [
				{
					fillColor : "rgba(0, 193, 230, 0.2);",
					strokeColor : " rgba(255, 250, 227, 0.9);",
					pointColor : "rgba(0, 199, 184, 0.6);",
					pointStrokeColor : " rgba(255, 255, 255, 0.7);",
                                        pointDot : true,
                                        pointDotRadius : "4",
                                        pointDotStrokeWidth : "2",
                                        datasetStroke : true,
                                        datasetStrokeWidth : "2",
                                        
                                        
					data : [<%=Cantidades%>]
				}
			]
			
		}

	var myRadar = new Chart(document.getElementById("canvas2").getContext("2d")).Radar(radarChartData,{scaleShowLabels : false, pointLabelFontSize : 10});
	
	</script>
        <br /><br /><br /><center>
                  

                                    <a href="carritofs.jsp"><button class="btn btn-4 btn-4a">Ventas</button></a>
                                    <a href="menos.jsp"><button class="btn btn-4 btn-4a">Menores Ventas</button></a>
                                    <a href="mayor.jsp"><button class="btn btn-4 btn-4a">Mayores Ventas</button></a>
			</center>
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
		</div>
<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
        <script src="retina/dist/retina.js"></script>
    </body>
</html>
