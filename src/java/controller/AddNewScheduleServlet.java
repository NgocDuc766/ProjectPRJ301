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
import model.*;
import java.util.*;
import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class AddNewScheduleServlet extends HttpServlet {
   
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
        
        String classId = request.getParameter("classId");
        
        ScheduleDAO s = new ScheduleDAO();
        
        List<Schedule> lst = s.getAllScheduleOfAnClass(classId);
        
        request.setAttribute("lst", lst);
        
        request.getRequestDispatcher("timetable.jsp").forward(request, response);
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
        PrintWriter out = response.getWriter();
        // lấy biến từ timetable.jsp về
        String msg = "";
        String xRoom = request.getParameter("room");
        String xDate = request.getParameter("date");
        String xStart = request.getParameter("start");
        String xEnd = request.getParameter("end");
        String xClass = request.getParameter("class");
        String xSub = request.getParameter("subject");
        String xTeacher = request.getParameter("teacher");
        
        java.sql.Date sDate = java.sql.Date.valueOf(xDate);
        
        // khai báo những class DAO
        AttendDAO at = new AttendDAO();
        TeachDAO teach = new TeachDAO();
        ScheduleDAO sche = new ScheduleDAO();
        ClassDAO cl = new ClassDAO();
        TeacherDAO t = new TeacherDAO();
        SubjectDAO s = new SubjectDAO();
        StudentDAO u = new StudentDAO();
        Schedule x = new Schedule();
        Classes classes = cl.searchClass(xClass);
        Subject sub = s.searchSubject(xSub);
        Teacher teacher = t.searchTeacher(xTeacher);
        List<Classes> lst1 = cl.getAllClass();
        List<Student> stu = new ArrayList<>();
        
        if(classes == null){
            msg += "Class you've just typed in is invalid. ";
        }
        if(sub == null){
            msg += "Subject is invalid! ";
        }
        if(teacher == null){
            msg += "Teacher is invalid! ";
        }
        
        if(msg.length() > 0){
            request.setAttribute("lst1", lst1);
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("AddSchedule.jsp").forward(request, response);
        }else{
            
            teach.insertNewTeach(xTeacher, xClass, xSub);
            sche.insertNewSchedule(xRoom, sDate, xStart, xEnd, xClass, xSub);
            stu = u.getListStudentByClass(xClass);
            for (int i = 0; i < stu.size(); i++) {
                at.insertNewAttend(stu.get(i).getId(), xClass, sDate, xStart);
            }
            request.setAttribute("lst1", lst1);
            request.setAttribute("msg1", "Add new schedule successfully!");
            request.getRequestDispatcher("AddSchedule.jsp").forward(request, response);
        }
        
//        out.print(xDate);
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
