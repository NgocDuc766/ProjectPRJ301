/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Teacher {
    private String id;
    private String lastName, midName, firstName;
    private String email;
    private int accId;

    public Teacher() {
    }

    public Teacher(String id, String lastName, String midName, String firstName, String email, int accId) {
        this.id = id;
        this.lastName = lastName;
        this.midName = midName;
        this.firstName = firstName;
        this.email = email;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    @Override
    public String toString() {
        return "Teacher{" + "id=" + id + ", lastName=" + lastName + ", midName=" + midName + ", firstName=" + firstName + ", email=" + email + ", accId=" + accId + '}';
    }
    
    
}
