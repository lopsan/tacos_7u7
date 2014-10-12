/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlet;

import Controlador.Detalleventa;
import Controlador.Producto;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lopsan
 */
public class SAgregarCarro extends HttpServlet {
   
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
    
    
    
    
      
      
    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
        HttpSession sesion=req.getSession();
        Vector<Detalleventa> vectorDetalles=null;
        Vector<Producto> stockProducto=null;
        //Si se creo la sesion con el atributo de detalle de venta
        if(sesion.getAttribute("detalleVenta")!=null){
            //Si existe una sesion con ese atributo, se obtiene los datos de esa sesion
            vectorDetalles=(Vector<Detalleventa>)sesion.getAttribute("detalleVenta");
            stockProducto=(Vector<Producto>)sesion.getAttribute("stockProducto");
        }else{
            //Si no existe esa sesion se crea el vector de detalles de venta
            vectorDetalles=new Vector<Detalleventa>();
            stockProducto=new Vector<Producto>();

        }
        //Obtenemos los valores de la cajas de texto
        int codigo=Integer.parseInt(req.getParameter("txtCodigo").trim());
        int cantidad=Integer.parseInt(req.getParameter("txtCantidadPedir").trim());
        Producto prod=new Producto();
        prod=prod.buscarProducto(codigo);
        double subTotal=cantidad * prod.getProducto_precio();
        //Creo el elemento Detalle de Venta
        Detalleventa detalle=new Detalleventa();
        detalle.setDetventa_item(vectorDetalles.size()+1);
        detalle.setProducto_codigo(codigo);
        detalle.setDetventa_subtotal(subTotal);
        detalle.setDetventa_cantidad(cantidad);
        //Agrego el detalle de venta a mi vector de detalles
        vectorDetalles.add(detalle);
        sesion.setAttribute("detalleVenta",vectorDetalles);
        //Agegro el stock actualizado del producto
        prod.setProducto_stock(prod.getProducto_stock()-cantidad);
        stockProducto.add(prod);
        sesion.setAttribute("stockProducto", stockProducto);
        res.sendRedirect("comprados.jsp");
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
       @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
        processRequest(req, res);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
        String nombre="";
              String nombr = (String) req.getParameter("nom"); 

        int can =Integer.parseInt( (String) req.getParameter("txtCantidadPedir"));
       int cod =Integer.parseInt( (String) req.getParameter("txtCodigo"));
       int sto =Integer.parseInt( (String) req.getParameter("txtStock"));
        String holis="now()";
        int subTotal=0;
    String usi = (String) req.getParameter("YOLO");            
           try {
       
       
        int contro = sto-can ;
  Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        String modi="UPDATE producto1 SET producto_Stock = '"+contro+"' WHERE producto_Codigo='"+cod+"'";
        statement.executeUpdate(modi);
        
        statement.close();
           
        } catch (Exception e) {
       System.out.println("No lee de la tabla");
        }
           if(cod==1){
            subTotal=30*can; 
            nombre="Girasol";
           }
           if(cod==2){
             subTotal=80*can;
             nombre="Petunia Negra";
           }
           if(cod==3){
           subTotal=1000*can;
           nombre="Azucena";
           }
           if(cod==4){
               subTotal=130*can;
               nombre="Orquidea Negra";
           }
           if(cod==5){
               subTotal=150*can;
               nombre="Claveles Rojos";
           }
           if(cod==6){
       subTotal=40*can;
       nombre="Flor de Loto Blanca";
           }
              if(cod==7){
       subTotal=89*can;
       nombre="Bambu";
           }   
              if(cod==8){
       subTotal=200*can;
       nombre="Dalia";
           }  
              if(cod==9){
       subTotal=15*can;
       nombre="Claveles Rosa";
           }  
              if(cod==10){
       subTotal=60*can;
       nombre="Violetas Rosa";
           }  
           try{
            String sql_inserta = "insert into detalleventa values ( ? , ? , ? , ? , now() )";   
              PreparedStatement statement = con.prepareStatement(sql_inserta);
       statement.setString(1,usi);
       statement.setString(2,nombr);
       statement.setInt(3,can);
       statement.setInt(4,subTotal);
      
        statement.executeUpdate();
       statement.close();
           }
           catch (Exception e){
            System.out.println("No se inserto nada"+usi+nombr+can+subTotal);   
           }
           try{
                Statement statementa = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
       
            String inserta = "UPDATE ventas SET subtotal = subtotal+'"+subTotal+"', cantidad = cantidad+'"+can+"' WHERE producto_nombre='"+nombr+"'";   
              
     statementa.executeUpdate(inserta);
           }
           catch (Exception e){
            System.out.println("No se inserto nada"+usi+nombr+can+subTotal);   
           }
           try{
            String sql_inserta = "insert into comprados values ( ? , ? , ? , ? )";   
              PreparedStatement statement = con.prepareStatement(sql_inserta);
       statement.setString(1,usi);
       statement.setString(2,nombr);
       statement.setInt(3,can);
       statement.setInt(4,subTotal);
      
        statement.executeUpdate();
       statement.close();
           }
           catch (Exception e){
            System.out.println("No se inserto nada en comprados"+usi+nombr+can+subTotal);   
           }
           
        processRequest(req, res);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}