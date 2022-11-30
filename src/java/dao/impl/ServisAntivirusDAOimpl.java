package dao.impl;

import dto.RequestStatsDTO;
import dto.ModulesDTO;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.sql.Date;
import java.net.HttpURLConnection;
import java.net.URL;
import com.google.gson.Gson;
import dao.ServisAntivirusDAO;
import dao.StatsDAO;
import dao.impl.StatsDAOimpl;
import dto.RequestDTO;
import dto.StatsDTO;
import dto.User;
import java.util.Calendar;
import list.StatList;

/**
 *
 *Esta es la clase de implementación de el acceso a servis_antivirus
 *
 *@author enikyasta
 */
public class ServisAntivirusDAOimpl implements ServisAntivirusDAO{
    Gson gson=new Gson();
    StatsDAO statsDao=new StatsDAOimpl();

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
        //Variables de conexión
        URL url_conn=null;
        HttpURLConnection conn=null;
        BufferedReader br=null;
        InputStreamReader reader=null;
        try{
            String url_string="http://127.0.0.1:8080/Servis-antivirus/User",
                json_data="";

            try{
                RequestDTO builtRequest=gson.fromJson(gson.toJson(user), RequestDTO.class);
                builtRequest.setAction("sign_in");
                json_data=gson.toJson(builtRequest);
                url_conn=new URL(url_string);
                conn=(HttpURLConnection) url_conn.openConnection();
                conn.setRequestMethod("POST");
                conn.setDoInput(true);
                conn.setDoOutput(true);
                conn.setRequestProperty("Content-Type", "Application/json; charset=utf-8");

                /**
                 *Se crea la conexión
                 */
                conn.connect();
                /** 
                 * Se realiza la petición
                 */
                PrintStream ps=new PrintStream(conn.getOutputStream());
                ps.print(json_data);
                ps.close();
                if(conn.getResponseCode()!=200)
                    System.out.println("[X] Error handling");

                /**
                 * Se lee la respuesta
                 */
                reader=new InputStreamReader(conn.getInputStream());
                br=new BufferedReader(reader);
                StringBuilder sb=new StringBuilder();
                String temp="";
                while((temp=br.readLine())!=null)
                    sb.append(temp);

                /**
                 * Se retorna la respuesta
                 */
                return sb.toString();
            }catch(IOException ioe){
                System.out.println("[-] Error al hacer post de usuario: "+ioe);
                ioe.printStackTrace();
            }
        }catch(Exception e){
            System.out.println("[-] Error al insertar usuario: "+e);
            e.printStackTrace();
        }finally{
            /**
             * Se cierran los recursos
             */
            try{
                reader.close();
                br.close();
            }catch(IOException e){
                System.out.println("[-] Error al cerrar: "+e);
                e.printStackTrace();
            }
            conn.disconnect();
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
        //Variables de conxión
        String url_string="http://127.0.0.1:8080/Servis-antivirus/User",
            json_data="";
        URL url_conn=null;
        HttpURLConnection conn=null;
        BufferedReader br=null;
        StringBuilder sb=null;
        InputStreamReader reader=null;
        try{
            RequestDTO builtRequest=gson.fromJson(gson.toJson(user), RequestDTO.class);
            builtRequest.setAction("log_in");
            json_data=gson.toJson(builtRequest);
            url_conn=new URL(url_string);
            conn=(HttpURLConnection) url_conn.openConnection();
            conn.setRequestMethod("POST");
            conn.setDoInput(true);
            conn.setDoOutput(true);
            conn.addRequestProperty("Content-Type", "Application/json; charset=utf-8");
            conn.connect();
            //Acá se inicializó la conexión

            //se envía la petición
            PrintStream ps=new PrintStream(conn.getOutputStream());
            ps.print(json_data);
            ps.close();
            if(conn.getResponseCode()!=200)
                System.out.println("[X] Error handling");

            //Se lee la respuesta
            reader=new InputStreamReader(conn.getInputStream());
            br=new BufferedReader(reader);
            sb=new StringBuilder();
            String temp="";
            while((temp=br.readLine())!=null)
                sb.append(temp);

            //Se retorna la respuesta
            return sb.toString();
        }catch(Exception e){
            System.out.println("[-] Error a l enviar usuario: "+e);
            e.printStackTrace();
        }finally{
            //Se cierran los recursos
            conn.disconnect();
            try{
                br.close();
                reader.close();
            }catch(IOException e){
                System.out.println("[-] Error al cerrar: "+e);
                e.printStackTrace();
            }
        }
        return null;
    }

