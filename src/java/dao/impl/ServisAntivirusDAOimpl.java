package dao.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;
import com.google.gson.Gson;
import dao.ServisAntivirusDAO;
import dto.RequestDTO;
import dto.User;
import list.StatList;

/**
 *
 *Esta es la clase de implementación de el acceso a servis_antivirus
 *
 *@author enikyasta
 */
public class ServisAntivirusDAOimpl implements ServisAntivirusDAO{
    Gson gson=new Gson();

    @Override
    public String insertUser(User user){
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
                url_conn=new URL(url_string);
                conn=(HttpURLConnection) url_conn.openConnection();
                conn.setRequestMethod("POST");
                conn.setDoInput(true);
                conn.setDoOutput(true);
                conn.setRequestProperty("Content-Type", "Application/json; charset=utf-8");

                conn.connect();

                PrintStream ps=new PrintStream(conn.getOutputStream());
                ps.print(json_data);
                ps.close();
                if(conn.getResponseCode()!=200)
                    System.out.println("[X] Error handling");

                reader=new InputStreamReader(conn.getInputStream());
                br=new BufferedReader(reader);
                StringBuilder sb=new StringBuilder();
                String temp="";
                while((temp=br.readLine())!=null)
                    sb.append(temp);

                return sb.toString();
            }catch(IOException ioe){
                System.out.println("[-] Error al hacer post de usuario: "+ioe);
                ioe.printStackTrace();
            }
        }catch(Exception e){
            System.out.println("[-] Error al insertar usuario: "+e);
            e.printStackTrace();
        }finally{
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

    @Override
    public String validateUser(User user){
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

            PrintStream ps=new PrintStream(conn.getOutputStream());
            ps.print(json_data);
            ps.close();
            if(conn.getResponseCode()!=200)
                System.out.println("[X] Error handling");

            reader=new InputStreamReader(conn.getInputStream());
            br=new BufferedReader(reader);
            sb=new StringBuilder();
            String temp="";
            while((temp=br.readLine())!=null)
                sb.append(temp);

            return sb.toString();
        }catch(Exception e){
            System.out.println("[-] Error a l enviar usuario: "+e);
            e.printStackTrace();
        }finally{
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
}
