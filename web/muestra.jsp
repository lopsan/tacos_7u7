<%-- 
    Document   : Grafica
    Created on : 6/06/2014, 08:21:31 PM
    Author     : Your_Awesomess
--%>

<%@page import="java.lang.*"%>
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

int i = 0;
    
int valor[] = new int[9];
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
    
    for(i = 0;i < 9;i++){
     valor[i] = parseInt(Cantidades);   
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
<link href="css/default.css" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Cabin+Sketch:bold" rel="stylesheet" type="text/css" />
		<script src="js/jquery.js" type="text/javascript"></script>
		<script src="js/raphael.js" type="text/javascript"></script>
		<script src="js/init.js" type="text/javascript"></script>
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
	width: 900px;
	background-color: rgba(150,150,150,0.5);
	color: #fff;
	margin: 0 auto;
	text-align:left; 
	border-radius: 20px;
	padding: 20px;
	box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
	
}
 </style>
 <script type="text/javascript" src="jqwery/jquery-2.1.1.min.js"></script>
   <script type="text/javascript">
     function holo(){
                var pro = [];
                var cos = [];
                var porcen = [];
                var porcenV = [];
                var suma;
                var gay = $("#holi").text();
                for(var i = 0; i <= 9; i++){
                   pro[i] = $("#holi2").text();
                   for(var o = 0; o <= 9; o++){
                   cos[o] = $("#holi").text();
                    }
                }
                for(var u = 0;u < cos.length; u++){
                    suma += cos[u];
                }
                for(var p = 0; p < cos.length; p++){
                    porcen[p] = cos[p] / suma;
                    porcenV[p] = 100 / porcen[p];
                }
                
                    console.log(gay);
                
                $("#a").val(porcen[0]);
                $("#b").val(porcen[1]);
                $("#c").val(porcen[2]);
                $("#d").val(porcen[3]);
                $("#e").val(porcen[4]);
         }
        </script>

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
    <body onload="holo();">
        <form name="go">
        <table>
        
            <tr>    
                <td>
                    <p id="holi" name="no"><%=Cantidades%> </p>
        </td>
        </tr>
        
        <tr>
            <td>
                <p id="holi2"><%=Names%></p>
        </td>
        </tr>
                   </table>
        </form>
        <div id='txtp'>
       <center>
                <canvas id="canvas2" height="400" width="400"></canvas>
        </center>        
                
<div id="content">
			<div class="legend">
				<div class="skills">
					<ul>
						<li class="jq">Girasol</li>
						<li class="css">Petunias</li>
						<li class="html">Claveles Rojos</li>
						<li class="php">Bambu</li>
						<li class="sql">Rosas</li>
					</ul>
				</div>	
			</div>
			<div id="diagram"></div>
		</div>

		<div class="get">
			<div class="arc">
				<span class="text">Girasol</span>
				<input type="hidden" class="percent" value="1" id="a" />
				<input type="hidden" class="color" value="#97BE0D" />
			</div>
			<div class="arc">
				<span class="text">Petunias</span>
				<input type="hidden" class="percent" value="1" id="b"/>
				<input type="hidden" class="color" value="#D84F5F" />
			</div>
			<div class="arc">
				<span class="text">Claveles Rojos</span>
				<input type="hidden" class="percent" value="1" id="c"/>
				<input type="hidden" class="color" value="#88B8E6" />
			</div>
			<div class="arc">
				<span class="text">Bambu</span>
				<input type="hidden" class="percent" value="1" id="d"/>
				<input type="hidden" class="color" value="#BEDBE9" />
			</div>
			<div class="arc">
				<span class="text">Rosas</span>
				<input type="hidden" class="percent" value="1" id="e"/>
				<input type="hidden" class="color" value="#EDEBEE" />
			</div>
		</div>
	
        <script>

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