    /**
     * Este método hace la validación de usuario para el inicio de sesión
     * Y realiza la conexión con el servlet aislado
     *
     *  e pueda haber un error al conectarse
     * @return retorna el estado de la validacion
     */
    @Override
    public StatList getStats() {
        String url_string="http://127.0.0.1:8080/Servis-antivirus/Stats",
            jsonObject="";

        URL url_conn=null;
        HttpURLConnection conn=null;
        BufferedReader br=null;
        InputStreamReader reader=null;
        try{
            url_conn=new URL(url_string);
            conn=(HttpURLConnection) url_conn.openConnection();
            conn.setRequestMethod("POST");
            conn.setDoInput(true);
            conn.setDoOutput(false);
            conn.connect();

            if(conn.getResponseCode()!=200)
                System.out.println("[X] Error handling");

            reader=new InputStreamReader(conn.getInputStream());
            br=new BufferedReader(reader);
            String temp="";
            while((temp=br.readLine())!=null)
                jsonObject+=temp;

            StatList list=new StatList();
            for(int i=0;i<jsonObject.length();i++){
                String tempJsonChar=""+jsonObject.charAt(i),
                    extractedObject="";
                if(tempJsonChar.equals("{")){
                    extractedObject+=tempJsonChar;
                    for(int j=i+1;j<jsonObject.length();j++){
                        tempJsonChar=""+jsonObject.charAt(j);
                        extractedObject+=tempJsonChar;
                        if(tempJsonChar.equals("}")){
                            i=j;
                            list.fillStats(extractedObject);
                            extractedObject="";
                            break;
                        }
                    }
                }
            }

            return list;
        }catch(Exception e){
            System.out.println("[+] Error al conectar con stats: "+e);
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public String insertStat(StatsDTO stat){
        String urlString="http://127.0.0.1:8080/Servis-antivirus/Stats";
        URL urlCon=null;
        HttpURLConnection conn=null;
        BufferedReader br=null;
        InputStreamReader reader=null;
        String result="";

        try{
            urlCon=new URL(urlString);
            conn=(HttpURLConnection) urlCon.openConnection();
            conn.setRequestMethod("POST");
            conn.setDoInput(true);
            conn.setDoOutput(true);
            conn.setRequestProperty("Content-Type", "Application/json; charset=utf-8");
            PrintStream ps=new PrintStream(conn.getOutputStream());
            RequestStatsDTO requestStat=gson.fromJson(gson.toJson(stat),RequestStatsDTO.class);
            requestStat.setAction("insert");
            ps.print(gson.toJson(requestStat));
            ps.close();
            if(conn.getResponseCode()!=200)
                System.out.println("[X] Error handling");

            reader=new InputStreamReader(conn.getInputStream());
            br=new BufferedReader(reader);
            String temp="";
            while((temp=br.readLine())!=null)
                result+=temp;

            return result;
        }catch (Exception e){
            System.out.println("[-] Error al hacer post de stat: "+e);
            e.printStackTrace();
        }finally{
            try{
                br.close();
                reader.close();
            }catch(Exception ioe){
                System.out.println("[-] Error al finalizar recursos: "+ioe);
                ioe.printStackTrace();
            }
        }

        return null;
    }

    @Override
    public ModulesDTO getStatsByModule(String module,int month){
        ModulesDTO moduleCount=new ModulesDTO(module);
        Calendar calendar=Calendar.getInstance();
        moduleCount=gson.fromJson(
            statsDao.getStatsByModule(moduleCount,month),
            ModulesDTO.class
        );

        return moduleCount;
    }
}
