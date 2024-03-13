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
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import model.*;

/**
 *
 * @author ADMIN
 */
public class UpdateProfileStudent extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
        StudentDAO u = new StudentDAO();
        int id = (int) session.getAttribute("id");
        Student s = u.getPersonalInfoByAccountId(id);
        
        String xLast, xMid, xFirst, xDob, xGender;
        xLast = request.getParameter("last");
        xMid = request.getParameter("mid");
        xFirst = request.getParameter("first");
        xDob = request.getParameter("dob");
        xGender = (String) request.getParameter("gender");       
        int sGender;
        Date sDob = Date.valueOf(xDob);
        if(!xGender.equals("male")){
            sGender = 1;
        }else{
            sGender = 0;
        }
        Student x = new Student(s.getId(), xLast, xMid, xFirst, sGender, sDob, s.getClassId(), s.getAccId());
        
        u.UpdateStudentInfo(s.getId(), x);
        Student p = u.getPersonalInfoByAccountId(id);
        
        session.setAttribute("info", p);
        request.getRequestDispatcher("profileView.jsp").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
