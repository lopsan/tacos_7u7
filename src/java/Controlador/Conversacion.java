package Controlador;


public class Conversacion {
    private static final int NMENSAJES = 12;
    private static String[] conversacion = new String[NMENSAJES];
    static
    {
     for (int i=0;i<NMENSAJES;++i)
         conversacion[i] = "";
    } 
    public synchronized static void añadirMensaje(String mensaje)
    {
     int i;
     for (i=0 ; i<NMENSAJES-1 ; ++i)
         conversacion[i]=conversacion[i+1];
         conversacion[i]=mensaje;  
    }
    
    public synchronized static String[] obtenerConversacion(){
        return conversacion;
    }
    
    
    }
    
    
    
    
            
            

