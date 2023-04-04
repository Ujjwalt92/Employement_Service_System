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
     <!--  <a href="login.jsp" >Login</a>-->
    <!--   <a class="active" href="adminLogin.jsp">Admin Login</a>-->
  </div>
</div>
<body>
<div class="container">
<br>
<br>
	

		<%
  String Register=request.getParameter("Register");
  if("true".equals(Register))
  {
	  %>
	 <script >alert("Register Sucessfully") </script>
	  <%
  }
  %>
	

<form action="loginaction.jsp" method="post">
<div class="form-group">
<center><h2>User Id</h2></center>
<input type="text" placeholder="Enter Your User Id" name="UserId" required>


<center><h2>Password</h2></center>
<input type="text" placeholder="Enter Your Password" name="Password" required>
<center><button type="Submit" class="button">Login</button></center>
 <center> <a href="regir.jsp" color="blue">Create New User ?</a></center>
</div>

</form>	
</div>
<br>
<br>
<br>
<br>
<h3><center>HELP-LINE N0-45678  </center></h3>
</body>
</html>