<%@page import="java.sql.PreparedStatement"%>
<%@page import="project_op.ConnectionProvider"%>

<%@page import="java.sql.Connection"%>
<%



String Jobtype=request.getParameter("Jobtype");
String Location=request.getParameter("Location");
String Company=request.getParameter("Company");




try{
	
	
	
	Connection con=ConnectionProvider.getCon();
  PreparedStatement ps= con.prepareStatement("insert into jobdetails values (?,?,?)");
	ps.setString(1, Jobtype);
	ps.setString(2, Location);
	ps.setString(3, Company);
	

	ps.executeUpdate();
	response.sendRedirect("Addjobdetails.jsp?msg=valid");
	
}
catch(Exception e){
	
	
	response.sendRedirect("Addjobtypedetails.jsp?msg=invalid");
		
}

%>
