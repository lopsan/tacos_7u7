<%-- 
    Document   : index
    Created on : 28/04/2014, 03:29:41 AM
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
String contra ="";
String holo = "";
HttpSession sesionOk = request.getSession();
holo = (String)sesionOk.getAttribute("passw");
if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="inicio.jsp">
<jsp:param name="error" value="Es
obligatorio identificarse"/>
</jsp:forward>
<%
} else {
usuario = (String)sesionOk.getAttribute("usuario");
contra = (String)sesionOk.getAttribute("passw");

}
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
	<style>
            body{
                background: url(im.jpg)
                no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
             #contenedor {
                background:url(lol.jpg)
                no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
                left:200px;
            }
        </style>
        <style type="text/css">
            @font-face
            {
            font-family: aventura;
            src: url(Sketch_Nice.ttf);
            }
            .carousel{
                margin-top: 10px;
            }
            .bs-example{
                    margin: 400px;
            }
            h2{
                margin: 0;     
                color: white;
                padding-top: 90px;
                font-size: 52px;
                font-family: "aventura", sans-serif;    
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
                    width: 800px;
                    background-color: rgba(150,150,150,0.0);
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
<script src="/js/foundation.min.js"></script>

<!-- or individually -->

<script src="/js/foundation.js"></script>
<script src="/js/foundation.alert.js"></script>
<!-- ... -->
<script src="/js/foundation.dropdown.js"></script>
<script src="/js/foundation.tab.js"></script>

		<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap-theme.min.css">
 <link rel="stylesheet" type="text/css" href="css/caca.css" />
<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <style type="text/css">
            @font-face
            {
            font-family: aventura;
            src: url(Corki-TuscanRounded.otf);
            }
            .carousel{
                margin-top: 10px;
            }
            .bs-example{
                    margin: 400px;
            }
            h2{
                margin: 0;     
                color: #F08A80;
                padding-top: 50px;
                font-size: 72px;
                font-family: "aventura", sans-serif;    
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
                    width: 800px;
                    background-color: rgba(150,150,150,0.0);
                    color: #fff;
                    margin: 0 auto;
                    text-align:left; 
                    border-radius: 20px;
                    padding: 20px;
                    box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
            }
        </style> 
        
        <script src="js/modernizr.custom.js"></script>
	</head>
            <body>
                     <%
       Conn conn=new Conn();
       conn.conectar();
          String nombreU="";
                String APPP="";
                String APPM="";
                String CONTRA="";
                String usua = "";
       
        try{
         conn.set = conn.con.createStatement();
         conn.rs = conn.set.executeQuery("SELECT * FROM usuario WHERE usuario_User = '"+usuario+"'");
            while(conn.rs.next()){
                nombreU=conn.rs.getString("usuario_Nombre");
                APPP=conn.rs.getString("usuario_Apellidop");
                APPM=conn.rs.getString("usuario_Apellidom");
            }
         }catch(Exception e){
             System.out.print(e);
         }
        conn.killC();
        %>
                <div id='txtp'>
                                        <h2>  <font font="aventura"><%=nombreU%> <%=APPP%> <%=APPM%></font></h2>
                                        <center>
                                            <a href="perfil.jsp  "> <button class="btn btn-11 btn-11a" name="B1" type="submit">Modificar</button></a>
                                            
                   
                                        </center>
                </div>
                
                
          
                        <div class="container">
                            <nav id="bt-menu" class="bt-menu">
                                <a href="#" class="bt-menu-trigger"><img src="logo.png" width="74px" height="71px"></a>
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
                        </div>

                    <script src="js/classie.js"></script>
                    <script src="js/borderMenu.js"></script>
                    <script src="js/vendor/jquery.js"></script>
                    <script src="js/foundation/foundation.js"></script>
                    <script src="js/foundation/foundation.joyride.js"></script>
                    <script src="js/vendor/jquery.cookie.js"></script>
                    <script>
                      $(document).foundation();
                      $(document).foundation('joyride', 'start');
                    </script>
                    <script src="retina/dist/retina.js"></script>
            </body>	
</html>
