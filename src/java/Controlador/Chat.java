/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Alumnos
 */
public class Chat {
    
    private String usuario_User;
	private String usuario_Clave;
	private String mensaje;

	/** Crea un nueva instancia de la clase usuario con magia de sirenas*/
	public Chat(){

	}

     /**
     * Metodo usado para verificar si un usuario esta registrado en la Base de Datos
     * con su User y Clave de forma correcta
     * @param user Que viene a ser el user del Usuario
     * @param clave Que viene a ser la clave del Usuario
     */
      public Vector<Chat> listaMensajes(){//Con magia de sirenas :D
        Vector<Chat> lp=new Vector<Chat>();
        Connection cn=null;
        PreparedStatement pr=null;
        ResultSet rs=null;
        try{
            cn=Conexion.getConexion();
            String sql="SELECT\n" +
"usuario.usuario_User,\n" +
"chat.username,\n" +
"chat.mensaje\n" +
"FROM\n" +
"usuario\n" +
"INNER JOIN chat ON chat.Username = usuario.usuario_User order by `id` DESC";
            pr=cn.prepareStatement(sql);
            rs=pr.executeQuery();
            while(rs.next()){
               Chat profesor=new Chat();
                
                profesor.setUsuario_clave(rs.getString("chat.username"));
                profesor.setUsuario_privilegio(rs.getString("chat.mensaje"));
                Pattern patron = Pattern.compile(":3");
                Pattern patron2=Pattern.compile(":D");
                Pattern patron3=Pattern.compile(":catniss:");
                Pattern patron4 = Pattern.compile(":jojojo:");
                Pattern patron5=Pattern.compile(":u");
                Pattern patron6=Pattern.compile("-_-");
                Pattern patron7 = Pattern.compile("XD");
                Pattern patron8=Pattern.compile(":o");
                Pattern patron9=Pattern.compile(":/");
                Matcher encaja = patron.matcher(profesor.getUsuario_privilegio());
                  
                String resultado = encaja.replaceAll(" <img src=\"3.gif\" height=\"60\" width=\"60\"> ");
                encaja = patron2.matcher(resultado);
                resultado= encaja.replaceAll("<img src=\"D.gif\" height=\"60\" width=\"40\">");
                encaja = patron3.matcher(resultado);
                resultado= encaja.replaceAll("<img src=\"catniss.gif\" height=\"60\" width=\"60\">");
                encaja = patron4.matcher(resultado);
                resultado= encaja.replaceAll("<img src=\"jojojo.gif\" height=\"100\" width=\"100\">");
                encaja = patron5.matcher(resultado);
                resultado= encaja.replaceAll("<img src=\"(.gif\" height=\"60\" width=\"60\">");
                encaja = patron6.matcher(resultado);
                resultado= encaja.replaceAll("<img src=\"-_-.gif\" height=\"60\" width=\"60\">");
                encaja = patron7.matcher(resultado);
                resultado= encaja.replaceAll("<img src=\"XD.gif\" height=\"60\" width=\"60\">");
                encaja = patron8.matcher(resultado);
                resultado= encaja.replaceAll("<img src=\"o.gif\" height=\"60\" width=\"60\">");
                encaja = patron9.matcher(resultado);
                resultado= encaja.replaceAll("<img src=\"otro.gif\" height=\"60\" width=\"60\">");
                
                profesor.setUsuario_privilegio(resultado);
                      
                lp.add(profesor);
    
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            lp=null;
        }finally{
            try{
                rs.close();
                pr.close();
                cn.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return lp;
    }
    
      
      public Chat Mensaje(String User,String Clave){
    
        Connection cn=null;
        PreparedStatement pr=null;
      
        try{
            cn=Conexion.getConexion();
            String sql="insert into chat(username,mensaje) values (?,?)";
            pr=cn.prepareStatement(sql);  
            pr.setString(1,User);
            pr.setString(2,Clave);    
            pr.executeUpdate();
            
            
        }catch(SQLException ex){
            ex.printStackTrace();
            System.out.println("PUTAMADRE");
        }finally{
            try{
               
                pr.close();
                
            }catch(SQLException ex){

            }
        }
            return null;
        
    }
   
	/** Metodos GET de la clase usuario */
	
	
	public String getUsuario_user(){
		 return this.usuario_User;
	}
	public String getUsuario_clave(){
		 return this.usuario_Clave;
	}
       
	public String getUsuario_privilegio(){
		 return this.mensaje;
	}

	/** Metodos SET de la clase usuario */

	
	
	public void setUsuario_user(String usuario_User){
		 this.usuario_User=usuario_User;
	}
	public void setUsuario_clave(String usuario_Clave){
		 this.usuario_Clave=usuario_Clave;
	}
      
	public void setUsuario_privilegio(String usuario_Privilegio){
		 this.mensaje=usuario_Privilegio;
	}

}