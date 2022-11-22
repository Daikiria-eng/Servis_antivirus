package pool;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * Esta clase, establece la conexón con la base de datos;
 * y se utiliza en los diferentes repositorios para la 
 * persistencia de datos.
 *
 * @author enikyasta
 */
public class Pool{
    //variables de conexión
    protected static final String
        host="127.0.0.1",
        port="5432",
        database="servis_antivirus",
        username="postgres",
        password="postgres",
        url="jdbc:postgresql://"+host+":"+port+"/"+database;
    private static Logger logger=Logger.getLogger(Pool.class.getName()); 

    /**
     *@return la conexión a la base datos
     */
    public static Connection getConnection(){
        Connection conn=null;
        try{
            logger.setLevel(Level.FINE);
            Class.forName("org.postgresql.Driver");
            conn=DriverManager.getConnection(url,username,password);
            logger.info("[+] Conectado a la db");
        }catch(Exception e){
            System.out.println("[-] Error al conectar: "+e);
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * Este método es para el cierre de un recurso
     *
     * @param rs que es el resltado de dml en la base de datos
     */
    public static void close(ResultSet rs){
        try{
            rs.close();
        }catch(SQLException sqle){
            sqle.printStackTrace();
        }
    }

    /**
     * Este método es para el cierre de un recurso
     * 
     * @param ps que es una sentencia preparada en la base de datos
     */
    public static void close(PreparedStatement ps){
        try{
            ps.close();
        }catch(SQLException sqle){
            sqle.printStackTrace();
        }
    }

    /**
     * Este método es para el cierre de un recurso
     * 
     * @param conn la conexión con la base de datos
     */
    public static void close(Connection conn){
        try{
            conn.close();
        }catch(SQLException sqle){
            sqle.printStackTrace();
        }
    }

    /**
     * Este método es para el cierre de un recurso
     *
     * @param st el estado para interacción con la base de datos
     */
    public static void close(Statement st){
        try{
            st.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
