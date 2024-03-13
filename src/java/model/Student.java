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
public class Student {
    private String id;
    private String lastName, midName, firstName;
    private int gender;
    private Date dob;
    private String classId;
    private int accId;

    public Student() {
    }

    public Student(String id, String lastName, String midName, String firstName, int gender, Date dob, String classId, int accId) {
        this.id = id;
        this.lastName = lastName;
        this.midName = midName;
        this.firstName = firstName;
        this.gender = gender;
        this.dob = dob;
        this.classId = classId;
        this.accId = accId;
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

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", lastName=" + lastName + ", midName=" + midName + ", firstName=" + firstName + ", gender=" + gender + ", dob=" + dob + ", classId=" + classId + ", accId=" + accId + '}';
    }
    
    
}
