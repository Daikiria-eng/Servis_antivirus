package dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Calendar;

import javax.persistence.Tuple;

import java.sql.Date;
import com.google.gson.Gson;
import dao.StatsDAO;
import dto.StatsDTO;
import dto.ResponseDTO;
import java.sql.PreparedStatement;
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

    public String insertStat(StatsDTO stat){
        String insert_stat_query="INSERT INTO stadistics values(?,?)";
        Connection conn=null;
        PreparedStatement ps=null;

        try{
            String[] splitedStatDate=stat.getDate().split("-");
            Calendar calendar=Calendar.getInstance();
            calendar.set(Calendar.YEAR, Integer.valueOf(splitedStatDate[0]));
            calendar.set(Calendar.MONTH,Integer.valueOf(splitedStatDate[1]));
            calendar.set(Calendar.DAY_OF_MONTH,Integer.valueOf(splitedStatDate[2]));
            Date date=new Date(calendar.getTime().getTime());
            conn=Pool.getConnection();
            ps=conn.prepareStatement(insert_stat_query);
            ps.setString(1,stat.getModuleName());
            ps.setDate(2, date);
            return(ps.executeUpdate()!=1)?
                gson.toJson(new ResponseDTO(false)):gson.toJson(new ResponseDTO(true));

        }catch(Exception e){
            System.out.println("[-] Error al insertar stat: "+e);
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
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
    }
}
