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
import com.zk.controller.StudentC;
import com.zk.controller.LoginC;

import com.zk.dao.AdminServices;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Admin
 */
public class DBConnect {

    private static Connection connection = null;
    private static String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private static String DATABASE_NAME = "exam";
    private static String DB_URL = "jdbc:mysql://localhost:3306/"
            + DBConnect.DATABASE_NAME;
    private static String USER_NAME = "root";
    private static String PASSWORD = "root";

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName(DRIVER_NAME);
            con = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            return con;
        } catch (ClassNotFoundException cne) {
            System.out.println(cne);
        } catch (SQLException sqle) {
            System.out.println(sqle.toString());
        }
        return con;
    }

    public void closeConnection() {
        try {

            if (connection != null) {
                connection.close();
            }
        } catch (SQLException sqle) {
            System.out.println(sqle.toString());
        }
    }

    public boolean checkLogin(Login login) 
    	{
    		System.out.print("\n\t Inside checkLogin function of DBConnect ");
    		
        String SQL = "select uname,pass from user where uname='"
                + login.getUname() + "' and pass='" + login.getPassword()
                + "'";
        connection = getConnection();
        boolean result = Boolean.FALSE;
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                ResultSet rs = st.executeQuery(SQL);
                if (rs.next()) {
                    result = Boolean.TRUE;
                } else {
                    result = Boolean.FALSE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in checkLogin");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in checkLogin - " + sqle);
        }
        return result;
    }

    public boolean checkLogin(String userName, String password)
     {
     	System.out.print("\n\t Inside two argument checkLogin function of DBConnect ");
        String SQL = "select uname,pass from user where uname='"
                + userName + "' and pass='" + password
                + "'";
        connection = getConnection();
        boolean result = Boolean.FALSE;
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                ResultSet rs = st.executeQuery(SQL);
                if (rs.next()) {
                    result = Boolean.TRUE;
                } else {
                    result = Boolean.FALSE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in checkLogin");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in checkLogin - " + sqle);
        }
        return result;
    }

    public boolean addStudent(Student student) {
        String SQL = "insert into student(name, gender, dob, contact, email, address, branch, department, year, cast, sub_cast, admission_date, cl_date)"
                + " values( " + "'"
                + student.getName()
                + "',"
                + "'"
                + student.getGender()
                + "',"
                + "'"
                + student.getDob()
                + "',"
                + "'"
                + student.getContact()
                + "',"
                + "'"
                + student.getEmail()
                + "',"
                + "'"
                + student.getAddress()
                + "',"
                + "'"
                + student.getBranch()
                + "',"
                + "'"
                + student.getDepartment()
                + "',"
                + "'"
                + student.getYear()
                + "',"
                + "'"
                + student.getCast()
                + "',"
                + "'"
                + student.getSubCast()
                + "',"
                + "'"
                + student.getAdmissionDate()
                + "',"
                + "'"
                + student.getClDate()
                + "')";
        System.out.println("DBConnect : addStudent : SQL>> " + SQL);
        boolean result = Boolean.FALSE;
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                int update = st.executeUpdate(SQL);
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in registerUser");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in registerUser - " + sqle);
        }
        return result;

    }

    public boolean addTeacher(Teacher teacher) {
        String SQL = "insert into teacher(name, gender, dob, contact_no, email, address, qualification, subject, jdate)"
                + " values( " + "'"
                + teacher.getName()
                + "',"
                + "'"
                + teacher.getGender()
                + "',"
                + "'"
                + teacher.getDob()
                + "',"
                + "'"
                + teacher.getContact()
                + "',"
                + "'"
                + teacher.getEmail()
                + "',"
                + "'"
                + teacher.getAddress()
                + "',"
                + "'"
                + teacher.getQualification()
                + "',"
                + "'"
                + teacher.getSubject()
                + "',"
                + "'"
                + teacher.getJdate()
                + "')";
        boolean result = Boolean.FALSE;
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                int update = st.executeUpdate(SQL);
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in registerUser");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in registerUser - " + sqle);
        }
        return result;
    }

    
    
    
    
    
        public boolean addSAttendance(SAttendance sattendence) {
             System.out.println("In ADD SAtendance Function");
             String SQL="insert into s_attendance values(?,?,?,?)";
             boolean result =Boolean.FALSE;
             connection=getConnection();
             try{
                 if (connection != null) {
                PreparedStatement st = connection.prepareStatement(SQL);
                st.setInt(1,sattendence.getId());
                st.setInt(2, sattendence.getSid());
                st.setString(3,sattendence.getAttdate());
                st.setString(4,sattendence.getStatus());
                int update = st.executeUpdate();
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in registerUser");
            }
                 
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
        /*String SQL = "insert into s_attendance(id,student_id,att_date, status)"
                + " values( " + " "
                + sattendence.getId()
                + ","
                + sattendence.getSid()
                + ","
                + "'"
                + sattendence.getAttdate()
                + "',"
                + "'"
                + sattendence.getStatus()
                + "')";
        boolean result = Boolean.FALSE;
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                int update = st.executeUpdate(SQL);
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in registerUser");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in registerUser - " + sqle);
        }*/
        return result;
    }

    
     public boolean addTAttendance(TAttendance tattendence) {
        String SQL = "insert into t_attendance(id,teacher_id,att_date, status)"
                 + " values( " + " "
                + tattendence.getId()
                + ","
                + tattendence.getTid()
                + ","
                + "'"
                + tattendence.getAttdate()
                + "',"
                + "'"
                + tattendence.getStatus()
                + "')";
        boolean result = Boolean.FALSE;
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                int update = st.executeUpdate(SQL);
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in registerUser");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in registerUser - " + sqle);
        }
        return result;
    }

    
     public boolean addExam(Exam exam) {
        String SQL = "insert into exam(id,student_id,branch,department,year,marks,subject, status)"
                 + " values( " + " "
                + exam.getId()
                + ","
                + exam.getStudentid()
                + ","
                + "'"
                + exam.getBranch()
                + "',"
                + "'"
                + exam.getDepartment()
                + "',"
                + "'"
                + exam.getYear()
                + "',"
                + "'"
                + exam.getMarks()
                + "',"
                + "'"
                + exam.getSubject()
                + "',"
                + "'"
                + exam.getStatus()
                + "')";
        boolean result = Boolean.FALSE;
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                int update = st.executeUpdate(SQL);
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in registerUser");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in registerUser - " + sqle);
        }
        return result;
    }

    
     public boolean addFees(Fees fees) {
        String SQL = "insert into exam(id,student_id,branch,department,year,marks,subject, status)"
                 + " values( " + " "
                + fees.getId()
                + ","
                + fees.getStudentid()
                + ","
                + "'"
                + fees.getBranch()
                + "',"
                + "'"
                + fees.getDepartment()
                + "',"
                + "'"
                + fees.getYear()
                + "',"
                + "'"
                + fees.getFees()
                + "',"
                + "'"
                + fees.getStatus()
                + "')";
        boolean result = Boolean.FALSE;
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                int update = st.executeUpdate(SQL);
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in registerUser");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in registerUser - " + sqle);
        }
        return result;
    }

    
    
    public boolean updateStudent(Student student) {
        String SQL = "UPDATE set SET  name= '" + student.getName()
                + "', gender='" + student.getGender()
                + "', dob='" + student.getDob()
                + "', contact_no='" + student.getContact()
                + "', email='" + student.getEmail()
                + "', address='" + student.getAddress()
                + "', branch='" + student.getBranch()
                + "', department='" + student.getDepartment()
                + "', year='" + student.getYear()
                + "', cast='" + student.getSubCast()
                + "', sub_cast='" + student.getSubCast()
                + "', admission-date='" + student.getAdmissionDate()
                + "', cl_date='" + student.getClDate()
                + " WHERE id=" + student.getId();
        boolean result = Boolean.FALSE;
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                int update = st.executeUpdate(SQL);
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in updateUser");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in updateUser - " + sqle);
        }
        return result;
    }

    public boolean updateTeacher(Teacher teacher) {
        String SQL = "UPDATE set SET  name= '" + teacher.getName()
                + "', gender='" + teacher.getGender()
                + "', dob='" + teacher.getDob()
                + "', contact='" + teacher.getContact()
                + "', email='" + teacher.getEmail()
                + "', address='" + teacher.getAddress()
                + "', branch='" + teacher.getQualification()
                + "', department='" + teacher.getJdate()
                + "', cast='" + teacher.getSubject()
                + "', sub_cast='" + teacher.getIsActive()
                + " WHERE id=" + teacher.getId();
        boolean result = Boolean.FALSE;
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                int update = st.executeUpdate(SQL);
                if (update > 0) {
                    result = Boolean.TRUE;
                }
                closeConnection();
            } else {
                System.out.println("Connection is null in updateUser");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in updateUser - " + sqle);
        }
        return result;
    }

    public ArrayList<Student> getAllStudent() {
        ArrayList<Student> student = new ArrayList<Student>();
        String SQL = "select * from student";
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                ResultSet rs = st.executeQuery(SQL);
                while (rs.next()) {
                   Student s= new Student(rs.getInt("id"),
                                rs.getString("name"),
                            rs.getString("name"), 
                            rs.getString("gender"), 
                            rs.getString("dob"), 
                            rs.getString("contact"),
                            rs.getString("email"),
                            rs.getString("address"), 
                            rs.getString("branch"),
                            rs.getString("department"), 
                            rs.getString("cast"), 
                            rs.getString("sub_cast"));
                            
                    student.add(s);

                }
                closeConnection();
            } else {
                System.out.println("Connection is null in getAllUsers");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in getAllUsers - " + sqle);
        }
        return student;
    }

    public ArrayList<Teacher> getAllTeacher() {
        ArrayList<Teacher> teacher = new ArrayList<Teacher>();
        String SQL = "select * from teacher";
        connection = getConnection();
        try {
            if (connection != null) {
                Statement st = connection.createStatement();
                ResultSet rs = st.executeQuery(SQL);
                while (rs.next()) {
                   Teacher t= new Teacher(rs.getInt("id"),
                                
                            rs.getString("name"), 
                            rs.getString("gender"), 
                            rs.getString("qualification"),  
                            rs.getString("dob"), 
                            rs.getString("subject"),
                           rs.getString("contact_no"),
                            rs.getString("email"),
                            rs.getString("address"), 
                           
                            rs.getString("jdate"));
                            
                    teacher.add(t);

                }
                closeConnection();
            } else {
                System.out.println("Connection is null in getAllUsers");
            }
        } catch (SQLException sqle) {
            System.out.println("sqle in getAllUsers - " + sqle);
        }
        return teacher;
    }
    
    public static void main(String args[]) {
        DBConnect dBConnect = new DBConnect();

        /*
         Exam exam = new Exam();
         exam.setId(1);
         exam.setStudentid("1");
         exam.setBranch("CSE");
         exam.setDepartment("CSE");
         exam.setYear("2015");
         exam.setMarks("250");
         exam.setSubject("maths");
         
         exam.setStatus("PRESENT");
           
         if(dBConnect.addExam(exam)){
         System.out.println("Exam added");
         }
         else
         {
         System.out.println("Not");
         }
 
        */
        /* if (dBConnect.checkLogin("ppp", "ppp")) {
         System.out.println("Login Succesfull");
         } else {
         System.out.println("Error in login");
         }

         */
        /*
         Student student = new Student();
         student.setName("fname");
         student.setGender("male");
         student.setDob("2015/5/5");
         student.setContact("8899552211");
         student.setEmail("zafa2gmail.com");
         student.setAddress("jalgaon");
         student.setBranch("45452");
         student.setDepartment("aa");
         student.setYear("2026");
         student.setCast("mm");
         student.setSubCast("mm");
         student.setAdmissionDate("2016-02-02");
         student.setClDate("2015-05-05");
           
         if(dBConnect.addStudent(student)){
         System.out.println("Student added");
         }
         else
         {
         System.out.println("Not");
         }
         */

        /*
         Teacher teacher = new Teacher();
         teacher.setName("fname");
         teacher.setGender("male");
         teacher.setQualification("be");
         teacher.setSubject("math");
         teacher.setDob("2026-05-05");
         teacher.setContact("88992255");
         teacher.setEmail("zafa2gmail.com");
         teacher.setAddress("jalgaon");
         teacher.setJdate("2016-05-05");
           
         if(dBConnect.addTeacher(teacher)){
         System.out.println("teacher added");
         }
         else
         {
         System.out.println("Not");
         }
        
         */

    }
}
