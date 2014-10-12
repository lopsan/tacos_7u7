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
public class encuentra{

     private int producto_Codigo;
	private String producto_Nombre;
        private String zelda;
	private double producto_Precio;
	private int producto_Stock;

   

	/** Crea un nueva instancia de la clase detalleventa */

	/** Metodos GET de la clase detalleventa */
	public int getProducto_codigo(){
		 return this.producto_Codigo;
	}
	public String getProducto_nombre(){
		 return this.producto_Nombre;
	}
	public double getProducto_precio(){
		 return this.producto_Precio;
	}
	public int getProducto_stock(){
		 return this.producto_Stock;
	}
        public String getZelda(){
		 return this.zelda;
	}

	/** Metodos SET de la clase producto */

	public void setProducto_codigo(int producto_Codigo){
		 this.producto_Codigo=producto_Codigo;
	}
	public void setProducto_nombre(String producto_Nombre){
		 this.producto_Nombre=producto_Nombre;
	}
        public void setZelda(String zelda){
		 this.zelda=zelda;
	}
	public void setProducto_precio(double producto_Precio){
		 this.producto_Precio=producto_Precio;
	}
	public void setProducto_stock(int producto_Stock){
		 this.producto_Stock=producto_Stock;
	}

}
