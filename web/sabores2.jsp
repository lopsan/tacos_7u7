<%-- 
    Document   : sabores2
    Created on : 28/04/2014, 04:05:55 AM
    Author     : Lopsan
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>
<%@page import="Obtener.*" %>

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

  

<%-- Finalizar --%>
<html  lang="en" class="no-js">
    <head>
       
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
 img:hover{
     -moz-box-shadow: 0 0 10px #ccc; -webkit-box-shadow: 0 0 10px #ccc; box-shadow: 0 0 10px #ccc;
     opacity:3;
 }
 
 
 #txtp{
	width: 800px;

	background-color: rgba(150,150,150,0.4);
	color: #fff;
	margin: 0 auto;
	text-align:left; 
	border-radius: 20px;
	padding: 10px;
	box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
	
}
h2{
    font-family:"precursiva", sans-serif; 
    color: rgba(255, 255, 255, 0.8);
}
h3{
    font-family:"precursiva", sans-serif; 
    color: rgba(255, 255, 255, 0.8);
}

  h2{
                margin: 0;     
                color: #FF686D; 
                padding-top: 20px;
                font-size: 72px;
                font-family: "aventura", sans-serif;    
            }
 </style>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
                <title>Schnell Vertrieb-Home</title>
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/foundation.css">

  <!-- If you are using the gem version, you need this only -->
  <link rel="stylesheet" href="css/app.css">

  <script src="js/vendor/modernizr.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="retina/dist/retina.js"></script>
<script src="/js/foundation.min.js"></script>

<!-- or individually -->

<script src="/js/foundation.js"></script>
<script src="/js/foundation.alert.js"></script>
<!-- ... --><link rel="stylesheet" type="text/css" href="css/caca.css" />
<script src="/js/foundation.dropdown.js"></script>
<script src="/js/foundation.tab.js"></script>
		<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	</head>
	<body onLoad="baja()">
        
                 <div id='txtp'>
                <table align="center">
                    <center>
			  <%
        Conn conn = new Conn();
        conn.conectar();
        String zelda="",nombre="",cantidad="",precio="",codigo="";
        
    try {
        conn.set = conn.con.createStatement();
        conn.rs = conn.set.executeQuery("SELECT * FROM producto1;");
        while(conn.rs.next()){
        zelda = conn.rs.getString("zelda");
        cantidad = conn.rs.getString("producto_Stock");
        precio = conn.rs.getString("producto_Precio");
        nombre = conn.rs.getString("producto_Nombre");
        codigo = conn.rs.getString("producto_Codigo");
        
         %>   
       

       <tr>
            <td align="center"><a href="#" class="img-circle"  data-toggle="modal" data-target="#<%=codigo%>" id="hol"><img width="300px" height="300px" src="<%=zelda%>"  ></a></td>
        </tr>
        <tr>
        
            <td align="center"><h2><font font="aventura"><%=nombre%></font></h2></td>
        </tr>
        
        <tr>
            <td align="center"><h2><font font="aventura">Precio: $<%=precio%></font></h2></td>
        </tr>
        <tr>
                <td align="center"> <a href="carrito.jsp?tacos_we=<%=codigo%>"><button class="btn btn-4 btn-4a" name="B1" type="submit">Comprar</button></a> <br></td>

        </tr>

      
        
        <%}
        } catch (Exception e) {
            System.out.println("Error en la obtencion de datos");
        }
        %>
                    
			

	        		
	        

                </center>		        		
	        	</table>
        
                 </div>
        <!-- Modal -->

<div class="modal fade" id="1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Girasol</h4>
      </div>
      <div class="modal-body">
          <center> <img width="250px" height="250px"  src="flor/F1.jpg"></center>
          <blockquote><p>Hermosísima planta anual, probablemente originaria de Perú, los girasoles aparece hoy en día en los jardines y huertas de todas las partes del mundo. Mide de dos a tres metros de altura y posee tallo recto, cilindrico y pubescente, con hojas largo pecioladas de hasta 50 centímetros de largo por 30 de ancho, y tres nervaduras principales salientes. Cada tallo tiene una flor grande y vistosa amarillo dorada, semejante a una margarita gigante, que se abre durante el verano y describe un giro durante el día, de modo que siempre mira hacia el sol.</p>
</blockquote> 
          <p align="center"><img width="250px" height="450px" src="america.jpg" class="img-thumbnail"></p></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Petunia Negra</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F2.jpg"></center>
        <blockquote>  <p>Las petunias son oriundas de Sur América. Aunque suene curioso, estas floridas plantas son familia cercana de la planta del tabaco, de la papa y el tomate. Existen numerosas especies de petunia, desde olorosas, hasta con flores de hoja doble (muy parecidas al clavel común).</p>
     </blockquote>
          <p align="center"><img width="250px" height="550px" src="suramerica.jpg" class="img-thumbnail"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Azucena</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F3.jpg"></center>
        <blockquote>  <p>Lilium candidum, lirio o azucena, del árabe assusana, es una planta vivaz de porte herbáceo, que pertenece a la familia de las Liliáceas.</p>
     </blockquote>
          <p align="center"><img width="250px" height="250px" src="iberica.jpg" class="img-thumbnail"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>






