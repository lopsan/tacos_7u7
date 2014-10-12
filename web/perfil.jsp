<%-- 
    Document   : casa
    Created on : 28/04/2014, 03:41:56 AM
    Author     : Lopsan
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>
<%@page import="Obtener.*" %>
<%@page import="Servlet.*" %>

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
<html>
    <head>
        <script type="text/javascript">
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
                CONTRA=conn.rs.getString("usuario_Clave");
            }
         }catch(Exception e){
             System.out.print(e);
         }
        conn.killC();
        %>
    function soloLetras(e){
                tecla = (document.all) ? e.keyCode : e.which; 
                if (tecla==8) return true; // backspace
                if (tecla==32) return true; // espacio

                patron = /[a-zA-ZÑñáéíóúÁÉÍÓÚ]/; //patron

                te = String.fromCharCode(tecla); 
                return patron.test(te); // prueba de patron
              }
      function soloNumero(e){
	var key = window.Event ? e.which : e.keyCode
	return (key >= 48 && key <= 57 || key==8)
    }
        
        function Pass(e) {
            if (document.formulito.contri.value!==document.formulito.contri2.value){
             document.formulito.contri2.value="";  
                alert("Contraseñas diferentes, escriba la misma contraseña")
                formulito.contri2.focus();
                return (false);
            }
            
}
function corrig(e){
    if(document.formulito.contrian.value != <%=CONTRA%> ){
     document.fomulito.contrian.value="";
     alert("la contraseña antogua no es incorrecta, por favor indroduzcala correcamente :3")
     return (false);
    }
     
        
}
</script>
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
	width: 700px;
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
		<title>Schnell Vertrieb</title>
		<meta name="description" content="Responsive Animated Border Menus with CSS Transitions" />
		<meta name="keywords" content="navigation, menu, responsive, border, overlay, css transition" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
                <link rel="stylesheet" type="text/css" href="css/caca.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
		<script src="js/modernizr.custom.js"></script>
                <script src="retina/dist/retina.js"></script>
		<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap.min.css">
 <script type="text/javascript" src="jqwery/jquery-2.1.1.min.js"></script>
<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap-3.1.1-dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
                             
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
            <br>
            <br>
            <br>
            <br>
            <br>
           <div id='txtp'>
                <article>
                	<hgroup>
                		<h1> Bienvenido <%=usuario%></h1>
                    </hgroup>
        
                    <form action="Historial" method="POST" name="formulito">
                   
  <div class="row" > 
                         
                         <br>
                        <div class="col-md-6">   <input type="text" class="form-control"  name="usuario2"  value="<%=usuario%>" onfocus = "if(this.value=='<%=usuario%>') this.value=''" onblur="if(this.value=='') this.value='<%=usuario%>'"   required />
                            

         </div>
                        <div class="col-md-6">       <input type="text" class="form-control" name="Nom"  value="<%=nombreU%>" placeholder="<%=nombreU%>" onfocus="if(this.value=='<%=nombreU%>')this.value=''" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
  
</div>
                </div> <br>
     <div class="row">
         <div class="col-md-6"> 
           <input type="text" class="form-control" name="Appat"  placeholder="<%=APPP%>" value="<%=APPP%>" onfocus="if(this.value=='<%=APPP%>')this.value=''"  onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
          
         </div>    
           <div class="col-md-6"> <input type="text" class="form-control" name="Apmat" value="<%=APPM%>" onfocus="if(this.value=='<%=APPM%>')this.value=''"   placeholder="<%=APPM%>" onpaste="return false " ondrop="return false" onkeypress="return soloLetras(event)" maxlength=25 required />
           </div>
           </div>
           <br>
           <input type="password" class="form-control" name="contri"  placeholder="Nueva contraseña" ondrop="return false" onpaste="return false " maxlength=32 required />
         <br>


         <input type="password" class="form-control" name="contri2" onblur="Pass()" placeholder="Repita contraseña"  ondrop="return false" onpaste="return false " maxlength=32 required />
         <br><center>
                         <button class="btn btn-4 btn-4a" name="B1" type="submit">Listo</button>
                         </center>
         <br>
                          

         
  </div>
                    </form>
                </article>
                          
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
					<li><a href="http://www.twitter.com" class="bt-icon icon-twitter">Twitter</a></li>
					<li><a href="https://plus.google.com" class="bt-icon icon-gplus">Google+</a></li>
					<li><a href="https://www.facebook.com" class="bt-icon icon-facebook">Facebook</a></li>
				</ul>
			</nav>
		</div><!-- /container -->
	<script src="retina/dist/retina.js"></script>
        </body>
	<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
</html>