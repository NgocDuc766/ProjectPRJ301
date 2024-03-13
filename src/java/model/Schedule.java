/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;
/**
 *
 * @author ADMIN
 */
public class Schedule {
    private int id;
    private String room;
    private Date date;
    private String start;
    private String end;
    private String subId;
    private String classId;

    public Schedule() {
    }

    public Schedule(int id, String room, Date date, String start, String end, String subId, String classId) {
        this.id = id;
        this.room = room;
        this.date = date;
        this.start = start;
        this.end = end;
        this.subId = subId;
        this.classId = classId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public String getSubId() {
        return subId;
    }

    public void setSubId(String subId) {
        this.subId = subId;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    @Override
    public String toString() {
        return "Schedule{" + "id=" + id + ", room=" + room + ", date=" + date + ", start=" + start + ", end=" + end + ", subId=" + subId + ", classId=" + classId + '}';
    }
    
    
    
}
