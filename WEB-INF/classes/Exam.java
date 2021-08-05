/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zk.bean;

/**
 *
 * @author Admin
 */
public class Exam {
    
    int id;
    int Studentid;
    String branch;
    String department;
    String year;
    String subject;
    String marks;
    String status;

   public Exam(){
       
   }
    public Exam(int id, int Studentid, String branch, String department, String year, String subject, String marks, String status) {
        this.id = id;
        this.Studentid = Studentid;
        this.branch = branch;
        this.department = department;
        this.year = year;
        this.subject = subject;
        this.marks = marks;
        this.status = status;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStudentid() {
        return Studentid;
    }

    public void setStudentid(int Studentid) {
        this.Studentid = Studentid;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMarks() {
        return marks;
    }

    public void setMarks(String marks) {
        this.marks = marks;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Marks{" + "id=" + id + ", Studentid=" + Studentid + ", branch=" + branch + ", department=" + department + ", year=" + year + ", subject=" + subject + ", marks=" + marks + ", status=" + status + '}';
    }
    
    
}
