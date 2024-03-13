/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class TeachDAO extends MyDAO {

    public Teach getTeachByScheduleID(int id) {
        Teach t = null;
        xSql = "select t.*\n"
                + "from Schedule s join Subject sub on s.subID = sub.subID\n"
                + "join teach t on sub.subID = t.subID\n"
                + "where s.scheduleID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                t = new Teach(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }

    public void insertNewTeach(String teacherId, String classId, String subId) {
        xSql = "insert into teach(tID,subID,classID)\n"
                + "values(?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, teacherId);
            ps.setString(2, subId);
            ps.setString(3, classId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deleteTeachByClassId(String classId, String subId){
       xSql = "delete from teach where subID = ? and classID = ?";
       try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, subId);
            ps.setString(2, classId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
