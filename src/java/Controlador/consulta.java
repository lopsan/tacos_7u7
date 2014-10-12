package Controlador;


import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


/**
 * 
 * @autor 
 * Archivo: Detalleventa.java
 * Creado: 6/5/2009 02:35:26 PM
 */
public class consulta{

        private String usuario_User;
	private String producto_nombre;
	private int cantidad;
        private int subTotal;

         public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
               String usuario = (String) req.getParameter("holis");
              consulta hola = new consulta();
                  hola.setUsuario_user(usuario);
             
              if(1>0){
       res.sendRedirect("carritof.jsp");
      } 
 }

	/** Crea un nueva instancia de la clase detalleventa */

	/** Metodos GET de la clase detalleventa */
	public String getUsuario_user( ){
		 return this.usuario_User;
	}
	public String getProducto_Nombre( ){
		 return this.producto_nombre;
	}
	public double getCantidad( ){
		 return this.cantidad;
	}
	public int getSubTotal( ){
		 return this.subTotal;
	}

	/** Metodos SET de la clase producto */

	public void setUsuario_user(String usuario_User){
		 this.usuario_User=usuario_User;
	}
	public void setProducto_Nombre(String producto_nombre){
		 this.producto_nombre=producto_nombre;
	}
	public void setCantidad(int cantidad){
		 this.cantidad=cantidad;
	}
	public void setSubTotal(int subTotal){
		 this.subTotal=subTotal;
	}

}
