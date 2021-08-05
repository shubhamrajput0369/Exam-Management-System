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
                            &nbsp;Form To Allocate Supervisor</h1>
                        <span style="color: red">
                        </span>
                        <div >
                            <br />
                        </div>
                        <div>
                            <form action="allocatefaculty.jsp" method="post">
                                <table border="1">
                                			<tr>
                                				<td>Supervisor Number</td>
                                				<td>
                                				<%  
                                					String s="select supno,supname from supervisor";
                                					PreparedStatement ps=(db.getCon()).prepareStatement(s);
                                					ResultSet rs=ps.executeQuery();
                                				%>	
                                				<select name="supno">
                                				<%
                                					while(rs.next())
                                					{
                                				%>
                                				
                                					<option> <%= rs.getString(1) %> </option>
                                				
                                				<% 
                                					}
                                				%>
                                					</select>
                                				</td>
                                				
                                			<!-- 	<td> <input type="text" name="supno"></td> -->
                                				
                                				 
                                			</tr>
                                			<tr>
                                			<td>
                                                    Room Number:
                                                </td>
                                                 <td>
                                                    <%  
                                					String s1="select roomno from room";
                                					PreparedStatement ps1=(db.getCon()).prepareStatement(s1);
                                					ResultSet rs1=ps1.executeQuery();
                                					%>
                                					<select name="roomno">
                                				<%	
                                					while(rs1.next())
                                					{
                                				%>
                                				
                                					<option> <%= rs1.getString(1) %> </option>
                                				
                                				<% 
                                					}
                                				%>
                                				</select>
                                                </td>
                                                <td>Date</td>
                                                <td><input type="date" name="date1"> </td>
                                            </tr>
                                            <tr>
                                            	<td>Time</td>
                                                <td><input type="time" name="time1"> </td>
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
