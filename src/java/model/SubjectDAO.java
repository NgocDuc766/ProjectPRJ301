/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class SubjectDAO extends MyDAO {

    public Subject getSubjectByScheduleID(int id) {
        Subject s = null;
        xSql = "select sub.*\n"
                + "from Schedule s join Subject sub on s.subID = sub.subID\n"
                + "where s.scheduleID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                s = new Subject(rs.getString(1),
                        rs.getString(2));  
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;
    }
    
    public Subject searchSubject(String subId){
        xSql = "select * from Subject where subID = ?";
        Subject sub = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, subId);
            rs = ps.executeQuery();
            while(rs.next()){
                sub = new Subject(rs.getString(1),
                        rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sub;
    }
}
