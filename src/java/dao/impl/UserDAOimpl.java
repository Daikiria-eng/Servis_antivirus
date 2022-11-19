package dao.impl;

import com.google.gson.Gson;
import dao.UserDAO;
import dto.User;
import dto.ResponseDTO;
import pool.Pool;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDAOimpl implements UserDAO{
    @Override
    public String insertUser(User user){
        Connection conn=null;
        PreparedStatement pst=null;

        try{
            Gson gson=new Gson();
            String insertIt="INSERT INTO users (fullname,email,password) values(?,?,?)";
            conn=Pool.getConnection();
            pst=conn.prepareStatement(insertIt);
            pst.setString(1,user.getFullName());
            pst.setString(2,user.getEmail());
            pst.setString(3,user.getPassword());
            boolean rows=pst.executeUpdate()==1;
            
            System.out.println("[+] Ejecturadoo: "+insertIt);
            
            if(!rows) System.out.println("[-] Error insertar usuario");
            return (rows)?
                gson.toJson(new ResponseDTO(true)):gson.toJson(new ResponseDTO(false));
        }catch(Exception e){
            System.out.println("[+] Error al insertar usuario: "+e);
            e.printStackTrace();
        }finally{
            Pool.close(pst);
            Pool.close(conn);
        }

        return null;
    }

    @Override
    public String validateUser(User user){
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        User userResponse=new User();

        try{
            String select_query="SELECT id_user,fullname,email FROM users WHERE email='"+user.getEmail()+"' AND password='"+user.getPassword()+"'";
            Gson gson=new Gson();
            conn=Pool.getConnection();
            st=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs=st.executeQuery(select_query);
            rs.first();
            int row=rs.getRow();
            
            System.out.printf("[+] Query: %s\n\t[+] Row: %d\n",select_query,row);

            if(row==1){
                userResponse.setId(rs.getInt("id_user"));
                userResponse.setFullName(rs.getString("fullname"));
                userResponse.setEmail(rs.getString("email"));
                return gson.toJson(userResponse);
            }else return null;
        }catch(Exception e){
            System.out.println("[-] Error al validar usuario: "+e);
            e.printStackTrace();
        }finally{
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
}