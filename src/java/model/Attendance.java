/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Attendance {
    private String id;
    private String lastName;
    private String midName, firstName;
    private int scheduleId;
    private String classId;
    private int status;

    public Attendance() {
    }

    public Attendance(String id, String lastName, String midName, String firstName, int scheduleId, String classId, int status) {
        this.id = id;
        this.lastName = lastName;
        this.midName = midName;
        this.firstName = firstName;
        this.scheduleId = scheduleId;
        this.classId = classId;
        this.status = status;
    }

   

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMidName() {
        return midName;
    }

    public void setMidName(String midName) {
        this.midName = midName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }
    
     public int getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(int scheduleId) {
        this.scheduleId = scheduleId;
    }

    @Override
    public String toString() {
        return "Attendance{" + "id=" + id + ", lastName=" + lastName + ", midName=" + midName + ", firstName=" + firstName + ", scheduleId=" + scheduleId + ", classId=" + classId + ", status=" + status + '}';
    }

  

   
    
    
}
