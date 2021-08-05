<jsp:useBean id="db" class="com.db.GetConnection"/>
<%@page import="java.sql.*" %>
<% 
	String roomno=request.getParameter("roomno");
	String capacity=request.getParameter("capacity");
	String dept=request.getParameter("dept");
	
	String s="insert into room(roomno,department,capacity)values(?,?,?)";	
	PreparedStatement ps=(db.getCon()).prepareStatement(s);
	ps.setString(1,roomno);
	ps.setString(2,dept);
	ps.setString(3,capacity);
	
	int i=ps.executeUpdate();
	if(i!=0)
	{
		out.write("<font color=yellow><h3>Record SAVED </h3></font>");
%>
	<jsp:include page="room.jsp"/>
<%  
	}
	else
	{
		out.write("<h3>Record NOT SAVED </h3>");
%>	
	<jsp:include page="room.jsp"/>
<%  
	}
%>