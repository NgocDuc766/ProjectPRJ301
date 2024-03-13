/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
import java.sql.Date;
import java.util.*;

public class AttendanceDAO extends MyDAO {

    public List<Attendance> getAttendanceOfASlot(String start, Date date) {
        List<Attendance> lst = new ArrayList<>();

        xSql = "select st.sId, st.lastName, st.MiddleName, st.FirstName, s.scheduleId , st.classId, a.status\n"
                + "from Schedule s join Attendance a on s.scheduleID = a.scheduleId\n"
                + "join Student st on a.sID = st.sId\n"
                + "where s.StartTime = ? and s.Date like ?\n"
                + "Order by st.sId";

        Attendance a;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, start);
            ps.setDate(2, date);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Attendance(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7));
                lst.add(a);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }

    public Attendance getStatusOfSpecificStu(String sId, int scheduleId) {
        xSql = "select st.sId, st.lastName, st.MiddleName, st.FirstName, a.scheduleId, st.classId, a.status\n"
                + "from Attendance a join Student st on a.sID = st.sId\n"
                + "where scheduleId = ? and st.sID = ?";
        Attendance a = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, scheduleId);
            ps.setString(2, sId);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Attendance(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (a);
    }
}