<div class="modal fade" id="4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Orquidea Negra</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F4.jpg"></center>
        <blockquote>  <p>Es una orquídea de pequeño tamaño que prefiere el clima templado al frío, es de hábitos epífitas con un tallo erguido y envuelto basalmente de 2 a 3 vainas tubulares con una sola hoja apical, patulada, ligeramente áspera adaxialmente, pecioladas, con el ápice emarginado o bien apicaulado. </p>
     </blockquote>
          <p align="center"><img width="250px" height="250px" src="costa.jpg" class="img-thumbnail"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>





<div class="modal fade" id="5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Clavel Rojo</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F5.jpg"></center>
        <blockquote>  <p>Es espontánea en la flora de la península ibérica, propia de la especie típica es una planta cespitosa, con numerosos vástagos de hasta 1 m de altura. Sus hojas son lineales, angostas, opuestas y envainadoras, más anchas las basales que las caulinares. Cada tallo forma una flor terminal</p>
     </blockquote>
          <p align="center"><img width="250px" height="250px" src="iberica.jpg" class="img-thumbnail" ></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>











<div class="modal fade" id="6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Flor de Loto</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F7.jpg"></center>
        <blockquote>  <p>Nelumbo nucifera es una de las dos especies pertenecientes al género Nelumbo Adans. 1763. Recibe el nombre vulgar de loto sagrado o loto indio, y a veces el de rosa del Nilo. El término específico hace referencia a sus frutos (latín: nucifer, -a, -um, que lleva nueces). Es famosa la longevidad de sus semillas, que pueden germinar después de 30 siglos.</p>
     </blockquote>
          <p align="center"><img width="250px" height="250px" src="egipto.jpg" class="img-thumbnail" ></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>





<div class="modal fade" id="7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Bambu</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F8.jpg"></center>
        <blockquote>  <p> Bambusoideae es el nombre de una subfamilia de plantas que pertenecen a la familia de las gramíneas o Poaceae, una de las familias botánicas más extensas e importantes para el hombre. Su nombre común es bambú. Los bambúes pueden ser plantas pequeñas de menos de 1 m de largo y con los tallos (culmos) de medio centímetro de diámetro, aunque también los hay gigantes: de unos 25 m de alto y 30 cm de diámetro. Además, aunque los verdaderos bambúes siempre tienen sus tallos leñosos, esto no ocurre en algunas especies.</p>
     </blockquote>
          <p align="center"><img width="250px" height="250px" src="asia.jpg" class="img-thumbnail" ></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

        <div class="modal fade" id="8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Dalia</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F9.jpg"></center>
        <blockquote>  <p> El primer nombre dado a esta flor fue en Nahuatl Atlcocotlixochitl, que viene de: a-tl (agua), coco-tli (tubo) y xochitl (flor). Una especie de Dahlia en particular fue la flor originaria de Aztlan; tal como lo describe Francisco Hernández en el libro Historia Natural de Nueva España</p>
     </blockquote>
          <p align="center"><img width="250px" height="200px" src="mexico.jpg" class="img-thumbnail" ></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Clavel Rosa</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F10.jpg"></center>
        <blockquote>  <p>Es espontánea en la flora de la península ibérica, propia de la especie típica es una planta cespitosa, con numerosos vástagos de hasta 1 m de altura. Sus hojas son lineales, angostas, opuestas y envainadoras, más anchas las basales que las caulinares. Cada tallo forma una flor terminal</p>
     </blockquote>
          <p align="center"><img width="250px" height="250px" src="iberica.jpg" class="img-thumbnail" ></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

        <div class="modal fade" id="10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Violeta Rosa</h4>
      </div>
      <div class="modal-body">
          <center><img width="250px" height="250px"  src="flor/F11.jpg"></center>
        <blockquote>  <p>La violeta es una planta herbácea, de la familia de las violáceas con tallos rastreros, hojas radicales con peciolos largos o cortos, ásperas y en forma de corazón, lanceoladas, ovales, reniformes, sectadas, etc. con bordes festoneados, lisos o dentados. Produce pequeñas flores de color azul intenso, morado claro, violeta, púrpura, blancas o amarillas, de tallo largo y fino.</p>
     </blockquote>
          <p align="center"><img width="250px" height="250px" src="iberica.jpg" class="img-thumbnail" ></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
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
          <script src="js/vendor/jquery.js"></script>
  <script src="js/foundation/foundation.js"></script>
  <script src="js/foundation/foundation.joyride.js"></script>
  <script src="js/vendor/jquery.cookie.js"></script>
</html>