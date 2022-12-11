package dao.impl;

import com.google.gson.Gson;
import dao.UserDAO;
import dto.User;
import dto.ResponseDTO;
import pool.Pool;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Types;

/**
 *
 *Esta es la clase de implementación de acceso al objeto de usuario
 *
 *@author enikyasta
 */
public class UserDAOimpl implements UserDAO{
    
    /**
     * Este método es el de registro de usuario
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     *  e 
     * @param user el usuario a insertar
     * @return retorna el estado de la validacion
     */
    @Override
    public String insertUser(User user){
        //Variables de conextión
        Connection conn=null;
        PreparedStatement pst=null;

        try{
            Gson gson=new Gson();
            String insertIt="INSERT INTO users (fullname,email,password) values(?,?,?)";
            //se realiza la conexión y se prepara la sentencia
            conn=Pool.getConnection();
            pst=conn.prepareStatement(insertIt);
            pst.setString(1,user.getFullName());
            pst.setString(2,user.getEmail());
            pst.setString(3,user.getPassword());
            boolean rows=pst.executeUpdate()==1;

            System.out.println("[+] Ejecturadoo: "+insertIt);

            // si no se reportan errores retornará una respuesta de estado positivo
            if(!rows) System.out.println("[-] Error insertar usuario");
            return (rows)?
                gson.toJson(new ResponseDTO(true)):gson.toJson(new ResponseDTO(false));
        }catch(Exception e){
            System.out.println("[+] Error al insertar usuario: "+e);
            e.printStackTrace();
        }finally{
            //Se cierran los recursos
            Pool.close(pst);
            Pool.close(conn);
        }

        return null;
    }

    /**
     * Este método hace la validación de usuario para el inicio de sesión
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @param user el usuario a insertar
     * @return retorna el estado de la validacion
     */
    @Override
    public String validateUser(User user){
        //variables de conexión
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        User userResponse=new User();

        try{
            String select_query="SELECT id,fullname,email FROM users WHERE email='"+user.getEmail()+"' AND password='"+user.getPassword()+"'";
            Gson gson=new Gson();
            //se realiza la conexión
            conn=Pool.getConnection();
            st=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs=st.executeQuery(select_query);
            rs.first();
            int row=rs.getRow();

            //si no se reportan errores se retorna el objeto json del usuario
            if(row==1){
                userResponse.setId(rs.getInt("id"));
                userResponse.setFullName(rs.getString("fullname"));
                userResponse.setEmail(rs.getString("email"));
                return gson.toJson(userResponse);
            }else return null;
        }catch(Exception e){
            System.out.println("[-] Error al validar usuario: "+e);
            e.printStackTrace();
        }finally{
            //Se cierran los recursos
            Pool.close(rs);
            Pool.close(st);
            Pool.close(conn);
        }
        return null;
    }

    
    @Override
    public String[] getAll() {
        String get_all_users="SELECT * FROM users";
        String[] result={};
        Gson gson=new Gson();
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        try{
            conn=Pool.getConnection();
            st=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs=st.executeQuery(get_all_users);
            if(rs.last())
                result=new String[rs.getRow()];

            rs.first();
            int i=0;
            do{
                User tempUser=new User();
                tempUser.setId(rs.getInt("id_user"));
                tempUser.setFullName(rs.getString("fullname"));
                tempUser.setPassword(rs.getString("password"));
                result[i]=gson.toJson(tempUser);
                i++;
            }while(rs.next());
            return result;
        }catch(Exception e){
            System.out.println("[-] Error al obtener todos: "+e);
            e.printStackTrace();
        }

        return null;
    }

    /**
     * Este método elimina los usuarios
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @param user el usuario a insertar
     * @return retorna el estado de la eliminación
     */
    @Override
    public String deleteUser(User user) {
        //variables de conexión
        Connection conn=null;
        CallableStatement cs=null;
        boolean result=false;
        Gson gson=new Gson();
        
        try{
            //Se crea la conexión con la base de datos
            conn=Pool.getConnection();
            cs=conn.prepareCall("{ ? = insert_user(?) }");
            cs.registerOutParameter(1, Types.BOOLEAN);
            cs.setInt(1, user.getId());
            cs.executeUpdate();
            result=cs.getBoolean("status");
            
            //Se retorna el valor que retornó la función
            return gson.toJson(new ResponseDTO(result));
        }catch(Exception e){
            System.out.println("[-] Error al insertar usuario: "+e);
            e.printStackTrace();
        }finally{
            //Se cierran los recursos
            Pool.close(conn);
            Pool.close(cs);
        }
        return null;
    }
    
    /**
     * Este método elimina los usuarios
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @param user el usuario a insertar
     * @return retorna el estado de la eliminación
     */
    @Override
    public String updateUser(User user) {
        //variables de conexión
        Connection conn=null;
        PreparedStatement ps=null;
        Gson gson=new Gson();

        try{
            conn=Pool.getConnection();
            ps=conn.prepareStatement("DELETE FROM users WHERE id_user=?");
            ps.setInt(1, user.getId());
            //Si no se reportan errores se retorna un objeto json de estado true
            return(ps.executeUpdate()!=1)?
                gson.toJson(new ResponseDTO(false)):gson.toJson(new ResponseDTO(true));
        }catch(Exception e){
            System.out.println("[-] Error al actualizar información: "+e);
            e.printStackTrace();
        }finally{
            Pool.close(conn);
            Pool.close(ps);
        }
        return null;
    }
}