<%-- 
    Document   : comprados
    Created on : 5/06/2014, 05:19:33 PM
    Author     : Your_Awesomess
--%>


<%@page import="Obtener.Conn"%>
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
    <link rel="stylesheet" type="text/css" href="css/caca.css" />
<!-- Optional theme -->
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
            
		
                <div id='txtp'>
                <form action="BTicket" method="post">
                <table class="table table-success">
                    <td colspan="3"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ticket de <%=usuario%></h2></td>
          <tr>
              <td ><h3>Producto</h3></td>
            <td   ><h3><span class="Estilo3">Cantidad</span></h3></td>
            <td   ><h3><span class="Estilo3">Total</span></h3></td>
          </tr>
       

   <%
       Conn conn=new Conn();
       conn.conectar();
       String n,fecha;
       int st,can,con;
        try{
         conn.set = conn.con.createStatement();
         conn.rs = conn.set.executeQuery("SELECT comprados.producto_Nombre, comprados.cantidad,comprados.subtotal FROM comprados WHERE comprados.usuario_User= '"+usuario+"' ORDER BY comprados.cantidad desc");
            while(conn.rs.next()){
                 
                 n=conn.rs.getString("comprados.producto_nombre");
                 
                 can=conn.rs.getInt("comprados.cantidad");
 con=conn.rs.getInt("comprados.subtotal");
                 out.println("<tr>");
                 out.println("<td>"+n+"</td><td>"+can+"</td><td>"+con+"</td>");
                 out.println("</tr>");
            }
         }catch(Exception e){
             System.out.print(e);
         }
        conn.killC();
        %>

        <input type="hidden" name="holis" value="<%=usuario%>">
 
        </table>
        <center>
            <button class="btn btn-12 btn-12a"  type="submit">
  Finalizar Compra
</button>
        </center>
          </form>
                </div>
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
        <script src="retina/dist/retina.js"></script>
	</body>
	<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
</html>