<%@page import= "project_op.ConnectionProvider"%>
<%@page import= "java.sql.*"%>
<%
String name=request.getParameter("name");
String mobileno=request.getParameter("mobileno");
String email=request.getParameter("email");
String jobtype=request.getParameter("jobtype");
String status = "pending";

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into searchjobs values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,mobileno);
	ps.setString(3,email);
	ps.setString(4,jobtype);
	ps.setString(5,status);

	ps.executeUpdate();
	response.sendRedirect("index1.jsp?msg=true");
	
}
catch(Exception e)
{
	response.sendRedirect("login.jsp?msg=invalid");
}

%>
