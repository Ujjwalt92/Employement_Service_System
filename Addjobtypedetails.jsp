<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="project_op.ConnectionProvider"%>

<%@page import="java.sql.Connection"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>



<%
	String msg= request.getParameter("msg");
	 if("valid".equals(msg)){
		  %>
		  <center ><font color="red" size="5"></font></center>
		 <%} 
		 


	
	 if("invalid".equals(msg)){
		  %>
		  <center ><font color="red" size="5"></font>Some thing went wrong ! Try again</center>
		 <%} %>




<%
int id=1;
try{
	Connection con= ConnectionProvider.getCon();

	Statement st=con.createStatement();
	//Connection con1=ConnectionProvider.getCon();
	
	ResultSet rs= st.executeQuery("select max(id) from jobdetails");
	
	
	if(rs.next()){
		id=rs.getInt(1);
		id=id+1;
		
	}%>
	<div class="container" >
	
	
	<h1 style="color:red;">Job_Type :<% out.println(id);%> </h1>
	
	
	<% 
}
catch(Exception e){
	
}


%>
<div class="container">
<form action="AddjobdetailsAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id); %>">

<h2>JobType</h2>
<select name="Jobtype">
<option value="A+">JAVA DEVELOPER</option>
<option value="A-">SQL DEVELOPER </option>
<option value="B+">SOFTWARE DEVELOPER</option>
<option value="O+">FULL STACK DEVELOPER</option>

</select>
<hr>



<h2>Location</h2>
<input type="text" placeholder="Enter Location" name="Location">


<hr>
<h2>Company_Name</h2>
<input type="text" placeholder="Enter Comapany " name="Company">



<br>
<center><button type="Submit" class="button">Save </button></center>

</form>



  </div>

<br>
<br>
<br>
<br>
<h3><center>  </center></h3>

</body>
</html>