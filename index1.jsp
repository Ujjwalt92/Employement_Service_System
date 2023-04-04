
<%@ page import="project_op.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Op.jpe"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
   <!--<a href="loginaction.jsp">Login</a>!-->
   <!-- <a href="adminLogin.jsp">Admin Login</a>!-->
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="o.jpg" >
  <img class="mySlides"  src="tt.jpg" >
</div>
 
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 3 seconds
}
</script>


<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("true".equals(msg))
  {
	  %>
	  <script >alert("Data Submitted Sucessfully") </script>
	  <%
  }
  %>
  <%
  String login=request.getParameter("login");
  if("true".equals(login))
  {
	  %>
	 <script >alert("Login Sucessfully") </script>
	  <%
  }
  %>
  <%
 
  if("invalid".equals(msg))
  {
	  %>
	  <center><font color="BLUE" size="5">Invalid Data !! Try Again...</font></center>
	  <%
  }
  %>
 <center><h1>Enter Your Details For Job_Search</h1></center>
 <form action="indexFormaction.jsp" method="post">
 <center>
 <input type="text" name="name" placeholder="Enter Name" required>
  <input type="text" name="mobileno" placeholder="Enter mobile Number" required>
   <input type="mail" name="email" placeholder="Enter Email Address" required>
    <input type="text" name="Jobtype" placeholder=" Enter Your Jobtype"  required>
    <button class="button1"><Span>Submit</Span></button>
 </center>
 
 </form>
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<h3><center>HELP-LINE N0-45678</center></h3>

</body>
</html>