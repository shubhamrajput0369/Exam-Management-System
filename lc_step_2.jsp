
<%@page import="java.util.ArrayList"%>
<%@page import="com.zk.bean.Student"%>
<%
    Student student = null;
    
        String id = (String) request.getParameter("student");
        System.out.println("Student id = "+id);
        ArrayList<Student> students = (ArrayList<Student>) session.getAttribute("students");
        System.out.println("Students.size() = "+students.size());
        for(int  i =0; i < students.size(); i++)
        {
            if(Integer.parseInt(id) == students.get(i).getId())
            {
                student = students.get(i);
                System.out.println("Student is = "+student);
                break;
            }
        }
       
   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>College Information System</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="wrapper">
            <div id="banner">
                <div id="logo"></div>
            </div>
            <div class="menuBar">
                <ul>
                    <li class="first"><a href="index.jsp">Home</a></li>
                    <li><a href="student.jsp">Student</a></li>
                    <li><a href="teacher.jsp">Teacher</a></li>
                    <li><a href="attendance.jsp">Attendance</li>
                    <li><a href="lc.jsp">Generate L.C</a></li>
                    <li><a href="Login.jsp">logout</a></li>
                </ul>
            </div>
            <div class="container1_inner">
                <div class="container2r">
                    <div class="workarea_inner">
                        <h1>Leaving Certificate</h1>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;</p>
                        <div style="padding:0 15px 20px 15px;">
                            <div>
                                <div class="ourprojectrow"> 
                                    <%=id%>
                                    <%
                                       if(student != null){
                                    %>
                                    <table>
                                        <tr>
                                            <td>
                                                Name:
                                            </td>
                                            <td width=150>
                                                <input type="text" name="name" value="<%=student.getName()%>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <tr>
                                                    <td>
                                                        Gender:
                                                    </td>
                                                    <td width="150">
                                                        <select name="gender" value="<%=student.getGender()%>">
                                                            <option>male</option>
                                                            <option>female</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        D.O.B:
                                                    </td>
                                                    <td>
                                                        <input type="date" name="dob" value="<%=student.getDob()%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Contact NO:
                                                    </td>
                                                    <td>
                                                        <input type="text" name="contact" value="<%=student.getContact()%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Email Id:
                                                    </td>
                                                    <td>
                                                        <input type="email" name="email" value="<%=student.getEmail()%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Address:
                                                    </td>
                                                    <td>
                                                        <input type="text" name="address" value="<%=student.getAddress()%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Branch:
                                                    </td>
                                                    <td>
                                                        <input type="text" name="branch" value="<%=student.getBranch()%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Department:
                                                    </td>
                                                    <td>
                                                        <input type="text" name="department" value="<%=student.getDepartment()%>">
                                                    </td>
                                                </tr>
                                              
                                                <tr>
                                                    <td>
                                                        Cast:
                                                    </td>
                                                    <td>
                                                        <input type="text" name="cast" value="<%=student.getCast()%>">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Sub Cast:
                                                    </td>
                                                    <td>
                                                        <input type="text" name="subCast" value="<%=student.getSubCast() %>">
                                                    </td>
                                                </tr>
                                               
                                                <tr>
                                                    <td colspan="2">
                                                        <input type="submit" value="print">
                                                    </td>
                                                </tr>
                                                </table>
                                    <%}else
                                       {%>
                                       Please Select Correct Student
                                       <%}%>
                                                </div>
                                                </div>
                                                </div>
                                                </div>
                                                </div>
                                                <ul style="color:#FFF;">
                                                  Copyright (c) To Diploma Students. All rights reserved.   <a style=" color:#FFF; text-decoration:underline;" href="#"> </a>.
                                                </ul>
                                                </div>
                                                </div>
                                                </body>
                                                </html>
