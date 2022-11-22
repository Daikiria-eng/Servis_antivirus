package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.StatsDAO;
import dao.impl.StatsDAOimpl;
import com.google.gson.Gson;
import dto.StatsDTO;
import java.io.InputStreamReader;
import dto.RequestStatsDTO;

/**
 *
 * Este servlet es el controlador de estadísticas
 *
 * @author enikyasta
 */
@WebServlet(name = "StatsController", urlPatterns = {"/Stats"})
public class StatsController extends HttpServlet {

    StatsDAO statsDao=new StatsDAOimpl();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * Aquí se retorna el el objeto de estadística
     *
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        Gson gson=new Gson();

        try ( PrintWriter out = response.getWriter()) {
            try{
                InputStreamReader reader=new InputStreamReader(request.getInputStream());
                BufferedReader br=new BufferedReader(reader);
                String temp="";
                RequestStatsDTO requestObject=null;
                if((temp=br.readLine())!=null)
                    requestObject=gson.fromJson(temp,RequestStatsDTO.class);

                switch(requestObject.getAction()){
                    case "insert":{
                        out.println(
                            statsDao.insertStat(gson.fromJson(temp, StatsDTO.class))
                        );
                        break;
                    }case "getAll":{
                        out.println(statsDao.getStats());
                        break;
                    }
                }
            }catch(IOException e){
                System.out.println("[-] Error al leer request: "+e);
                e.printStackTrace();
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}