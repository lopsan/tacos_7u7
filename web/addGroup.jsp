<%@page import="CTRL.GetInfo"%>
<%@page import="Model.Conn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <%
    String Name="";
    String Ap="";
    String Am="";
    String Data="";
    String TU="";
    String Mail="";
    
    Conn con=new Conn();
    con.conectar();   
    GetInfo inf = new GetInfo();
                
    HttpSession Ses = request.getSession();
    if(Ses.getAttribute("Nombre")==null){ 
     out.println("<script type='text/javascript'>window.location='index.jsp';</script>");
    }else{
        Name =(String) Ses.getAttribute("Nombre");
        Ap =(String) Ses.getAttribute("Ap");
        Am =(String) Ses.getAttribute("Am");
        Mail =(String) Ses.getAttribute("Mail");
        TU=(String) Ses.getAttribute("TU");
         if("3".equals(TU)){
            Data=inf.GetNE(Mail);
                }else{
            out.println("<script type='text/javascript'>window.location='index.jsp';</script>");
            }
        }
        %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="Resources/Style/Progreso.css">
    <title>Progreso | <%=Name%></title>
    <link rel="stylesheet" href="Resources/Style/Swaggy.css">
    <link rel="stylesheet" href="Resources/Style/Forms.css">
    <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="Resources/Style/MainStyle.css">
    <link rel="stylesheet" href="Resources/Style/ScrollexByBP.css">
    <script type="text/javascript" src="Resources/JS/Ajax.js"></script>
    <script type="text/javascript" src="Resources/JS/JQuery.js"></script>
    <script type="text/javascript" src="Resources/JS/Res.js"></script> 
    <script type="text/javascript" src="Resources/JS/Alert.js"></script>
    <script type="text/javascript" src="Resources/JS/BLaunch.js"></script>
    <script type="text/javascript" src="Resources/Bootstrap/js/bootstrap.js"></script>

    <meta name="viewport" content="width=device-width">
    <script type="text/javascript">

    $(window).bind('load', function(){
        //Page loaded
        LoadMain2();
        ResponsiveStuff();
    var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
        if(is_chrome!=true){
            //alert('no es chrome');
            $('.AlertJH').attr('class','AlertJ');
        }else{
                //alert('es chrome');
        }
        window.setTimeout('ResponsiveStuff()',100);
        window.setTimeout('juroSolemnemente2()',100);
    }); 
    function holis(a){
    $(a).popover('toggle');}
    </script>
    <link rel="shortcut icon" href="Resources/Power/favicon.ico" />
</head>
<body>
    <div class="AlertJH">
	<div class="AlertControlCenterH" onclick="HideAlert()"></div>
<div class="alertBody">
	<div class="AlertTitle"><span  id="AlertTitleCont">Ups!</span></div>
	<div class="AlertCont">
            <img src="Resources/Img/Chrome.png" draggable="false" width="200px" />
	<span id="AlertContID">
		Vemos que <b>no usas chrome</b>, no tenemos nada en contra, pero, para disfrutar por completo el sistema te recomendamos lo uses, <b>gracias</b>.
	</span>
	</div>
	<div class="AlertButton" onclick="HideAlert()">Okey</div>
</div>
</div>
    <div id="Maind"></div>
    
    <div class="row" align="center" style="margin-top: 100px;">
	<div class="col-md-6 col-md-offset-3 EjHolder" style="margin-left: 25%;">
            <form method="post" action="addGroups">
<table class="table table-hover">
	<tr>
            <td colspan="2"><h3>Crear grupo</h3></td>
	</tr>
	<tr>
            <td>Semestre:</td></tr><tr>
		<td><select class="form-control" name="Semestre">
			<option value="1">Primero</option>
			<option value="2">Segundo</option>
			<option value="3">Tercero</option>
			<option value="4">Cuarto</option>
			<option value="5">Quinto</option>
			<option value="6">Sexto</option>
		</select></td>
	</tr>
	<tr>
		<td>Turno:</td></tr><tr>
		<td><select class="form-control" name="Turno">
			<option value="M">Matutino</option>
			<option value="V">Vespertino</option>
		</select></td>
	</tr>
        <tr>
            <td>Homoclave: </td></tr><tr>
		<td><select class="form-control" name="HC">
                    <option  value="1">1</option>
                    <option  value="2">2</option>
                    <option  value="3">3</option>
                    <option  value="4">4</option>
                    <option  value="5">5</option>
                    <option  value="6">6</option>
                    <option  value="7">7</option>
                    <option  value="8">8</option>
                    <option  value="9">9</option>
                    <option  value="10">10</option>
                    <option  value="11">11</option>
                    <option  value="12">12</option>
                    <option  value="13">13</option>
                    <option  value="14">14</option>
                    <option  value="15">15</option>
                    <option  value="16">16</option>
                    <option  value="17">17</option>
                    <option  value="18">18</option>
                    <option  value="19">19</option>
                    <option  value="20">20</option>
		</select></td>
        </tr>
	<tr>
		<td>Disponible</td></tr><tr>
		<td><select class="form-control" name="Visible">
			<option value="1">sip</option>
			<option value="2">Nop</option>
		</select></td>
	</tr>
        <tr align="center">
            <td colspan="2"><input class="btn btn-primary" type="submit" name="crear" value="Crear grupo"/></td>
        </tr>
</table>
                </form>
        </div>
        </div>
    <div class="row" align="center" style="margin-top: 100px;">
        <div class="col-md-6 col-md-offset-3 EjHolder" style="margin-left: 25%;">
            <br />
    <table class="table table-striped">
        <tr align="center">
            <td><h3>Grupos</h3></td>
        </tr>
        <%
        Conn conn = new Conn();
        conn.conectar();
        String grupos = "";
        
    try {
        conn.set = conn.con.createStatement();
        conn.rs = conn.set.executeQuery("SELECT * FROM gruposlist;");
        while(conn.rs.next()){            
        grupos = conn.rs.getString("Nombre");
        
        out.println("<tr>");
        out.println("<td>"+grupos+"</td>");
        out.println("</tr>");
        
        }
        } catch (Exception e) {
            System.out.println("Error en la obtencion de datos");
        }
        %>
        
    </table>
            <br />
        </div>
        </div>
         <br />
          <br />
          <script src="retina/dist/retina.js"></script>
</body>
</html>