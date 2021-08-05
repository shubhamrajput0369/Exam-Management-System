<jsp:useBean id="db" class="com.db.GetConnection"/>
<%@page import="java.sql.*" %>
<% 
	String name=request.getParameter("name");
	String supno=request.getParameter("supno");
	String gender=request.getParameter("gender");
	String contact=request.getParameter("contact");
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	
	String s="insert into supervisor(supno,supname,supaddress,supcontactno,gender,email)values(?,?,?,?,?,?)";	
	PreparedStatement ps=(db.getCon()).prepareStatement(s);
	ps.setString(1,supno);
	ps.setString(2,name);
	ps.setString(3,address);
	ps.setString(4,contact);
	ps.setString(5,gender);
	ps.setString(6,email);
	
	int i=ps.executeUpdate();
	if(i!=0)
	{
		out.write("<font color=yellow><h3>Record SAVED </h3></font>");
%>
	<jsp:include page="teacher.jsp"/>
<%  
	}
	else
	{
		out.write("<h3>Record NOT SAVED </h3>");
%>	
	<jsp:include page="teacher.jsp"/>
<%  
	}
%>