/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Attend {
    private int id;
    private String sId;
    private int scheduleId;
    private int status;

    public Attend() {
    }

    public Attend(int id, String sId, int scheduleId, int status) {
        this.id = id;
        this.sId = sId;
        this.scheduleId = scheduleId;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

    public int getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(int scheduleId) {
        this.scheduleId = scheduleId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Attend{" + "id=" + id + ", sId=" + sId + ", scheduleId=" + scheduleId + ", status=" + status + '}';
    }
       
    
}
