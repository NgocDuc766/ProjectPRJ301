/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.*;
import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class StudentDAO extends MyDAO {

    public Student getPersonalInfoByAccountId(int accId) {
        xSql = "select * from Student where accountId = ?";
        String id, last, mid, first;
        Date dob;
        Student x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, accId);
            rs = ps.executeQuery();
            while (rs.next()) {
                x = new Student(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getDate(6),
                        rs.getString(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public void UpdateStudentInfo(String sId, Student x) {
        xSql = "update Student\n"
                + "set LastName = ?, MiddleName = ?,  FirstName = ?, Gender = ?, DOB = ?\n"
                + "where sId = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, x.getLastName());
            ps.setString(2, x.getMidName());
            ps.setString(3, x.getFirstName());
            ps.setInt(4, x.getGender());
            ps.setDate(5, (Date) x.getDob());
            ps.setString(6, sId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Student> getListStudentByClass(String classID) {
        xSql = "select s.* \n"
                + "from Student s \n"
                + "where s.classId = ?"
                +" order by s.sId";
        List<Student> lst = new ArrayList<>();
        Student s;
        try{
            ps = con.prepareStatement(xSql);
            ps.setString(1, classID);
            rs = ps.executeQuery();
            while (rs.next()) {                
                s = new Student(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getInt(5), 
                        rs.getDate(6), 
                        rs.getString(7), 
                        rs.getInt(8));
                lst.add(s);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return (lst);
    }
    
}
