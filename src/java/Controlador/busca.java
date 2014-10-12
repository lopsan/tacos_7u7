/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Lopsan
 */
public class busca extends HttpServlet {

	        

	/** Crea un nueva instancia de la clase producto */
		public busca(){

	}
          
          

   public static LinkedList<consulta> getconsulta()
   {
      LinkedList<consulta> listaconsulta=new LinkedList<consulta>();
      try
      {
        Class.forName("com.mysql.jdbc.Driver");
         Connection conexion = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/carrito", "root", "2013090544");
         Statement st = conexion.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM detalleventa order by usuario_User");
         while (rs.next())
         {
            consulta consultita = new consulta();
            consultita.setUsuario_user(rs.getString("usuario_User"));
            consultita.setProducto_Nombre(rs.getString("producto_nombre"));
            consultita.setCantidad(rs.getInt("cantidad"));
            consultita.setSubTotal(rs.getInt("subtotal"));
            listaconsulta.add(consultita);
         }
         rs.close();
         st.close();
         conexion.close();
      }
      catch (Exception e)
      {
        System.out.println("noo ha conectado a la base de detalleventa");
      }
      return listaconsulta;
   
}
   public static LinkedList<consulta> getconsulta2()
   {
      LinkedList<consulta> listaconsulta=new LinkedList<consulta>();
      try
      {
        Class.forName("com.mysql.jdbc.Driver");
         Connection conexion = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/carrito", "root", "2013090544");
         Statement st = conexion.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM detalleventa order by subtotal limit 10");
         while (rs.next())
         {
            consulta consultita = new consulta();
            consultita.setUsuario_user(rs.getString("usuario_User"));
            consultita.setProducto_Nombre(rs.getString("producto_nombre"));
            consultita.setCantidad(rs.getInt("cantidad"));
            consultita.setSubTotal(rs.getInt("subtotal"));
            listaconsulta.add(consultita);
         }
         rs.close();
         st.close();
         conexion.close();
      }
      catch (Exception e)
      {
        System.out.println("noo ha conectado a la base de detalleventa 222");
      }
      return listaconsulta;
   
}
   public static LinkedList<consulta> getconsulta3()
   {
      LinkedList<consulta> listaconsulta=new LinkedList<consulta>();
      try
      {
        Class.forName("com.mysql.jdbc.Driver");
         Connection conexion = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/carrito", "root", "2013090544");
         Statement st = conexion.createStatement();
         ResultSet rs = st.executeQuery("SELECT * FROM detalleventa order by subtotal desc limit 10");
         while (rs.next())
         {
            consulta consultita = new consulta();
            consultita.setUsuario_user(rs.getString("usuario_User"));
            consultita.setProducto_Nombre(rs.getString("producto_nombre"));
            consultita.setCantidad(rs.getInt("cantidad"));
            consultita.setSubTotal(rs.getInt("subtotal"));
            listaconsulta.add(consultita);
         }
         rs.close();
         st.close();
         conexion.close();
      }
      catch (Exception e)
      {
        System.out.println("noo ha conectado a la base de detalleventa 22");
      }
      return listaconsulta;
   
}
}
