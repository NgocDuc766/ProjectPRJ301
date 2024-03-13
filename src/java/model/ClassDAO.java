/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.*;
/**
 *
 * @author ADMIN
 */
public class ClassDAO extends MyDAO {

    public Classes getClassByAccountId(int id) {
        xSql = "select c.*\n"
                + "from Class c join Student s on c.classID = s.classId\n"
                + "where s.accountId = ?";
        Classes c = null;
        try {
            ps = con.prepareCall(xSql);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
               c = new Classes(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c;
    }
    
    public List<Classes> getAllClass(){
        List<Classes> lst = new ArrayList<>();
        xSql = "select * from Class";
        Classes c;
        try {
            ps = con.prepareCall(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
               c = new Classes(rs.getString(1));
               lst.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }
    
    
    public Classes searchClass(String classId){
        xSql = "select * from Class where classID = ?";
        Classes c = null;
        
        try {
            ps = con.prepareCall(xSql);
            ps.setString(1,classId);
            rs = ps.executeQuery();
            while (rs.next()) {
               c = new Classes(rs.getString(1));
            }
        } catch (Exception e) {
        }
        return c;
    }
    
}
