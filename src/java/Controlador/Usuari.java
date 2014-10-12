package Controlador;

import Controlador.consulta;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.LinkedList;

public class Usuari extends HttpServlet {

 
 public static LinkedList<consulta> getUsuari(String usuario)
 {
  LinkedList<consulta> listaconsulta=new LinkedList<consulta>();
     

  try
      {
        Class.forName("com.mysql.jdbc.Driver");
      try (Connection conexion = DriverManager.getConnection(
              "jdbc:mysql://localhost:3306/carrito", "root", "2013090544")) {
          Statement st = conexion.createStatement();
          ResultSet rs = st.executeQuery("SELECT * FROM detalleventa JOIN usuario on detalleventa.usuario_User = usuario.usuario_User where detalleventa.usuario_User='"+usuario+"'");
          while (rs.next())
          {
            System.out.println("se ha conectado el usuario"+usuario);  
             consulta consultita = new consulta();
             consultita.setUsuario_user(rs.getString("usuario_User"));
             consultita.setProducto_Nombre(rs.getString("producto_nombre"));
             consultita.setCantidad(rs.getInt("cantidad"));
             consultita.setSubTotal(rs.getInt("subtotal"));
             
          }
          rs.close();
          st.close();
      }
      catch (Exception e)
      {
        System.out.println("no paso nada");
      }
      }
      catch (Exception e)
      {
        System.out.println("noo ha conectado a la base de detalleventa");
      }
      return listaconsulta;
   
}
}
