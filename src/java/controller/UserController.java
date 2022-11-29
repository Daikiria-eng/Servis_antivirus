package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import dao.UserDAO;
import dao.impl.UserDAOimpl;
import dto.RequestDTO;
import dto.User;

/**
 *
 * @author enikyasta
 */
@WebServlet(name = "UserController", urlPatterns = {"/User"})
public class UserController extends HttpServlet {

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
     * Este servelet actúa con el objeto de usuario, y retorna
     * según las interacciones del mismo
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
        PrintWriter out=response.getWriter();
        Gson gson=new Gson();
        UserDAO userDao=new UserDAOimpl();

        try{
            //Se toma la petición y se lee completa
            String requestString="";
            BufferedReader br=new BufferedReader(
                new InputStreamReader(request.getInputStream()
            ));
            String temp="";
            while((temp=br.readLine())!=null){
                requestString+=temp; 
            }
            RequestDTO userRequest=gson.fromJson(requestString, RequestDTO.class);
            User builtUser=gson.fromJson(requestString, User.class);

            System.out.printf("[+] UserController action: %s",userRequest.getAction());

            //Según el parámetro de acción se determina que se hará con los datos
            switch(userRequest.getAction()){
                //Caso de registro
                case "sign_in":{
                    out.println(userDao.insertUser(builtUser));
                    break;
                //Caso de inicio de sesión
                }case "log_in":{
                    out.println(userDao.validateUser(builtUser));
                    break;
                }
            }
        }catch(Exception e){
            System.out.println("[-] Error al responder");
            e.printStackTrace();
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
