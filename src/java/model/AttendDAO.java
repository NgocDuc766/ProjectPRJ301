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
public class AttendDAO extends MyDAO {

    public List<Attend> getAttendByScheduleId(int scheduleId) {
        xSql = "select * \n"
                + "from Attendance a \n"
                + "where scheduleId = ?\n"
                + "Order by sId";
        List<Attend> lst = new ArrayList<>();
        Attend a;
        try {
            ps = con.prepareCall(xSql);
            ps.setInt(1, scheduleId);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Attend(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4));
                lst.add(a);
            }
        } catch (Exception e) {
        }
        return lst;
    }

    // trường hợp này đã biết scheduleId thông qua việc lấy Attendance qua ScheduleId bên trên
    public void updateAttend(int status, String sId, int scheduleId) {
        xSql = "update Attendance\n"
                + "set status = ?\n"
                + "where sID = ? and scheduleId = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, status);
            ps.setString(2, sId);
            ps.setInt(3, scheduleId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertNewAttend(String sID, String classId, Date date, String start) {
        xSql = "insert into Attendance(sID, scheduleId, status)\n"
                + "values(?, (select scheduleID\n"
                + "from Schedule where classID = ? and [Date] like ? and StartTime = ?), 2)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, sID);
            ps.setString(2, classId);
            ps.setDate(3, (java.sql.Date) date);
            ps.setString(4, start);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deteteAttendByScheduleId(int scheduleId){
        xSql = "delete from Attendance where scheduleId = ?";
        
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, scheduleId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
