/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import com.oracle.wls.shaded.org.apache.bcel.generic.AALOAD;

/**
 *
 * @author ADMIN
 */
public class TeacherDAO extends MyDAO {

    public Teacher getTeacherInfoByAccountId(int id) {
        xSql = "select * from Teacher where accountId = ?";
        Teacher t = null;
        
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                t = new Teacher(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return (t);
    }
    
    
    public Teacher searchTeacher(String teacherId){
        xSql = "select * from Teacher where tID = ?";
        
        Teacher t = null;
        
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, teacherId);
            rs = ps.executeQuery();
            while(rs.next()){
                t = new Teacher(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }
    
}
