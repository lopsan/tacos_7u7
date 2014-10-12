package Controlador;

import java.sql.*;

/**
 * 
 * @autor 
 * Archivo: Usuario.java
 * Creado: 6/5/2009 02:35:26 PM
 */
public class Usuario{
        private String usuario_User;
	private String usuario_Nombre;
	private String usuario_Apellidop;
	private String usuario_Apellidom;
	private String usuario_Clave;
	private int usuario_Privilegio;

	/** Crea un nueva instancia de la clase usuario con magia de sirenas*/
	public Usuario(){

	}

     /**
     * Metodo usado para verificar si un usuario esta registrado en la Base de Datos
     * con su User y Clave de forma correcta
     * @param user Que viene a ser el user del Usuario
     * @param clave Que viene a ser la clave del Usuario
     */
    public Usuario verificarUsuario(String user, String clave){
        Usuario u=null;
        Connection cn=null;
        PreparedStatement pr=null;
        ResultSet rs=null;
        try{
            cn=Conexion.getConexion();
            String sql="SELECT * FROM Usuario WHERE usuario_User=? AND usuario_Clave=?";
            pr=cn.prepareStatement(sql);
            pr.setString(1, user);
            pr.setString(2, clave);
            rs=pr.executeQuery();
            while(rs.next()){
                u=new Usuario(); 
                u.setUsuario_user(rs.getString("usuario_User"));
                u.setUsuario_nombre(rs.getString("usuario_Nombre"));
                u.setUsuario_apellidop(rs.getString("usuario_Apellidop"));
                u.setUsuario_apellidom(rs.getString("usuario_Apellidom"));
                u.setUsuario_clave(rs.getString("usuario_Clave"));
                u.setUsuario_privilegio(rs.getInt("usuario_Privilegio"));
                
                
                break;
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            u=null;
        }finally{
            try{
                rs.close();
                pr.close();
                rs.close();
            }catch(SQLException ex){

            }
        }
        return u;
    }

	/** Metodos GET de la clase usuario */
        public String getUsuario_user(){
		 return this.usuario_User;
	}
	public String getUsuario_nombre(){
		 return this.usuario_Nombre;
	}
	public String getUsuario_apellidop(){
		 return this.usuario_Apellidop;
	}
        public String getUsuario_apellidom(){
		 return this.usuario_Apellidom;
	}
	
	public String getUsuario_clave(){
		 return this.usuario_Clave;
	}
	public int getUsuario_privilegio(){
		 return this.usuario_Privilegio;
	}

	/** Metodos SET de la clase usuario */
        public void setUsuario_user(String usuario_User){
		 this.usuario_User=usuario_User;
	}

	public void setUsuario_nombre(String usuario_Nombre){
		 this.usuario_Nombre=usuario_Nombre;
	}
	public void setUsuario_apellidop(String usuario_Apellidop){
		 this.usuario_Apellidop=usuario_Apellidop;
	}
        public void setUsuario_apellidom(String usuario_Apellidom){
		 this.usuario_Apellidom=usuario_Apellidom;
	}
	
	public void setUsuario_clave(String usuario_Clave){
		 this.usuario_Clave=usuario_Clave;
	}
	public void setUsuario_privilegio(int usuario_Privilegio){
		 this.usuario_Privilegio=usuario_Privilegio;
	}

}
