/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Obtener;

import Obtener.Conn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Your_Awesomess
 */
public class AddRamonas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {   
       String p = "",n = "",c = "",z="",inserta="";
        Conn conn = new Conn();
        conn.conectar();
        
        try{
        n = request.getParameter("nombre");
        p = request.getParameter("precio");
        c= request.getParameter("canti");
        z=request.getParameter("zelda");
 
        }catch(Exception e){
            System.out.print("Error en la concatenación del grupo"+e);
        }
        
   
      
       inserta = "INSERT INTO producto1(producto_Nombre,producto_Precio,producto_Stock,zelda) VALUES('"+n+"','"+p+"','"+c+"','"+z+"')";
        try {
        conn.set = conn.con.createStatement();
        conn.set.executeUpdate(inserta);
        } catch (SQLException e) {
            System.out.println("No inserta en la base de datos grupList. "+e);
        }
        response.sendRedirect("sabores3.jsp");
        
    }}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  