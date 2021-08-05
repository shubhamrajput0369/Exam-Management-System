<jsp:useBean id="db" class="com.db.GetConnection"/>
<%@page import="com.zk.dao.AdminServices"%>
<%@page import="com.zk.bean.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%
    ArrayList<Student> students = AdminServices.getAllStudents();
    session.setAttribute("students", students);
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
                <div id="logo">
                </div>
            </div>
            <div class="menuBar">
                <ul>
                    <li class="first"><a href="index.jsp">Home</a></li>
              
                    <li><a href="room.jsp"></a></li>
                     <li><a href="faculty_allocattion.jsp"></a></li>
                      <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                     
                    <li><a href="Login.jsp">Logout</a></li>
                   
                </ul>
            </div>
            <div class="container1_inner">
                <div class="container2r">
                    <div class="workarea_inner">
                        <h1>
                            &nbsp;Scheduling</h1>
                        <span style="color: red">
                        </span>
                        <div >
                            <br />
                        </div>
                        <div>
                            <form action="addschedule.jsp" method="post">
                                <table border="1">
                                			<tr>
                                				<td>
                                				Department:
                                                </td>
                                                 <td>
                                                    <select name="dept">
                                                        <option id="Computer">Computer</option>
                                                        <option id="IT">IT</option>
                                                        <option id="E&TC">E&TC</option>
                                                        <option id="Mechanical">Mechanical</option>
                                                        <option id="Civil">Civil</option>
                                                        <option id="Electrical">Electrical</option>
                                                        <option id="Electronic">Electronic</option>
                                                    </select>
                                                </td>
                                				
                                				<td>
                                                    Simister:
                                                </td>
                                                <td>
                                                    
                                                    <select name="sem">
                                                        <option id="I">I</option>
                                                        <option id="II">II</option>
                                                        <option id="III">III</option>
                                                        <option id="IV">IV</option>
                                                        <option id="V">V</option>
                                                        <option id="VI">VI</option>
                                                        <option id="VII">VII</option>
                                                    </select>
                                                </td>
                                			</tr>
                                			
                                                <td colspan="4" align="center">
                                                    <input type="submit" value="Submit">
                                                </td>
                                            </tr>
                                </table>
                                            </form>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            <div class="menuBar2">
                                                <ul style="color: #FFF;">
                                                   Copyright (c) To Diploma Students. All rights reserved.   <a style=" color:#FFF; text-decoration:underline;" href="#"> </a>.
                                                </ul>
                                            </div>
                                            </div>
                                            </body>
                                            </html>
