<%-- 
    Document   : index
    Created on : 28/04/2014, 03:29:41 AM
    Author     : Lopsan
--%>

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
        Vector<Detalleventa> vectorDetalles=(Vector<Detalleventa>)session.getAttribute("detalleVenta");
        Vector<Producto> vectorStock=null;
    %>

<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
             <meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Schnell Vertrieb</title>
		<meta name="description" content="Responsive Animated Border Menus with CSS Transitions" />
		<meta name="keywords" content="navigation, menu, responsive, border, overlay, css transition" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
		<script src="js/modernizr.custom.js"></script>
                <script src="retina/dist/retina.js"></script>
                
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
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
	width: 800px;
	height: 600px;
	background-color: rgba(150,150,150,0.4);
	color: #fff;
	margin: 0 auto;
	text-align:left; 
	border-radius: 20px;
	padding: 20px;
	box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
	
}
 </style>
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
                <link rel="stylesheet" type="text/css" href="css/caca.css" />
                   <link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<script src="js/modernizr.custom.js"></script>	
	</head>
	<body>
            
		
                <div id='txtp'>
                <form  >
                <table class="table table-success">
          <tr>
              <td   ><h3><span class="Estilo3">Comprador</span></h3></td>
            <td ><h3>Nombre de Producto</h3></td>
            <td   ><h3><span class="Estilo3">Cantidad</span></h3></td>
            <td   ><h3><span class="Estilo3">Subtotal</span></h3></td>
          </tr>


   <% 

LinkedList<consulta> lista = busca.getconsulta3();
for (int i=0;i<lista.size();i++)

{
   out.println("<tr>");
   out.println("<td>"+lista.get(i).getUsuario_user()+"</td>");
   out.println("<td>"+lista.get(i).getProducto_Nombre()+"</td>");
   out.println("<td>"+lista.get(i).getCantidad()+"</td>");
   out.println("<td>"+lista.get(i).getSubTotal()+"</td>");
   out.println("</tr>");
}
%>

<input type="hidden" name="holis" value="%=usuario%>">
        </table>
          </form>
<CENTER>


      <a href="carritofs.jsp"><button class="btn btn-4 btn-4a">Ventas</button></a>
                                       
		
                </center>
                </div>
<script src="retina/dist/retina.js"></script>
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
	</body>
	<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
</html>