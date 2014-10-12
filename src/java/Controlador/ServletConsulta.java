package Controlador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Controlador.consulta;
import Controlador.busca;
import java.util.LinkedList;
public class ServletConsulta extends HttpServlet {
 private static final long serialVersionUID = 1L;
    public ServletConsulta() {
    }
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String usuario=request.getParameter("holis");
     LinkedList<consulta> consultita=Usuari.getUsuari(usuario);

  if(consultita!=null){
   request.setAttribute("consultita", consultita);
   System.out.println("Se ha mandadaod"+consultita);
   request.getRequestDispatcher("historial.jsp").forward(request, response);
  }else{
   PrintWriter out=response.getWriter();
   out.println("Error, no se encontro el usuario."+consultita);
  }
 }
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 }
}