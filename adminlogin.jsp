<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Op.jpe"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminlogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
<br>
	<%
	String msg=request.getParameter("msg");
	 if("true".equals(msg)){
		  %>
		  <center ><font color="red" size="5"></font>Invalid Username/Password...</center>
		 <%} %>
	

	

<form action="adminLoginAction.jsp" method="post">
<div class="form-group">
<center><h2> Admin Username</h2></center>
<input type="text" placeholder="Enter Your Username" name="Username" required>


<center><h2>Admin Password</h2></center>
<input type="text" placeholder="Enter Your Password" name="Password" required>
<center><button type="Submit" class="button">Submit</button></center>


</div>


</form>
	
</div>
<br>
<br>
<br>
<br>
<h3><center>Privacy Policy ::2023  </center></h3>
</body>
</html>