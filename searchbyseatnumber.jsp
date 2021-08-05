<jsp:useBean id="db" class="com.db.GetConnection"/>
<%@page import="java.sql.*" %>
<%@page import="com.zk.dao.AdminServices"%>
<%@page import="com.zk.bean.Student"%>
<%@page import="java.util.ArrayList"%>

<%
    ArrayList<Student> students = AdminServices.getAllStudents();
    session.setAttribute("students", students);
    String seatno=request.getParameter("seatno");
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
                     
                    <li><a href="Login.jsp"></a></li>
                   
                </ul>
            </div>
            <div class="container1_inner">
                <div class="container2r">
                    <div class="workarea_inner">
                        <h1>
                            &nbsp;Schedule For Seat Number <%= seatno %> </h1>
                        <span style="color: red">
                        </span>
                        <div >
                            <br />
                        </div>
                        <div>
                        	<!-- Required Code here 
                        	select * from exam_schedule where seatfrom<=222 and seatto>=222;
                        	-->
                        	<%  
                        	String s="select * from exam_schedule where seatfrom<=? and seatto>=?";	
                        	PreparedStatement ps=(db.getCon()).prepareStatement(s);
                        	ps.setString(1,seatno);
                        	ps.setString(2,seatno);
                        	ResultSet rs=ps.executeQuery();
                        %>
                        	<table border="1" align=center>
                        	<tr> 
                        		<td><b> Seat Number From </b></td> 
                        		<td><b> Upto  </b></td> 
                        		<td><b>Date</b></td> 
                        		<td><b>Time</b></td> 
                        		<td><b>RoomNo.</b></td> 
                        		<td><b>Department</b></td> 
                        		<td><b>Semister</b></td> 
                        		<td><b>Subject</b></td>
                        	</tr>
                        <%	
                        	while(rs.next())
                        	{
                        	%>
	            				<tr> 
	            					<td bgcolor="white"><%= rs.getString(1) %> </td> 
	            					<td bgcolor="white"><%= rs.getString(2) %></td> 
	            					<td bgcolor="white"><%= rs.getString(3) %></td>
	            					<td bgcolor="white"><%= rs.getString(4) %></td>
	            					<td bgcolor="white"><%= rs.getString(5) %></td>
	            					<td bgcolor="white"><%= rs.getString(6) %></td> 
	            					<td bgcolor="white"><%= rs.getString(7) %></td>
	            					<td bgcolor="white"><%= rs.getString(8) %></td>
	            				</tr>
                        <%  
                        	}
                        %>		
                        	</table>	
                        	
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
