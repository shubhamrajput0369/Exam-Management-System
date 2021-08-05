<jsp:useBean id="db" class="com.db.GetConnection"/>
<%@page import="java.sql.*" %>
<% 
	
	String from=request.getParameter("from");
	String to=request.getParameter("to");
	String date1=request.getParameter("date1");
	String time1=request.getParameter("time1");
	String roomno=request.getParameter("roomno");
	String subject=request.getParameter("subject");
	String dept=(String)session.getAttribute("dept");
	String sem=(String)session.getAttribute("sem");
	
	String s="insert into exam_schedule values(?,?,?,?,?,?,?,?)";	
	PreparedStatement ps=(db.getCon()).prepareStatement(s);
	
	ps.setString(1,from);
	ps.setString(2,to);
	ps.setString(3,date1);
	ps.setString(4,time1);
	ps.setString(5,roomno);
	ps.setString(6,dept);
	ps.setString(7,sem);
	ps.setString(8,subject);
	
	int i=ps.executeUpdate();
	if(i!=0)
	{
		out.write("<font color=yellow><h3>Record SAVED </h3></font>");
%>
	<jsp:include page="schedule.jsp"/>
<%  
	}
	else
	{
		out.write("<h3>Record NOT SAVED </h3>");
%>	
	<jsp:include page="schedule.jsp"/>
<%  
	}
%>