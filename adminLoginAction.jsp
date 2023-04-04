
<% 
String Username=request.getParameter("Username");
String Password=request.getParameter("Password");
if("admin".equals(Username)&& "admin".equals(Password)){
	response.sendRedirect("Addjobtypedetails.jsp?msg=valid");
	
}
else{
	response.sendRedirect("adminlogin.jsp?msg=invalid");
	
}
%>


