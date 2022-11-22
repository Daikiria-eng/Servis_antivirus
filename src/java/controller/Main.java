package controller;

import dto.StatsDTO;
import dto.User;
import manager.Manager;
import manager.impl.Managerimpl;
import util.Util;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 *Este servelet es principal, y se bifurca para el resto de servlets
 *ya que es una aplicación monolítica
 *
 * @author enikyasta
 */
@WebServlet(name = "Main", urlPatterns = {"/ppal"})
public class Main extends HttpServlet {

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
     * Aquí se recibe las interacciones del usuario,
     * y se remiten las peticiones respectivamente
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

        try(PrintWriter out=response.getWriter()){

            Manager manager=new Managerimpl();

            String accion=request.getParameter("accion");
            switch(accion){
                case "sign_up":{
                    User user=new User(
                        request.getParameter("fullName"),
                        request.getParameter("email"),
                        Util.getSHA(
                            request.getParameter("password")
                        )
                    );
                    String responseManager=manager.insertUser(user);
                    if(responseManager!=null)
                        response.sendRedirect("index.jsp");
                    else
                        response.sendRedirect("Registrarse.jsp?ErrorMsg=Error+al+Registrarse");
                    break;
                }case "log_in":{
                    User user=new User(
                        request.getParameter("email"),
                        Util.getSHA(
                            request.getParameter("password")
                        )
                    );
                    String responseManager=manager.validateUser(user);
                    if(responseManager.equals("null")){
                        response.sendRedirect(request.getContextPath()+"/Iniciar.jsp?ErrorMsg=Error+al+Iniciar");
                    }else
                        response.sendRedirect("index.jsp");
                    break;
                }case "stats":{
                    StatsDTO[] statsArray=manager.getStats().toArray();
                    out.println("[+] Alright: "+statsArray[0].getModuleName());
                    break;
                }
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
