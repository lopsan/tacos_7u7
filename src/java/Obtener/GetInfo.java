/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Obtener;

import Controlador.consulta;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Your_Awesomess
 */
public class GetInfo extends HttpServlet {

    public String GetNombre(){
        ArrayList<String> numeros = new ArrayList<String>();
         String Do="SELECT ventas.producto_nombre From ventas";
         
         int sumaP=0;
         int result=0;
         int largo=0;
         Integer [] contenedor = {};
         String ret="";
         int numerador=0;
         
      
         
         
         Conn conn = new Conn();
         conn.conectar();
         String keep;
         try{
             conn.set = conn.con.createStatement();
             conn.rs = conn.set.executeQuery(Do);
             while(conn.rs.next()){
                 keep=conn.rs.getString("ventas.producto_nombre");
                 numeros.add(keep);
                
             }
             
         }
         catch(Exception e){
            System.out.print("Error al agregar los Arrays Nombres Grupal"+e);
         }
         try{
            
            Iterator<String> iterator = numeros.iterator();
             while(iterator.hasNext())
                {
                    if(numerador==0){
                        ret="\""+iterator.next()+"\"";
                        numerador+=1;
                        
                    }else{
                   ret+=",\""+iterator.next()+"\"";
                    } 
                 }
             
         }
         catch(Exception e){
             System.out.print("Error al pasar los Integer to int"+e);
         }
       
         
     
         return ret;
         
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
         ResultSet rs = st.executeQuery("SELECT ventas.cantidad From ventas");
         while (rs.next())
         {
            consulta consultita = new consulta();
            consultita.setProducto_Nombre(rs.getString("producto_nombre"));
            consultita.setCantidad(rs.getInt("cantidad"));
            listaconsulta.add(consultita);
         }
         rs.close();
         st.close();
         conexion.close();
      }
      catch (Exception e)
      {
        System.out.println("noo hizo nada");
      }
      return listaconsulta;
   
}
     public String GetCantidad(){
         ArrayList<String> numeros = new ArrayList<String>();
         String Do="SELECT ventas.cantidad From ventas";
         
         
         Integer [] contenedor = {};
         String ret="";
         int numerador=0;
         int numerador2=1;
         boolean verifica=true;
         
         
         Conn conn = new Conn();
         conn.conectar();
         
         
         try{
             conn.set = conn.con.createStatement();
             conn.rs = conn.set.executeQuery(Do);
             while(conn.rs.next()){
                

                
             
                 numeros.add(conn.rs.getString("ventas.cantidad"));
             }
             
         }
         catch(Exception e){
            System.out.print("Error al agregar los Arrays Promedio Grupal"+e);
         }
         try{
            
            Iterator<String> iterator = numeros.iterator();
             while(iterator.hasNext())
                {   
                   if(numerador==0){
                        ret+=iterator.next();
                        numerador+=1;
                        
                    }else{
                   ret+=","+iterator.next();
                    } 
                 
                 }
             
         }
         catch(Exception e){
             System.out.print("Error al pasar los Integer to int"+e);
         }
       
         
     
         return ret;
         
     }
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
