<%@page import="java.sql.PreparedStatement"%>
<%@page import= "project_op.ConnectionProvider"%>
<%@page import= "java.sql.*"%>

<%@page import= "java.sql.*"%>

<%


String name=request.getParameter("name");
String mobileno=request.getParameter("mobileno");
String Id=request.getParameter("Id");
String gender=request.getParameter("gender");
String password=request.getParameter("password");


try{
	
	
	
	Connection con=ConnectionProvider.getCon();
  //PreparedStatement ps= con.prepareStatement("insert into registerdata values (?,?,?,?,?)");
	PreparedStatement ps=con.prepareStatement("insert into Registerdata values (?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, mobileno);
	ps.setString(3, Id);
	ps.setString(4, gender);
	ps.setString(5, password);
	
	ps.executeUpdate();
	response.sendRedirect("login.jsp?msg=valid");
	
}
catch(Exception e){
	
	System.out.println(e);
	response.sendRedirect("regir.jsp?msg=invalid");
		
}

%>