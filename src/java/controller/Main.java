package controller;

import dto.StatsDTO;
import dto.User;
import manager.Manager;
import manager.impl.Managerimpl;
import util.Util;
import java.io.IOException;
import java.io.PrintWriter;
import com.google.gson.Gson;
import java.sql.Date;
import java.util.Calendar;
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
            Gson gson=new Gson();
            
            Calendar calendar=null;

            //El parámetro de acción determina lo que se hará con los datos
            String accion=request.getParameter("accion");
            switch(accion){
                //caso de registro
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
                        response.sendRedirect("Iniciar.jsp?Msg=Registro+exitoso!");
                    else
                        response.sendRedirect("Registrarse.jsp?Msg=Error+al+Registrarse");
                    break;
                //caso de inicio de sesión
                }case "log_in":{
                    User user=new User(
                        request.getParameter("email"),
                        Util.getSHA(
                            request.getParameter("password")
                        )
                    );
                    String responseManager=manager.validateUser(user);
                    System.out.println("[*] ResponseManager= "+responseManager);
                    if(responseManager.equals("null")){
                        response.sendRedirect(request.getContextPath()+"/Iniciar.jsp?Msg=Error+al+Iniciar");
                    }else{
                        calendar=Calendar.getInstance();
                        Date date=new Date(calendar.getTime().getTime());
                        request.getSession().setAttribute("userObject",gson.fromJson(responseManager,User.class));
                        request.getSession().setAttribute("date",date.toString());
                        response.sendRedirect("index.jsp");
                    }
                    break;
                //Caso de las estadísticas
                }case "stats":{
                    StatsDTO[] statsArray=manager.getStats().toArray();
                    request.getSession().setAttribute("StatsArray", statsArray);
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
