<%-- 
    Document   : sabores2
    Created on : 28/04/2014, 04:05:55 AM
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
<jsp:forward page="index.jsp">
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
        Vector<Producto> vecPro=new Producto().listaProductos();
    %>

<%-- Finalizar --%>
<html l<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title> Schnell Vertrieb-ventas </title>
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
                <link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/caca.css" />
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
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Animated Border Menus | Demo 5</title>
		<meta name="description" content="Responsive Animated Border Menus with CSS Transitions" />
		<meta name="keywords" content="navigation, menu, responsive, border, overlay, css transition" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
        
       <div id='txtp'>
                <table class="table table-success" >
          <tr >
                <td ><h3>Nombre</h3></td>
                <td  ><h3><span class="Estilo3">Stock</span></h3></td>
                <td ><h3><span class="Estilo3">Precio</span></h3></td>
          </tr>

          <%
            for(Producto pro:vecPro){
          %>
          <tr>
            <td><%=pro.getProducto_nombre() %></td>
            <td ><%=pro.getProducto_stock() %></td>
            <td ><%=pro.getProducto_precio() %></td>
          </tr>
          <%}%>

        </table>
        <center>
             
                                        <a href="agregar.jsp"><button class="btn btn-4 btn-4a">Agregar Productos</button></a>
<a href="actua.jsp"><button class="btn btn-11 btn-11a">Actualizar Inventario</button>   </a>
				
       
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
		</div><!-- /container -->
          <script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
          <script src="retina/dist/retina.js"></script>
	</body>

</html>