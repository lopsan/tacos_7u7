/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;


/**
 *
 * @author Your_Awesomess
 */
public class Historial extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    
            String Name = req.getParameter("usuario2");
            String Nom=req.getParameter("Nom");
       String apa=req.getParameter("Appat");
       String ama =req.getParameter("Apmat");
        String Pass=req.getParameter("contri2");
   try{
          Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

          String cambia="UPDATE usuario SET usuario_Nombre='"+Nom+"',usuario_Clave='"+Pass+"',usuario_Apellidop='"+apa+"',usuario_Apellidom='"+ama+"' WHERE usuario_User='"+Name+"' ";
             statement.executeUpdate(cambia);
        System.out.print("esta todo okas"+ Name);
        statement.close();
            
             
   } catch(Exception e) {
       System.out.println("No lee de la tabla");
        }
   if(1>0){
       res.sendRedirect("index.jsp");
      } 
    }
}
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  