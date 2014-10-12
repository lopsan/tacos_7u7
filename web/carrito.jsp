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
    Producto pro=new Producto().buscarProducto(Integer.parseInt(request.getParameter("tacos_we")));
    %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
                 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title> Schnell Vertrieb </title>
		<meta name="description" content="Responsive Animated Border Menus with CSS Transitions" />
		<meta name="keywords" content="navigation, menu, responsive, border, overlay, css transition" />
		<link rel="stylesheet" type="text/css" href="fonts2/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/menu_cornerbox_nested.css" />
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
                <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
		<script src="js/modernizr.custom.js"></script>
              <script type="text/javascript" src="jqwery/jquery-2.1.1.min.js"></script>
                <link rel="stylesheet" type="text/css" href="css/normalize2.css" />
		<link rel="stylesheet" type="text/css" href="css/demo2.css" />
                <meta charset="UTF-8" />
		<link rel="shortcut icon" href="../favicon.ico">
                <link rel="stylesheet" type="text/css" href="css/caca.css" />
                <link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap-theme.min.css">
<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<script src="js/modernizr.custom.js"></script>
	<style>
 @font-face
            {
            font-family: aventura;
            src: url(Corki-TuscanRounded.otf);
            }
body{
 background: url(im.jpg)
 no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
 }
 img{
     border-radius: 50px;
     opacity:0.8;
 }
  h2{
                margin: 0;     
                color: #F08A80;
                padding-top: 10px;
                font-size: 32px;
                font-family: "aventura", sans-serif;    
            }
 </style>
 <script type="text/javascript">
   $(document).ready(function(){
        $('span').click(function(){
            var id = $(this).attr("id");
            var h = $("holo").value();
            $("#pepe").text(h);
        });
    });
        </script>
		
	</head>
        <body>
			<div class="menu-wrap" data-level="1">
				<nav class="menu">
					<h2><span>October 2014</span><span>Click on a date to enter the sub level</span></h2>
					<!-- Calendar from Calendario: http://tympanus.net/codrops/2012/11/27/calendario-a-flexible-calendar-plugin/ -->
					<div id="calendar" class="fc-calendar-container">
						<div class="fc-calendar fc-five-rows">
							<div class="fc-head">
								<div>Mon</div><div>Tue</div><div>Wed</div><div>Thu</div><div>Fri</div><div>Sat</div><div>Sun</div>
							</div>
							<div class="fc-body">
                                                            <div class="fc-row"><div><span class="fc-date" id="h"><button class="btn btn-4 btn-4a" id="holo" value="1">1</button></span><span class="fc-weekday">Mon</span></div><div><span class="fc-date" id="h">2</span><span class="fc-weekday">Tue</span></div><div><span class="fc-date" id="h">3</span><span class="fc-weekday">Wed</span></div><div><span class="fc-date" id="h">4</span><span class="fc-weekday">Thu</span></div><div><span class="fc-date" id="h">5</span><span class="fc-weekday">Fri</span></div><div><span class="fc-date" id="h">6</span><span class="fc-weekday">Sat</span></div><div><span class="fc-date"id="h" >7</span><span class="fc-weekday">Sun</span></div></div><div class="fc-row"><div><span class="fc-date" id="h">8</span><span class="fc-weekday">Mon</span></div><div><span class="fc-date" id="h">9</span><span class="fc-weekday">Tue</span></div><div><span class="fc-date" id="h">10</span><span class="fc-weekday">Wed</span></div><div><span class="fc-date" id="h">11</span><span class="fc-weekday">Thu</span></div><div class="fc-today "><span class="fc-date" id="h">12</span><span class="fc-weekday">Fri</span></div><div><span class="fc-date" id="h">13</span><span class="fc-weekday">Sat</span></div><div><span class="fc-date" id="h">14</span><span class="fc-weekday">Sun</span></div></div><div class="fc-row"><div><span class="fc-date" id="h">15</span><span class="fc-weekday">Mon</span></div><div><span class="fc-date" id="h">16</span><span class="fc-weekday"> Tue</span></div><div><span class="fc-date" id="h">17</span><span class="fc-weekday">Wed</span></div><div><span class="fc-date" id="h">18</span><span class="fc-weekday">Thu</span></div><div><span class="fc-date" id="h">19</span><span class="fc-weekday">Fri</span></div><div><span class="fc-date" id="h">20</span><span class="fc-weekday">Sat</span></div><div><span class="fc-date" id="h">21</span><span class="fc-weekday">Sun</span></div></div><div class="fc-row"><div><span class="fc-date" id="h">22</span><span class="fc-weekday">Mon</span></div><div><span class="fc-date" id="h">23</span><span class="fc-weekday">Tue</span></div><div><span class="fc-date" id="h">24</span><span class="fc-weekday">Wed</span></div><div><span class="fc-date" id="h">25</span><span class="fc-weekday">Thu</span></div><div><span class="fc-date" id="h">26</span><span class="fc-weekday">Fri</span></div><div><span class="fc-date" id="h">27</span><span class="fc-weekday">Sat</span></div><div><span class="fc-date" id="h">28</span><span class="fc-weekday">Sun</span></div></div><div class="fc-row"><div><span class="fc-date" id="h">29</span><span class="fc-weekday">Mon</span></div><div><span class="fc-date" id="h">30</span><span class="fc-weekday">Tue</span></div><div></div><div></div><div></div><div></div><div></div></div>
							</div>
						</div>
					</div>
				</nav>
				<button class="close-button" id="close-button">Close Menu</button>
			</div>
			<div class="menu-wrap" data-level="2">
				<nav class="menu">
					<h2>Add a diary entry</h2>
                                        <p id="pepe">hola</p>
					<div class="content-edit" contenteditable="true"></div>
					<button class="default-button">Save entry</button>
				</nav>
				<button class="close-button" id="close-button-sub">Close Menu</button>
			</div>
			  

                  <form name="frmPrincipal" action="SAgregarCarro"  method="post">
                      <table align="center">
                          <tr>
                              <td>
                          <center>
            <% 
               String D;
               D = pro.getZelda();
            %>
            
            <img  width="300px" height="300px" src="<%=D%>">
          

           <center>
               <h2> <font font="aventura"><h1><%=pro.getProducto_nombre()%></h1></font></h2>
               
               <input name="nom" type="hidden"  size="10"  value="<%=pro.getProducto_nombre()%>" >
        <input name="txtCodigo" type="hidden" id="txtCodigo" size="10"  value="<%=pro.getProducto_codigo() %>" >
 
       <input name="txtPrecio" type="hidden" id="txtPrecio"   value="<%=pro.getProducto_precio() %>">

        <input name="txtStock" type="hidden" id="txtStock"  readonly value="<%=pro.getProducto_stock() %>">
 
        <input name="txtCantidadPedir" class="form-control" type="text" id="txtCantidadPedir"  placeholder="Cantidad a Pedir" onpaste="return false " ondrop="return false" onblur="validacionChingona()" onkeypress="soloNumero(event)" maxlength=3 required />
        <input type="hidden" name="YOLO" value="<%=usuario%>">           
        <br><br>
      
            <button class="btn btn-4 btn-4a "  onclick="validacionChingona()"  name="button" id="button" type="submit">Agregar</button>
 <button class="btn btn-4 btn-4a" id="open-button" ><i class="fa fa-fw fa-pencil-square"></i><span>Elegir Fecha de entrega</span></button>
           </center>
            </center>
              </td>
              </tr>
              </table>
      
        
    </form>
       
          
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
		
        <script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
        <script src="retina/dist/retina.js"></script>
        <script src="js/classie2.js"></script>
		<script src="js/main2.js"></script>
	</body>
	
</html>