<%@page import="com.zk.bean.Teacher"%>
<%@page import="com.zk.dao.AdminServices"%>
<%@page import="com.zk.bean.Teacher"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Teacher> teachers = AdminServices.getAllTeachers();
    session.setAttribute("teachers", teachers);
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
       <li><a href="attendance.jsp">Attendance</a></li>
      <li><a href="lc.jsp">Generate L.C</a></li>
        <li><a href="Login.jsp">Logout</a></li>
     
    </ul>
  </div>
  <div class="container1_inner">
    <div class="container2r">
      <div class="workarea_inner">
        <h1>Teacher Attendance Form</h1>
        <div style="padding:0 15px 20px 15px;">
          <div class="servicecolumnzone">
          </div>

          <div>
              <form action="TAttendance" method="post">
                  <table border="2">
                        
              <tr>

                                        <td colspan="2" width="300">
                                            <select name="teacher">
                                                <%for (int i = 0; i < teachers.size(); i++) {%>
                                                <option value="<%=teachers.get(i).getId()%>">
                                                    <%= teachers.get(i).getName()%>
                                                </option>

                                                <%}%>
                                            </select>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td> 
                                            Date:
                                        </td>
                                        <td>
                                            <input type="date" name="date">
                                        </td>
                                    </tr>
                                    <tr> 
                                        <td>Attendance:</td>

                                        <td>
                                            <select name="attendance">
                                                <option value="PRESENT">Present</option>
                                                <option value="ABSENT">Absent</option>
                                            </select>

                                        </td>

                                    </tr>

              
                                      <tr>
                                        <td colspan="2">
                                            <input type="submit" value="Submit">
                                        </td>
                                    </tr>
                        </table>
              </form>
          
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="menuBar2">
        <ul style="color:#FFF;">
      Copyright (c) To Diploma Students. All rights reserved.   <a style=" color:#FFF; text-decoration:underline;" href="#"> </a>. </ul>
    </ul>
  </div>
</div>
</body>
</html>
