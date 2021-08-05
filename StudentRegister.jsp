<jsp:useBean id="db" class="com.db.GetConnection"/>
<%@page import="java.sql.*" %>
<% 
	String name=request.getParameter("name");
	String seatno=request.getParameter("seatno");
	String gender=request.getParameter("gender");
	String contact=request.getParameter("contact");
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	String dept=request.getParameter("dept");
	String sem=request.getParameter("sem");
	
	String s="insert into student(name,seatno,gender,contact,email,address,department,semister)values(?,?,?,?,?,?,?,?)";	
	PreparedStatement ps=(db.getCon()).prepareStatement(s);
	ps.setString(1,name);
	ps.setString(2,seatno);
	ps.setString(3,gender);
	ps.setString(4,contact);
	ps.setString(5,email);
	ps.setString(6,address);
	ps.setString(7,dept);
	ps.setString(8,sem);
	
	int i=ps.executeUpdate();
	if(i!=0)
	{
		out.write("<font color=yellow><h3>Record SAVED </h3></font>");
%>
	<jsp:include page="student.jsp"/>
<%  
	}
	else
	{
		out.write("<h3>Record NOT SAVED </h3>");
%>	
	<jsp:include page="student.jsp"/>
<%  
	}
%>