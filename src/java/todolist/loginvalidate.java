/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todolist;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

/**
 *
 * @author 1406425
 */
public class loginvalidate extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String p = request.getParameter("email");
        String z = request.getParameter("pswd");
        String enc = DatatypeConverter.printBase64Binary(z.getBytes());
        String q =   "select * from login where email='"+p+"' and password='"+enc+"';";
        out.print(q);
        ResultSet rs = Daolayer.selectData(q);
        try{
            if(rs.next()){
                //VALID USER
                 HttpSession s = request.getSession();
                String sa = rs.getString(5);
                String name = rs.getString(2);
                String no = rs.getString(6);
                s.setAttribute("id",name);
                s.setAttribute("usrnme",no);
        if(sa.equals("user"))
        {       
            RequestDispatcher rd = request.getRequestDispatcher("homepage.jsp");
            rd.forward(request, response);
               }
        else{
                //INVALID USER
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
           out.println("<h1>Invalid UserID Or Password</h1>");   
             }
           }
        }
            catch(Exception e){
            out.print("ERROR"+e.getMessage());
           }
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
