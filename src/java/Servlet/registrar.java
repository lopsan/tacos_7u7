
package Servlet;

import Controlador.Usuario;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 *
 * @author Lopsan
 */
public class registrar extends HttpServlet {

   private Connection con;                     //
    private Statement set;
    private ResultSet rs;
    public void init(ServletConfig cfg) throws ServletException {
        String URL = "jdbc:mysql:3306//localhost/carrito";  //se traza la ruta de conexion
        String userName = "root";                               //se determina el usuario de conecion de mysql
        String password = "2013090544";                           //el password si es que cuenta con uno
        try {
        Class.forName("com.mysql.jdbc.Driver");                 
        URL = "jdbc:mysql://localhost/carrito";
        
        con = DriverManager.getConnection(URL,userName,password);
        set = con.createStatement();

        System.out.println("Se ha conectado");
        } catch (Exception e) {
        System.out.println("No se ha conectado");
        }
    }
  /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    
          String usuario = (String) req.getParameter("Nomusi");
       String nombreP = (String) req.getParameter("Nombre");
       String apellipat = (String) req.getParameter("Apellidopat");
       String apellimat = (String) req.getParameter("Apellidomat");
       String contra = (String) req.getParameter("contri");
        int hola=0;
    
        
           try {
            
         String nombus; 
        String nombre;
        String apepat;
        String apemat;
        int contro;
  String sql_inserta = "insert into usuario values ( ? , ? , ? , ? , ? , ? )";

       PreparedStatement statement = con.prepareStatement(sql_inserta);
       statement.setString(1,usuario);
       statement.setString(2,nombreP);
       statement.setString(3,apellipat);
       statement.setString(4,apellimat);
       statement.setString(5,contra);
       statement.setInt(6,hola);
        statement.executeUpdate();
       statement.close();
       
     
      
       
  
       
        } catch (Exception e) {
       System.out.println("No lee de la tabla");
        }
      if(1>0){
       res.sendRedirect("inicio.jsp");
      } 
      
     }
}