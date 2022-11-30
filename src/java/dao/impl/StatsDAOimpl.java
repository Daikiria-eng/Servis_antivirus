package dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Calendar;
import java.sql.Date;
import com.google.gson.Gson;
import dao.StatsDAO;
import dto.ModulesDTO;
import dto.StatsDTO;
import dto.ResponseDTO;
import java.sql.CallableStatement;
import java.sql.JDBCType;
import java.sql.SQLException;
import java.sql.Types;
import list.StatList;
import pool.Pool;

/**
 *
 *Esta es la clase de implementación del acceso al objeto de estadísticas
 *
 *@author enikyasta
 */
public class StatsDAOimpl implements StatsDAO{
    Gson gson=new Gson();

    /**
     * Este método trae todas las estadísticas de los módulos
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @return retorna una lista de las estadísticas
     */
    @Override
    public String getStats(){
        String select_stats="SELECT * FROM stadistics";
        String result="[";
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;

        try{
            conn=Pool.getConnection();
            st=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs=st.executeQuery(select_stats);
            rs.last();
            int rows=rs.getRow(),
                i=1;
            rs.first();
            while(rs.next()){
                result+=gson.toJson(new StatsDTO(
                   rs.getInt("id_user"),
                   rs.getString("module"),
                   rs.getString("date_count")
                ));
                i++;
                if(i<rows)
                    result+=",";
            }
            return (result+="]");
        }catch(Exception e){
            System.out.println("[-] Error al traer estadísticas: "+e);
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Este método inserta el dato estadístico generado por el usuario
     * 
      e puede haber errores al conectarse a la base
     *@param stat Objeto de estadística que esrá insertada
     *@return objeto de estado de la inserción
     */
    public String insertStat(StatsDTO stat){
        String insert_stat_call="{ ? = call insert_stat(?,?,?) }";
        Connection conn=null;
        CallableStatement cs=null;

        try{
            /*String[] splitedStatDate=stat.getDate().split("-");
            Calendar calendar=Calendar.getInstance();
            calendar.set(Calendar.YEAR, Integer.valueOf(splitedStatDate[0]));
            calendar.set(Calendar.MONTH,Integer.valueOf(splitedStatDate[1]));
            calendar.set(Calendar.DAY_OF_MONTH,Integer.valueOf(splitedStatDate[2]));
            Date date=new Date(calendar.getTime().getTime());*/
            conn=Pool.getConnection();
            cs=conn.prepareCall(insert_stat_call);
            cs.registerOutParameter(1,Types.BOOLEAN);
            cs.setInt(2,stat.getIdUser());
            cs.setString(3,stat.getModuleName());
            cs.setString(4, stat.getDate());
            cs.execute();
            boolean result=cs.getBoolean(1);

            return (result)?
                gson.toJson(new ResponseDTO(result)):gson.toJson(new ResponseDTO(result));
        }catch(Exception e){
            System.out.println("[-] Error al insertar stat: "+e);
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public String getStatsByModule(ModulesDTO module,int month){
        String call_stats_by_module="{ ? = CALL count_one_stat(?,?) }";
        Connection conn=null;
        CallableStatement cs=null;
        try{
            conn=Pool.getConnection();
            cs=conn.prepareCall(call_stats_by_module);
            cs.registerOutParameter(1, Types.INTEGER);
            cs.setString(2,module.getModuleName());
            cs.setInt(3, month);
            cs.executeUpdate();
            module.setCount(cs.getInt(1));

            return gson.toJson(module);
        }catch(Exception e){
            System.out.println("[-] Error al traer estadísticas por módulo: "+e);
            e.printStackTrace();
        }finally{
            Pool.close(conn);
            Pool.close(cs);
        }

        return null;
    }

    /*public static void main(String[] args) {
        StatsDAOimpl st=new StatsDAOimpl();
        String jsonObject=st.getStats();
        StatList list=new StatList();
        for(int i=0;i<jsonObject.length();i++){
            String temp=""+jsonObject.charAt(i),
                extractedObject="";
            if(temp.equals("{")){
                extractedObject+=temp;
                for(int j=i+1;j<jsonObject.length();j++){
                    temp=""+jsonObject.charAt(j);
                    extractedObject+=temp;
                    if(temp.equals("}")){
                        i=j;
                        list.fillStats(extractedObject);
                        extractedObject="";
                        break;
                    }
                }
            }
        }
        list.printList();
    }*/
}
