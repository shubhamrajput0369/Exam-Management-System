/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zk.dao;
import com.zk.bean.Login;
import com.zk.bean.Exam;
import com.zk.bean.Fees;
import com.zk.bean.SAttendance;
import com.zk.bean.Student;
import com.zk.bean.TAttendance;
import com.zk.bean.Teacher;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class AdminServices {
    
      private static  DBConnect dBConnect = new DBConnect();
      
       public static boolean checkLogin(String uname, String password)
       {
       	System.out.print("\n\t Inside checkLogin function of AdminServices");
        return dBConnect.checkLogin(uname, password);
       }
    public static boolean addStudent(Student student)
    {
        return dBConnect.addStudent(student);
               
    }
    public static boolean addTeacher(Teacher teacher)
    {
        return dBConnect.addTeacher(teacher);
               
    }
    
     public static boolean addSAttendance(SAttendance sattendance)
    {
        return dBConnect.addSAttendance(sattendance);
               
    }
     public static boolean addTAttendance(TAttendance tattendance)
    {
        return dBConnect.addTAttendance(tattendance);
               
    }
     
     public static boolean addExam(Exam exam)
    {
        return dBConnect.addExam(exam);
               
    }
      public static boolean addFees(Fees fees)
    {
        return dBConnect.addFees(fees);
               
    }
     
     
    public static ArrayList<Student> getAllStudents(){
        return dBConnect.getAllStudent();
    }
    
    public static ArrayList<Teacher> getAllTeachers(){
        return dBConnect.getAllTeacher();
    }
}
