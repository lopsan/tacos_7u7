
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
public class agregar extends HttpServlet {

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
    
          String sabor = (String) req.getParameter("sabor");
        int can =Integer.parseInt( (String) req.getParameter("canti"));
          int can2 =Integer.parseInt( (String) req.getParameter("precio"));
       
        int hola=0;
    
        
           try {
       
        
        int contro = can ;
  Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        String modi="UPDATE producto1 SET producto_Stock = '"+can+"',producto_Precio = '"+can2+"' WHERE producto_nombre='"+sabor+"'";
        statement.executeUpdate(modi);
        
        statement.close();
        

      
       
  
       
        } catch (Exception e) {
       System.out.println("No lee de la tabla");
        }
      if(1>0){
       res.sendRedirect("sabores3.jsp");
      } 
      
     }
}