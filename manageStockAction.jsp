<%@ page import="project_op.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%

String jobtype=request.getParameter("jobtype");
String incdec=request.getParameter("incdec");
String units = request.getParameter("units");
int units1=Integer.parseInt(units);
try
{
	
Connection con= ConnectionProvider.getCon();
Statement st= con.createStatement();
if(incdec.equals("inc"))
	
st.executeUpdate("update stock set units=units+'"+units1   +"'   where jobtype='"+jobtype+"'");
else
	st.executeUpdate("update stock set units=units-'"+units1   +"'   where jobtype='"+jobtype+"'");
response.sendRedirect("manageStock.jsp?msg.valid");

}
catch(Exception e)

{
	
	System.out.println(e);
	response.sendRedirect("manageStock.jsp?msg.invalid");

}

%>








