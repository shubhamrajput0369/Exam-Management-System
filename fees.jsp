<%@page import="com.zk.dao.AdminServices"%>
<%@page import="com.zk.bean.Student"%>
<%@page import="java.util.ArrayList"%>
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
                  
                    <li><a href="teacher.jsp">Teacher</a></li>
                      <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                      <li><a href="Login.jsp">Logout</a></li>
                   
                </ul>
            </div>
            <div class="container1_inner">
                <div class="container2r">
                    <div class="workarea_inner">
                        <h1>

                            &nbsp;Student Fees Form</h1>
                        <span style="color: red">
                            
                        </span>
                        <div >
                            <br />
                        </div>
                        <div>
                            <form action="FeesInfo" method="post">
                                <table>
                                    <tr>
                                        <td>
                                            Name:
                                  </td>
                                            
                                            <td colspan="2" width="300">
                                            <select name="student">
                                                <%for (int i = 0; i < students.size(); i++) {%>
                                                <option value="<%=students.get(i).getId()%>">
                                                    <%= students.get(i).getName()%>
                                                </option>

                                                <%}%>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <tr>
                                                <td>
                                                    Branch:
                                                </td>
                                                
                                                <td colspan="2" width="300">
                                            <select name="student">
                                                <%for (int i = 0; i < students.size(); i++) {%>
                                                <option value="<%=students.get(i).getBranch()%>">
                                                    <%= students.get(i).getBranch()%>
                                                </option>

                                                <%}%>
                                            </select>
                                        </td>                                            </tr>
                                            <tr>
                                                <td>
                                                    Department:
                                                </td>
                                                <td colspan="2" width="300">
                                            <select name="student">
                                                <%for (int i = 0; i < students.size(); i++) {%>
                                                <option value="<%=students.get(i).getDepartment()%>">
                                                    <%= students.get(i).getDepartment()%>
                                                </option>

                                                <%}%>
                                            </select>
                                        </td>                                                    </tr>
                                            <tr>
                                                <td>
                                                    Year:
                                                </td>
                                                <td colspan="2" width="300">
                                            <select name="student">
                                                <%for (int i = 0; i < students.size(); i++) {%>
                                                <option value="<%=students.get(i).getYear()%>">
                                                    <%= students.get(i).getYear()%>
                                                </option>

                                                <%}%>
                                            </select>
                                        </td>        
                                            </tr>
                                            <tr>
                                                <td>
                                                    Fees:
                                                </td>
                                                <td>
                                                    <input type="text" name="fees">
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    Status:
                                                </td>
                                               <td>
                                                    <select name="status">
                                                        <option value="Amount full Paid">Pass</option>
                                                        <option value="Amount remaining">Fail</option>
                                                    </select>
                                                </td>
                                            
                                            </tr>   
                                            <tr>
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
                                            <div class="menuBar2">
                                                <ul style="color: #FFF;">
                                                   Copyright (c) To Diploma Students. All rights reserved.   <a style=" color:#FFF; text-decoration:underline;" href="#"> </a>.
                                                </ul>
                                            </div>
                                            </div>
                                            </body>
                                            </html>
