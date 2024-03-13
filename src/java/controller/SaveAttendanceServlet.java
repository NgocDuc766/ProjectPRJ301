/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;
import model.Attend;
import model.AttendDAO;

/**
 *
 * @author ADMIN
 */
public class SaveAttendanceServlet extends HttpServlet {

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
        String sSche = request.getParameter("scheduleId");
        int xSche = Integer.parseInt(sSche);
        AttendDAO attend = new AttendDAO();

        List<Attend> a = attend.getAttendByScheduleId(xSche);

        String[] xStat = request.getParameterValues("selectedStudents");

        if (xStat == null) {
            for (int i = 0; i < a.size(); i++) {
                attend.updateAttend(0, a.get(i).getsId(), xSche);
            }
        } else {
            int[] stat = new int[a.size()];

            for (int i = 0; i < stat.length; i++) {
                stat[i] = 0;
            }

            for (int i = 0; i < a.size(); i++) {
                for (String xStat1 : xStat) {
                    if (a.get(i).getsId().equalsIgnoreCase(xStat1)) {
                        stat[i] = 1;
                    }
                }
            }
            for (int i = 0; i < a.size(); i++) {
                attend.updateAttend(stat[i], a.get(i).getsId(), xSche);
            }
        }
            response.sendRedirect("home.jsp");
        
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
