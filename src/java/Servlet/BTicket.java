package Servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class BTicket extends HttpServlet {
 private Connection con;                     //
    private Statement set;
    private ResultSet rs;
    
    //se crea el objeto 
    
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

    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

     
       String usu = (String) req.getParameter("holis"); 
            try { 
       
         Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        String modi="DELETE FROM comprados WHERE usuario_User = '"+usu+"'";
        statement.executeUpdate(modi);
        
        statement.close();
        res.sendRedirect("index.jsp?crp=1");
        } catch (Exception e) {
        System.out.println("No lee de la tabla"+ usu);
        }
            
           }

    
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        try {
        doPost(req, res);
        } catch (Exception e) {}
    }
    
    public void destroy() {

        try {
        con.close();
        } catch (Exception e) {}
        super.destroy();
    }
}
