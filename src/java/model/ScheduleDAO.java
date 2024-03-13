/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
import java.util.List;
import java.util.ArrayList;
import java.sql.Date;

public class ScheduleDAO extends MyDAO {

    public List<Schedule> getListScheduleByStudentId(String id) {
        List<Schedule> list = new ArrayList<>();
        Schedule s;
        xSql = "select s.scheduleID, s.room, s.date, format(s.StartTime, N'hh\\:mm') as [start] , FORMAT(s.EndTime, N'hh\\:mm') as [end], s.subID, s.classID\n"
                + "from Schedule s join Class c on s.classID = c.classID\n"
                + "join Student st on c.classID = st.classId\n"
                + "where st.sId = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                s = new Schedule(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                list.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return (list);
    }

    public Schedule getScheduleById(int id) {
        Schedule s = null;
        xSql = "select s.scheduleID, s.room, s.date, format(s.StartTime, N'hh\\:mm') as [start] , FORMAT(s.EndTime, N'hh\\:mm') as [end], s.subID, s.classID\n"
                + "from Schedule s \n"
                + "where s.scheduleID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                s = new Schedule(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;
    }

    public List<Schedule> getScheduleOfATeacher(String teacherId) {
        List<Schedule> lst = new ArrayList<>();
        Schedule s;
        xSql = "select distinct s.scheduleID, s.room, s.date, format(s.StartTime, N'hh\\:mm') as [start] , FORMAT(s.EndTime, N'hh\\:mm') as [end], s.subID, s.classID\n"
                + "from Schedule s join Subject c on s.subID = c.subID\n"
                + "join teach te on te.subID = c.subID\n"
                + "where te.tID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, teacherId);
            rs = ps.executeQuery();
            while (rs.next()) {
                s = new Schedule(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                lst.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return (lst);

    }

    // lấy toàn bộ lịch của 1 lớp cụ thể
    public List<Schedule> getAllScheduleOfAnClass(String classId) {
        xSql = "select s.scheduleID, s.room, s.date, format(s.StartTime, N'hh\\:mm') as [start] , FORMAT(s.EndTime, N'hh\\:mm') as [end], s.subID, s.classID\n"
                + "from Schedule s \n"
                + "where s.classId = ?";
        List<Schedule> lst = new ArrayList<>();
        Schedule s;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, classId);
            rs = ps.executeQuery();
            while (rs.next()) {
                s = new Schedule(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                lst.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return (lst);

    }

    public void insertNewSchedule(String room, Date date, String startTime, String endTime, String classId, String subId) {

        xSql = "insert into Schedule(Room, [Date], StartTime, EndTime, classID, subID)\n"
                + "values(?,?,?,?,?,?)";
        
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, room);
            ps.setDate(2, date);
            ps.setString(3, startTime);
            ps.setString(4, endTime);
            ps.setString(5, classId);
            ps.setString(6, subId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deleteSchedule(int scheduleId){
        xSql = "delete from Schedule where scheduleId = ?";
        
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
