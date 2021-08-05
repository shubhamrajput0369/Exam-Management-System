<jsp:useBean id="db" class="com.db.GetConnection"/>
<%@page import="java.sql.*" %>
<% 
	
	String supno=request.getParameter("supno");
	String roomno=request.getParameter("roomno");
	String date1=request.getParameter("date1");
	String time1=request.getParameter("time1");
	
	String s="insert into allocated(supno,roomno,date1,time)values(?,?,?,?)";	
	PreparedStatement ps=(db.getCon()).prepareStatement(s);
	ps.setString(1,supno);
	ps.setString(2,roomno);
	ps.setString(3,date1);
	ps.setString(4,time1);
	
	int i=ps.executeUpdate();
	if(i!=0)
	{
		out.write("<font color=yellow><h3>Record SAVED </h3></font>");
%>
	<jsp:include page="allocate_faculty.jsp"/>
<%  
	}
	else
	{
		out.write("<h3>Record NOT SAVED </h3>");
%>	
	<jsp:include page="allocate_faculty.jsp"/>
<%  
	}
%>