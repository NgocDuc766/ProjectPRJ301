/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.ScheduleDAO;

/**
 *
 * @author ADMIN
 */
public class DetailActivityServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        // create DAO
        ScheduleDAO scd = new ScheduleDAO();
        SubjectDAO su = new SubjectDAO();
        TeachDAO t = new TeachDAO();
        AttendanceDAO at = new AttendanceDAO();
        // 
        Student s = (Student) session.getAttribute("info");

        // get ScheduleID from JSP
        String xId = request.getParameter("id");
        int sId = Integer.parseInt(xId);

        Schedule sche = scd.getScheduleById(sId);

        Subject subject = su.getSubjectByScheduleID(sId);

        Teach te = t.getTeachByScheduleID(sId);

        Attendance a = at.getStatusOfSpecificStu(s.getId(),sId);

        // set attribute and send to JSP
        request.setAttribute("ds", sche);
        request.setAttribute("dsub", subject);
        request.setAttribute("te", te);
        request.setAttribute("stat", a);

//        out.print(a);

        request.getRequestDispatcher("DetailActivity.jsp").forward(request, response);
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
