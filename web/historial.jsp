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
             <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title> Schnell Vertrieb-HV </title>
		<meta name="description" content="Responsive Animated Border Menus with CSS Transitions" />
		<meta name="keywords" content="navigation, menu, responsive, border, overlay, css transition" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
                <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
		<script src="js/modernizr.custom.js"></script>
                
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
		
	</head>
	<body>
            
		<div class="container">

			<nav id="bt-menu" class="bt-menu">
				<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
				<ul>
					<li><a href="index.jsp">Incio</a></li>
					<li><a href="perfil.jsp"><%=usuario%></a></li>
					<li><a href="sabores2.jsp">Sabores</a></li>
					<li><a href="carritof.jsp">Carrito</a></li>
                                         <li><a href="chat.jsp">Chat</a></li>
					<li><a href="cerrar.jsp">Cerrar Sesion</a></li>
				</ul>
				<ul>
					<li><a href="http://www.twitter.com/codrops" class="bt-icon icon-twitter">Twitter</a></li>
					<li><a href="https://plus.google.com/101095823814290637419" class="bt-icon icon-gplus">Google+</a></li>
					<li><a href="http://www.facebook.com/pages/Codrops/159107397912" class="bt-icon icon-facebook">Facebook</a></li>
				</ul>
			</nav>
		</div><!-- /container -->
                <div id='txtp'>
                <form  >
                <table class="table table-success">
          <tr>
            <td width="55%"><h4>Nombre</h4></td>
            <td   ><h3><span class="Estilo3">Cantidad</span></h3></td>
            <td   ><h3><span class="Estilo3">Sub Total</span></h3></td>
          </tr>


   <% 

LinkedList<consulta> lista = Usuari.getUsuari("usuario");
for (int i=0;i<lista.size();i++)

{
   out.println("<tr>");
   out.println("<td>"+lista.get(i).getProducto_Nombre()+"</td>");
   out.println("<td>"+lista.get(i).getCantidad()+"</td>");
   out.println("<td>"+lista.get(i).getSubTotal()+"</td>");
   out.println("</tr>");
}
%>

<input type="hidden" name="holis" value="%=usuario%>">
        </table>
          </form>
                </div>
<script src="retina/dist/retina.js"></script>
	</body>
	<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
</html>