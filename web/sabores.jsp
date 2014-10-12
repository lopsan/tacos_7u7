<%-- 
    Document   : sabores
    Created on : 28/04/2014, 04:02:05 AM
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
                
	
    </head>
    <body>
	<div id="headerimgs">
			<div id="headerimg1" class="headerimg"></div>
			<div id="headerimg2" class="headerimg"></div>
		</div>
		<!-- ENDS Dynamic Background -->
		
		<!-- background nav -->
		<div id="headernav">
			<div id="back" class="btn"></div>
			<div id="next" class="btn"></div>
		</div>
		<!-- ENDS background nav -->
		
		<div id="top-gap"></div>
<div id="headerimgs">
			<div id="headerimg1" class="headerimg"></div>
			<div id="headerimg2" class="headerimg"></div>
		</div>
		<!-- ENDS Dynamic Background -->
		
		<!-- background nav -->
		<div id="headernav">
			<div id="back" class="btn"></div>
			<div id="next" class="btn"></div>
		</div>
		<!-- ENDS background nav -->
		
		<div id="top-gap"></div>
                  <a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i class="fa fa-bars"></i></a>
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-default btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand"><a href="index.html"><%=usuario%></a>
           </li>
            <li><a href="casa.jsp">Inicio</a>
            </li>
            <li><a href="carritof.jsp">Perfil</a>
            </li>
            <li><a href="sabores.jsp">Productos</a>
            </li>
            <li><a href="sabores2.jsp">Sabores</a></li>
            </li>
            <li><a href="#contact">Cerrar Sesion</a>
            </li>
            <li><a href="#contact">Contactanos!</a>
            </li>
        </ul>
    </div>
                     
		
		<div id="combo-holder"></div>
				<!-- ends nav -->
				<br><br><br><br><br>
				<center>
				<!-- SLIDER -->				
				
</center>
		 <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

    <!-- Custom JavaScript for the Side Menu and Smooth Scrolling -->
    <script>
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    </script>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    </script>
    <script>
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    </script>
				<br><br><br><br>
				<center>
					<h1 class="home-block-heading">Productos</h1>
	        	<div class="featured">
				<center>
			
				<blockquote><blockquote><blockquote>
	        		<figure>
	        			<a href="img/dummies/full-1.jpg" data-rel="prettyPhoto" class="thumb"><img src="img/dummies/full-1.jpg" alt="Alt text" /></a>
	        			<div>
	        				<h4>Helados</h4>
		        			 Son ricos pero se deshacen muy rapido si no te los comes :P
		        		</div>
		        		<a class="link" href="sabores2.html"></a>
	        		</figure>
	        		
	        		
	        		
	        		<figure>
	        			<a href="img/dummies/p.jpg" data-rel="prettyPhoto" class="thumb"><img src="img/dummies/full-2.jpg" alt="Alt text" /></a>
	        			<div>
	        				<h4>Conos</h4>
		        			No me gustan los conos :P
		        		</div>
		        		<a class="link" href="sabores2.html"></a>
	        		</figure>
	        		
	        		<figure>
	        			<a href="img/dummies/y.jpg" data-rel="prettyPhoto" class="thumb"><img src="img/dummies/full-3.jpg" alt="Alt text" /></a>
	        			<div>
	        				<h4>Bebidas</h4>
		        		Nunca en mi vida probaria esto, parece diarrea con color :P
		        		</div>
		        		<a class="link" href="sabores2.html"></a>
	        		</figure>
	        	</blockquote></blockquote></blockquote>
	        		</center>
	        		
	        
	        		
	        		<div class="clearfix"></div>
					        		
	        	</div>
				</center>
                                <script src="retina/dist/retina.js"></script>
				</body>
</html>
